############################################################
# Initial Settings & Floorplan
############################################################
source ./tcl/innovus.globals
init_design

setAnalysisMode -analysisType onChipVariation -cppr both
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]

# Declare ASAP7 specific cells
set BUFCells    {BUFx2_ASAP7_75t_R BUFx4_ASAP7_75t_R}
set INVCells    {INVx2_ASAP7_75t_R INVx4_ASAP7_75t_R}
set FILLERCells {FILLER_ASAP7_75t_R FILLER_ASAP7_75t_R_2 FILLER_ASAP7_75t_R_4}
set DIODECells  {ANTENNA_ASAP7_75t_R}
set TAPCells    {TAPCELL_ASAP7_75t_R}
set DECAPCells  {DECAPx10_ASAP7_75t_R DECAPx6_ASAP7_75t_R DECAPx4_ASAP7_75t_R}

# set TIEHICells  {TIEHI_ASAP7_75t_R}
# set TIELOCells  {TIELO_ASAP7_75t_R}

set row   [dbGet head.sites.size_y]
set track [dbGet head.sites.size_x]
set pitch [expr 32 * $row]

set Density 0.75
floorPlan -r 1.0 $Density 10.8 10.8 10.8 10.8

changeFloorplan -coreToBottom 1.08

set Fpx [dbGet top.fPlan.box_sizex]
set Fpy [dbGet top.fPlan.box_sizey]


############################################################
# Macro Placement (Specific for AXI RAM SRAM)
############################################################
place_design -concurrent_macros
refine_macro_place
addHaloToBlock 2 2 2 2 -allMacro
setInstancePlacementStatus -allHardMacros -status fixed


############################################################
# Power planning
############################################################

addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 \
-layer {top M6 bottom M6 left M5 right M5}

createPGPin VSS -geom M5 0 0 0.8 0.8
createPGPin VDD -geom M5 1.68 1.68 2.48 2.48
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

addRing -type block_rings -nets {VDD VSS} -around each_block \
  -layer {top M6 bottom M6 left M5 right M5} -width 1.2 -spacing 0.88 \
  -offset 1.0 -center 1

setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms \
-allowJogging 0 -allowLayerChange 0; clearDrc

setAddStripeMode -break_at block_ring -allow_jog padcore_ring

# Horizontal stripes (M6)
if {$Fpy > [expr 1.5 * $pitch]} {
    addStripe -nets {VSS VDD} -layer M6 -direction horizontal \
    -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
    -start_from bottom -start_offset [expr $pitch - 2.08]
}

# Vertical stripes (M5)
if {$Fpx > [expr 1.5 * $pitch]} {
    addStripe -nets {VSS VDD} -layer M5 -direction vertical \
    -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
    -start_from left -start_offset [expr $pitch - 2.08]
}

editTrim -nets {VSS VDD}

setPinConstraint -corner_to_pin_distance 18
source ./tcl/pins.tcl


############################################################
# Placement
############################################################
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true \
-place_global_module_aware_spare true \
-place_global_auto_blockage_in_channel soft \
-place_detail_preroute_as_obs {2 3} -place_global_cong_effort high \
-place_design_refine_macro true

addWellTap -cell $TAPCells -cellInterval 25 -prefix WELLTAP

# setTieHiLoMode -cell "$TIEHICells $TIELOCells" -maxDistance 20 -maxFanout 10
#optDesign -prePlace -setup -hold
place_design
refinePlace

# B? qua addTieHiLo
# addTieHiLo

if {![file exists ./verify_rpt]} { exec mkdir -p ./verify_rpt }
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt


############################################################
# Clock tree option
############################################################

#addRoutingRule CLK_NDR_RULE -multiplier { width 2 spacing 2 }
#set_ccopt_property routing_rule CLK_NDR_RULE -net_type trunk
create_route_type -name leaf_rule \
-bottom_preferred_layer M2 -top_preferred_layer M3

create_route_type -name trunk_rule -shield_net VSS \
-bottom_preferred_layer M3 -top_preferred_layer M4

create_route_type -name top_rule -shield_net VSS \
-bottom_preferred_layer M5 -top_preferred_layer M6

set_ccopt_property -net_type leaf  route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top   route_type top_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property target_max_trans 50ps

set_ccopt_property buffer_cells ${BUFCells}
set_ccopt_property inverter_cells ${INVCells}
set_ccopt_property use_inverters auto

setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 \
-powerEffort high -fixFanoutLoad true

# CTS
optDesign -prefix preCTS -preCTS
create_ccopt_clock_tree_spec -filename outputs/ccopt.spec
source outputs/ccopt.spec
ccopt_design -prefix postCTS
optDesign -prefix postCTS -postCTS -setup -hold


############################################################
# Route - Optimized for ASAP7
############################################################
# 1. Kh?i d?ng l?i b? router v? m?c d?nh
setNanoRouteMode -reset
setNanoRouteMode -drouteFixAntenna true -routeInsertAntennaDiode true \
-routeInsertDiodeForClockNets true -routeAntennaCellName ${DIODECells} \
-drouteAutoStop false -droutePostRouteSwapVia true \
-routeReserveSpaceForMultiCut true -routeWithSiDriven true

# put filler cells before routing
setFillerMode -core ${FILLERCells} -honorPrerouteAsObs true
addFiller

# route design
routeDesign
routeDesign -viaOpt -wireOpt -trackOpt

# change analysis mode for postRoute
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -reset -drouteEndIteration
setExtractRCMode -engine postRoute -effortLevel low \
-useShieldingInDetailMode true

# optimize by postRoute
deleteDanglingNet
optDesign -prefix postRoute -postRoute -setup -hold

############################################################
# Post-Route Analysis & Optimization
############################################################
setAnalysisMode -analysisType onChipVariation -cppr both
setExtractRCMode -engine postRoute -effortLevel low -useShieldingInDetailMode true
deleteDanglingNet
optDesign -postRoute -setup -hold -prefix postRoute

addFiller -cell $DECAPCells -prefix FILLER_DECAP_
addFiller -cell $TAPCells -prefix FILLER_TAP_
addFiller -cell $FILLERCells -prefix FILLER_

setMetalFill -layer M1 -maxWidth 3.36 -minWidth 0.14 \
  -maxLength 16.8 -minLength 0.14 -decrement 0.14 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

setMetalFill -layer { M2 M3 } -maxWidth 3.36 -minWidth 0.155 \
  -maxLength 16.8 -minLength 0.155 -decrement 0.155 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

setMetalFill -layer { M4 M5 M6 } -maxWidth 3.36 -minWidth 0.3 \
  -maxLength 16.8 -minLength 0.3 -decrement 0.3 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

addMetalFill -snap -squareShape


############################################################
## Verification & Write out
############################################################
checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt
verifyConnectivity -type all -error 1000 -warning 50 -report ./verify_rpt/verifyConnectivity.rpt
verify_drc -report ./verify_rpt/verify_drc.rpt

if {![file exists ./reports]} { exec mkdir -p ./reports }
report_power -hierarchy all -outfile ./reports/power.rpt
report_area -out_file ./reports/area.rpt

timeDesign -outDir ./timingReports -postRoute

if {![file exists ./summaryReport]} { exec mkdir -p ./summaryReport }
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii

saveDesign -mmmc2 saved/top_axi_ram_final.enc

extractRC
rcOut -spef ./outputs/innovus.spef -rc_corner rc_typical
writeTimingCon ./outputs/innovus.sdc

saveNetlist -excludeLeafCell ./outputs/top_axi_ram_pnr.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst ./outputs/top_axi_ram_pg.v

setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic -virtualConnection false -textSize 1
streamOut ./outputs/top_axi_ram.gds -dieAreaAsBoundary -outputMacros
write_lef_abstract -noCutObs ./outputs/top_axi_ram.lef

puts "=== RUN INNOVUS COMPLETED SUCCESSFULLY ==="
