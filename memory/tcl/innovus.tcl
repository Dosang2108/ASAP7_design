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

# Calculate pitch based on ASAP7 site size
set row   [dbGet head.sites.size_y]
set track [dbGet head.sites.size_x]
set pitch [expr 32 * $row]

# Floorplan: Margin is 10.8 to fit perfectly on the 4x manufacturing grid
set Density 0.75
floorPlan -r 1.0 $Density 10.8 10.8 10.8 10.8

set Fpx [dbGet top.fPlan.box_sizex]
set Fpy [dbGet top.fPlan.box_sizey]


############################################################
# Macro Placement (Specific for AXI RAM SRAM)
############################################################
# Place macro, legalize to grid, and fix it before power planning
place_design -concurrent_macros
refine_macro_place
addHaloToBlock 2 2 2 2 -allMacro
setInstancePlacementStatus -allHardMacros -status fixed


############################################################
# Power planning
############################################################
# Use M8/M9 to avoid M10 bump layer spacing violations (32um rule)
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 \
-layer {top M9 bottom M9 left M8 right M8}

# create PG pins on M8
createPGPin VSS -geom M8 0 0 0.8 0.8
createPGPin VDD -geom M8 1.68 1.68 2.48 2.48
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

# add small power lines (connections to standard cells)
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms \
-allowJogging 0 -allowLayerChange 0; clearDrc

# add stripes
setAddStripeMode -break_at block_ring -allow_jog padcore_ring

# Horizontal stripes (M9)
if {$Fpy > [expr 1.5 * $pitch]} {
    addStripe -nets {VSS VDD} -layer M9 -direction horizontal \
    -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
    -start_from bottom -start_offset [expr $pitch - 2.08]
}

# Vertical stripes (M8)
if {$Fpx > [expr 1.5 * $pitch]} {
    addStripe -nets {VSS VDD} -layer M8 -direction vertical \
    -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
    -start_from left -start_offset [expr $pitch - 2.08]
}

editTrim -nets {VSS VDD}; # trim power nets

# load pins positions
setPinConstraint -corner_to_pin_distance 18; # 2 rows
source ./tcl/pins.tcl


############################################################
# Placement
############################################################
# place settings
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true \
-place_global_module_aware_spare true \
-place_global_auto_blockage_in_channel soft \
-place_detail_preroute_as_obs {2 3} -place_global_cong_effort high \
-place_design_refine_macro true

# place the design
place_design
refinePlace

# report util after placement
if {![file exists ./verify_rpt]} { exec mkdir -p ./verify_rpt }
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt


############################################################
# Clock tree option
############################################################
# declare layers (Adapted for ASAP7 layer names M1->M9)
create_route_type -name leaf_rule \
-bottom_preferred_layer M2 -top_preferred_layer M3

create_route_type -name trunk_rule -shield_net VSS \
-bottom_preferred_layer M4 -top_preferred_layer M6

create_route_type -name top_rule -shield_net VSS \
-bottom_preferred_layer M7 -top_preferred_layer M8

# set route_type property
set_ccopt_property -net_type leaf  route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top   route_type top_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property target_max_trans 50ps

# declare buffers cells
set_ccopt_property buffer_cells ${BUFCells}
set_ccopt_property inverter_cells ${INVCells}
set_ccopt_property use_inverters auto

# optDesign
setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 \
-powerEffort high -fixFanoutLoad true


############################################################
# Clock Tree Synthesis (CTS)
############################################################
# preCTS
optDesign -prefix preCTS -preCTS

# run CTS
create_ccopt_clock_tree_spec -filename outputs/ccopt.spec
source outputs/ccopt.spec
ccopt_design -prefix postCTS

# optimize post-CTS
optDesign -prefix postCTS -postCTS -setup -hold


############################################################
# Route
############################################################
# NanoRoute
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

# metal fillers setup (Adapted for ASAP7 rules, excluding M10)
setMetalFill -layer M1 -maxWidth 3.36 -minWidth 0.14 \
  -maxLength 16.8 -minLength 0.14 -decrement 0.14 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

setMetalFill -layer { M2 M3 } -maxWidth 3.36 -minWidth 0.155 \
  -maxLength 16.8 -minLength 0.155 -decrement 0.155 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

setMetalFill -layer { M4 M5 M6 } -maxWidth 3.36 -minWidth 0.3 \
  -maxLength 16.8 -minLength 0.3 -decrement 0.3 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

setMetalFill -layer { M7 M8 M9 } -maxWidth 3.36 -minWidth 0.84 \
  -maxLength 16.8 -minLength 0.84 -decrement 0.84 -activeSpacing 1.5 \
  -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50

# add metal fillers
addMetalFill -snap -squareShape


############################################################
## Verification
############################################################
# placement
checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt

# connection
verifyConnectivity -type all -error 1000 -warning 50 -report ./verify_rpt/verifyConnectivity.rpt

# drc
verify_drc -report ./verify_rpt/verify_drc.rpt

# antenna
verifyProcessAntenna -report ./verify_rpt/verifyProcessAntenna.rpt


############################################################
## Write out final files
############################################################
if {![file exists ./reports]} { exec mkdir -p ./reports }

# report power, area, and timing
report_power -hierarchy all -outfile ./reports/power.rpt
report_area -out_file ./reports/area.rpt
reportGateCount -limit 0 -level 2 -out_file ./reports/gateCount.rpt
timeDesign -outDir ./timingReports -postRoute

# save summary report
if {![file exists ./summaryReport]} { exec mkdir -p ./summaryReport }
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii

# saveDesign
write_db saved/top_axi_ram_final.db
saveDesign -verilog outputs/design.enc

# extract RC & write parasitic files
extractRC
rcOut -spef ./outputs/innovus.spef -rc_corner rc_typical \
  all_hold_analysis_views; all_setup_analysis_views
writeTimingCon ./outputs/innovus.sdc

# save netlists
saveNetlist -excludeLeafCell ./outputs/top_axi_ram_pnr.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst ./outputs/top_axi_ram_pg.v

# export layout
setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic \
  -virtualConnection false -textSize 1
streamOut ./outputs/top_axi_ram.gds -mapFile \
  ../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_4x.map \
  -dieAreaAsBoundary -outputMacros

# export abstract (.lef file)
write_lef_abstract -noCutObs ./outputs/top_axi_ram.lef

puts "=== RUN INNOVUS COMPLETED SUCCESSFULLY ==="
