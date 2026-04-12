####################################
## Prepare environment
####################################
# set temp dir
set USER $::env(USER)
if [catch {file delete /data/$USER/innovus}] {}
set auto_file_dir "/data/$USER/innovus"

# load design
set init_design_uniquify 1
source tcl/innovus.globals
setGenerateViaMode -auto true
init_design

# propagate clocks
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]

# setup multi-thread
if {![catch {open "/proc/cpuinfo"} f]} {
  set CORES [regexp -all -line {^processor\s} [read $f]]
  if {$CORES > 24} { set CORES 24 }
  close $f }
setDesignMode -process 7
setMultiCpuUsage -acquireLicense $CORES
setMultiCpuUsage -localCpu $CORES
setDistributeHost -local

####################################
## Prepare local variables
####################################
# process info
set row   [dbGet head.sites.size_y]
set track [dbGet head.sites.size_x]
set rowx2 [expr 2*$row]; set rowx4 [expr 4*$row]; set row_2 [expr $row/2]
set pitch [expr 32*$row]

# set overall density
set Density 0.7

# cells declaration
set INVCells [list INVx1_ASAP7_75t_R  INVX2_ASAP7_75t_R INVX4_ASAP7_75t_R INVX8_ASAP7_75t_R INVX16_ASAP7_75t_R]
set BUFCells [list BUFx2_ASAP7_75t_R BUFx3_ASAP7_75t_R BUFx4_ASAP7_75t_R BUFx8_ASAP7_75t_R]
#set DIODECells [list ]
set FILLERCells    [list FILLER_ASAP7_75t_R ]

####################################
## Floor Plan
####################################
# create a square floorplan with the density of $Density
set ring_width 0.8
set ring_space 0.88
set inner_halo 0.5
set outer_halo 0.5

set margin [expr ($ring_width * 2) + $ring_space + $inner_halo + $outer_halo]

set safe_margin [expr ceil($margin)]

floorPlan -r 1.0 $Density $safe_margin $safe_margin $safe_margin $safe_margin

# write out the floorplan size
set Core_area [dbGet top.fPlan.area]
set CoreSize [dbGet top.fPlan.coreBox_size]
set FPsize [dbGet top.fPlan.box_size]
set FPx [dbGet top.fPlan.box_sizex]
set FPy [dbGet top.fPlan.box_sizey]
set fo [open FPlanFinal.size w]
puts $fo "Core size: \{X Y\} = ${CoreSize}"
puts $fo "Floorplan size: \{X Y\} = ${FPsize}"
close $fo

####################################
## Power planning
####################################

setNanoRouteMode -routeTopRoutingLayer 9
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 \
-layer {top M8 bottom M8 left M9 right M9}

# global connect PG pins
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
#globalNetConnect VDD -type tiehi
#globalNetConnect VSS -type tielo

# add small power lines (horizontal)
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms \
-allowJogging 0 -allowLayerChange 0; clearDrc

# add stripes
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
if {$FPy > [expr 1.5*$pitch]} {
  # M8 (horizontal)
  addStripe -nets {VSS VDD} -layer M8 -direction horizontal \
  -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
  -start_from bottom -start_offset [expr $pitch-2.08] }
if {$FPx > [expr 1.5*$pitch]} {
  # M9(vertical)
  addStripe -nets {VSS VDD} -layer M9 -direction vertical \
  -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
  -start_from left -start_offset [expr $pitch-2.08] }
editTrim -nets {VSS VDD}; # trim power nets

# load pins positions
setPinConstraint -corner_to_pin_distance 18; # 2 rows
source ./tcl/pins.tcl

# create physical PG pins
createPGPin VSS -geom M9 0    0    0.8  0.8
add_text -height 0.5 -label VSS -layer M9 -pt 0.2 0.2
createPGPin VDD -geom M9 1.68 1.68 2.48 2.48
add_text -height 0.5 -label VDD -layer M9 -pt 1.88 1.88

###################################
## Placement
###################################

# place settings
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true \
-place_global_module_aware_spare true \
-place_global_auto_blockage_in_channel soft \
-place_detail_preroute_as_obs {1 2 3} -place_global_cong_effort high \
-place_design_refine_macro true
#-place_global_align_macro true

# place the design
place_design
refinePlace

# report util after placement
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt
###################################
## Clock tree option (ASAP7 Fixed)
###################################
# 1. declare layers (Ðã d?i toàn b? metalX thành MX cho kh?p LEF)
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
set_ccopt_property target_max_trans 1ns

# declare buffers cells
set_ccopt_property buffer_cells ${BUFCells}
set_ccopt_property inverter_cells ${INVCells}
set_ccopt_property use_inverters auto

# optDesign
# note about -leakageToDynamicRatio:
#    0 means pure dynamic-power-driven, 1 means pure static-power-driven
#    0.5 means half-half
setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 \
-powerEffort high -fixFanoutLoad true

###################################
## Clock Tree Synthesis (CTS)
###################################
# preCTS
optDesign -prefix preCTS -preCTS

# run CTS
create_ccopt_clock_tree_spec -filename ccopt.spec
source ccopt.spec
ccopt_design -prefix postCTS

# optimize post-CTS
optDesign -prefix postCTS -postCTS -setup -hold

###################################
## Route
###################################
# NanoRoute
setNanoRouteMode -reset
setNanoRouteMode -drouteFixAntenna false \
-routeInsertAntennaDiode false \
-routeInsertDiodeForClockNets false \
-drouteAutoStop false \
-droutePostRouteSwapVia true \
-routeReserveSpaceForMultiCut true


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

###################################
## Fillers & Metal Fill
###################################
# 2. put filler cells AFTER routing & optDesign 
setFillerMode -core ${FILLERCells} -preserveUserOrder true \
-honorPrerouteAsObs true -diffCellViol true
addFiller

# 1. M1 (Width: 0.072 [cite: 2163] | Min Area: 0.010656  -> Min Length: 0.148)
setMetalFill -layer M1 -maxWidth 0.072 -minWidth 0.072 \
-maxLength 16.8 -minLength 0.148 -decrement 0.144 -activeSpacing 0.288 \
-gapSpacing 0.288 -maxDensity 70 -minDensity 30 -preferredDensity 50

# 2. M2-M3 (Width: 0.072  | MinSize: 0.148 [cite: 2174, 2192])
setMetalFill -layer { M2 M3 } -maxWidth 0.072 -minWidth 0.072 \
-maxLength 16.8 -minLength 0.148 -decrement 0.144 -activeSpacing 0.288 \
-gapSpacing 0.288 -maxDensity 70 -minDensity 30 -preferredDensity 50

# 3. M4-M5 (Width: 0.096  | Min Area: 0.032 [cite: 2206, 2221] -> Min Length: 0.336)
setMetalFill -layer { M4 M5 } -maxWidth 0.096 -minWidth 0.096 \
-maxLength 16.8 -minLength 0.336 -decrement 0.192 -activeSpacing 0.384 \
-gapSpacing 0.384 -maxDensity 70 -minDensity 30 -preferredDensity 50

# 4. M6-M7 (Width: 0.128 [cite: 2238, 2252] | Min Area: 0.035 [cite: 2239, 2253] -> Min Length: 0.288)
setMetalFill -layer { M6 M7 } -maxWidth 0.128 -minWidth 0.128 \
-maxLength 16.8 -minLength 0.288 -decrement 0.256 -activeSpacing 0.512 \
-gapSpacing 0.512 -maxDensity 70 -minDensity 30 -preferredDensity 50

# 5. M8-M9 (Width: 0.160 [cite: 2261, 2264] | Min Area: 0.12032 [cite: 2261, 2264] -> Min Length: 0.752)
setMetalFill -layer { M8 M9 } -maxWidth 0.160 -minWidth 0.160 \
-maxLength 16.8 -minLength 0.752 -decrement 0.320 -activeSpacing 0.640 \
-gapSpacing 0.640 -maxDensity 70 -minDensity 30 -preferredDensity 50

# add metal fillers
addMetalFill -snap -squareShape

#################################################
## Verification
#################################################
# placement
checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt

# connection
verifyConnectivity -report ./verify_rpt/verifyConnectivity.rpt

# drc
verify_drc -report ./verify_rpt/verify_drc.rpt

# antenna
verifyProcessAntenna -report ./verify_rpt/verifyProcessAntenna.rpt

#################################################
## Write out final files
#################################################
# report power, area, and timing
report_power -hierarchy all -outfile reports/power.rpt
report_area -out_file reports/area.rpt
reportGateCount -limit 0 -level 2 -outfile reports/gateCount.rpt
timeDesign -outDir ./timingReports/ -postRoute

# save summary report
if {![file exists ./summaryReport]} { file mkdir ./summaryReport }
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii
# saveDesign
saveDesign -verilog design.enc

# extract RC & write parasitic files
extractRC
rcOut -spef ./outputs/innovus.spef -rc_corner rccorner
all_hold_analysis_views; all_setup_analysis_views
writeTimingCon ./outputs/innovus.sdc

# save netlists
# normal .v file for simulation & netlist verification
saveNetlist -excludeLeafCell ./outputs/innovus.v
# for LVS & extraction: including PG & physical cells
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst \
./outputs/innovus_pg.v

setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic \
-virtualConnection false -textSize 1
streamOut ./outputs/innovus.gds -mapFile \
../../Asap7/asap7/asap7sc7p5t_28/gds/asap7_201209.map \
-merge ../../Asap7/asap7/asap7sc7p5t_28/gds/asap7sc7p5t_28_R_220121a.gds \
-dieAreaAsBoundary -outputMacros

# export abstract (.lef file)
write_lef_abstract -noCutObs ./outputs/innovus.lef

# finish: delete /tmp/
if [catch {file delete /tmp/$USER/innovus}] {}
exit
