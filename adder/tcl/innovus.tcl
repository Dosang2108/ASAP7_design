####################################
## Prepare environment
####################################

set USER $::env(USER)

if [catch {file delete -force /data/$USER/innovus}] {}

set auto_file_dir "/data/$USER/innovus"

foreach dir {outputs reports verify_rpt timingReports summaryReport checkpoints} {
    if {![file exists ./$dir]} {
        file mkdir ./$dir
        puts "INFO: Created directory ./$dir"
    }
}

# load design
set init_design_uniquify 1
source tcl/innovus.globals

init_design
setGenerateViaMode -auto true


# Propagate clocks
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]

# Multi-thread: t? detect s? core
if {![catch {open "/proc/cpuinfo"} f]} {
    set CORES [regexp -all -line {^processor\s} [read $f]]
    if {$CORES > 24} { set CORES 24 }
    close $f
}
setDesignMode -process 7
setMultiCpuUsage -acquireLicense $CORES
setMultiCpuUsage -localCpu $CORES
setDistributeHost -local
puts "INFO: Using $CORES CPU cores"



puts "INFO: Setting ICG*DC* cells as dont-use (improper LEF width)..."
foreach cell [dbGet -u head.libCells.name ICG*DC*] {
    setDontUse $cell true
}



puts "INFO: Setting non-LVS-clean cells as dont-use..."
set non_lvs_clean_cells [list \
    "MAJIx1_ASAP7_75t_R"     \
    "SDFLx1_ASAP7_75t_R"     \
    "DFFHQNx1_ASAP7_75t_R"   \
    "ASYNC_DFFHx1_ASAP7_75t_R" \
]
foreach cell $non_lvs_clean_cells {
    if {[dbGet -u head.libCells.name $cell] ne ""} {
        setDontUse $cell true
        puts "INFO:   dont-use: $cell"
    }
}


####################################
## Prepare local variables
####################################

set row   [dbGet head.sites.size_y]
set track [dbGet head.sites.size_x]
set rowx2 [expr 2*$row]
set rowx4 [expr 4*$row]
set row_2 [expr $row/2]
set pitch [expr 32*$row]

# Overall density
set Density 0.7

# Cell lists
set INVCells   [list INVx1_ASAP7_75t_R INVx2_ASAP7_75t_R INVx4_ASAP7_75t_R \
                     INVx8_ASAP7_75t_R INVxp33_ASAP7_75t_R]
set BUFCells   [list BUFx2_ASAP7_75t_R BUFx3_ASAP7_75t_R \
                     BUFx4_ASAP7_75t_R BUFx8_ASAP7_75t_R]
set FILLERCells [list FILLER_ASAP7_75t_R]

set GDS_LAYERMAP "../../Asap7/asap7/asap7_pdk_r1p7/cdslib/asap7_TechLib_10/asap7_TechLib_08.layermap"
set GDS_STDCELL  "../../Asap7/asap7/asap7sc7p5t_28/GDS/asap7sc7p5t_28_R_220121a.gds"

setDesignMode -topRoutingLayer 9


####################################
## Floor Plan
####################################

set ring_width  0.8
set ring_space  0.88
set inner_halo  0.5
set outer_halo  0.5
set row_height  [dbGet head.sites.size_y]
set margin_raw  [expr ($ring_width * 2) + $ring_space + $inner_halo + $outer_halo]


set snap_grid   0.384
set safe_margin [expr ceil($margin_raw / $snap_grid) * $snap_grid]
puts "INFO: margin_raw=${margin_raw}, safe_margin snapped=${safe_margin} (grid=${snap_grid})"

floorPlan -r 1.0 $Density $safe_margin $safe_margin $safe_margin $safe_margin

set Core_area [dbGet top.fPlan.area]
set CoreSize  [dbGet top.fPlan.coreBox_size]
set FPsize    [dbGet top.fPlan.box_size]
set FPx       [dbGet top.fPlan.box_sizex]
set FPy       [dbGet top.fPlan.box_sizey]

set fo [open FPlanFinal.size w]
puts $fo "Core size: \{X Y\} = ${CoreSize}"
puts $fo "Floorplan size: \{X Y\} = ${FPsize}"
puts $fo "Safe margin (snapped to ${snap_grid}): ${safe_margin}"
close $fo

puts "INFO: Floorplan FPx=${FPx} FPy=${FPy}"


####################################
## Power planning
####################################

addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 \
    -layer {top M8 bottom M8 left M9 right M9}

# Global connect PG pins
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

# Physical PG pins — M9 (vertical ring)
createPGPin VSS -geom M9 0    0    0.8  0.8
add_text -height 0.5 -label VSS -layer M9 -pt 0.2 0.2
createPGPin VDD -geom M9 1.68 1.68 2.48 2.48
add_text -height 0.5 -label VDD -layer M9 -pt 1.88 1.88

# Power lines horizontal (sroute)
setSrouteMode -viaConnectToShape {ring stripe blockring}
sroute -nets {VSS VDD} -connect corePin -allowJogging 0 -allowLayerChange 0
clearDrc

# Power stripes
setAddStripeMode -break_at block_ring -allow_jog padcore_ring

if {$FPy > [expr 1.5*$pitch]} {
    addStripe -nets {VSS VDD} -layer M8 -direction horizontal \
        -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
        -start_from bottom -start_offset [expr $pitch-2.08]
}
if {$FPx > [expr 1.5*$pitch]} {
    addStripe -nets {VSS VDD} -layer M9 -direction vertical \
        -width 0.8 -spacing 0.88 -set_to_set_distance $pitch \
        -start_from left -start_offset [expr $pitch-2.08]
}
editTrim -nets {VSS VDD}

# Pin positions
setPinConstraint -corner_to_pin_distance 18
source ./tcl/pins.tcl


###################################
## Placement
###################################

setPlaceMode -reset
setPlaceMode \
    -place_global_uniform_density true \
    -place_global_module_aware_spare true \
    -place_global_auto_blockage_in_channel soft \
    -place_detail_preroute_as_obs {1 2 3} \
    -place_global_cong_effort high \
    -place_design_refine_macro true

place_design
refinePlace

checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt
saveDesign ./checkpoints/postPlace.enc
puts "INFO: Checkpoint saved — postPlace"


###################################
## Clock tree option
###################################

create_route_type -name leaf_rule \
    -bottom_preferred_layer M2 -top_preferred_layer M3

create_route_type -name trunk_rule -shield_net VSS \
    -bottom_preferred_layer M4 -top_preferred_layer M6

create_route_type -name top_rule -shield_net VSS \
    -bottom_preferred_layer M7 -top_preferred_layer M8

set_ccopt_property -net_type leaf  route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top   route_type top_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property target_max_trans 1ns

set_ccopt_property buffer_cells   ${BUFCells}
set_ccopt_property inverter_cells ${INVCells}
set_ccopt_property use_inverters  auto

# OCV analysis mode tru?c preCTS
setAnalysisMode -analysisType onChipVariation -cppr both
setExtractRCMode -engine postRoute -effortLevel medium

setOptMode -reclaimArea true \
    -leakageToDynamicRatio 0.5 \
    -powerEffort high \
    -fixFanoutLoad true


###################################
## Clock Tree Synthesis (CTS)
###################################

optDesign -prefix preCTS -preCTS

create_ccopt_clock_tree_spec -filename ccopt.spec

ccopt_design -prefix postCTS

timeDesign -postCTS -outDir ./timingReports/postCTS
puts "INFO: postCTS timing report done"

optDesign -prefix postCTS -postCTS -setup -hold
saveDesign ./checkpoints/postCTS.enc
puts "INFO: Checkpoint saved — postCTS"


###################################
## Route
###################################

setNanoRouteMode -reset
setNanoRouteMode \
    -drouteFixAntenna true \
    -routeInsertAntennaDiode true \
    -routeInsertDiodeForClockNets true \
    -drouteAutoStop false \
    -droutePostRouteSwapVia true \
    -routeReserveSpaceForMultiCut true

routeDesign
routeDesign -viaOpt -wireOpt -trackOpt

setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -reset -drouteEndIteration

# Signoff RC extraction ch? cho postRoute
setExtractRCMode -engine postRoute -effortLevel signoff


optDesign -prefix postRoute -postRoute -setup -hold

deleteDanglingNet

saveDesign ./checkpoints/postRoute.enc
puts "INFO: Checkpoint saved — postRoute"


###################################
## Fillers & Metal Fill
###################################

# Filler cells — d?t SAU routing & optDesign
setFillerMode -core ${FILLERCells} \
    -preserveUserOrder true \
    -honorPrerouteAsObs true \
    -diffCellViol true
addFiller

# Xóa file .metalfill conf cu d? tránh Unknown option warnings
foreach f [glob -nocomplain .metalfill_*.conf] {
    file delete -force $f
    puts "INFO: Deleted stale metalfill config: $f"
}

# M1 (Width: 0.072 | MinLength: 0.148 | Spacing: 0.072)
setMetalFill -layer M1 \
    -maxWidth 0.072 -minWidth 0.072 \
    -maxLength 16.8 -minLength 0.148 \
    -decrement 0.144 \
    -activeSpacing 0.144 \
    -gapSpacing 0.144 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# M2-M3 (Width: 0.072 | MinLength: 0.148 | Spacing: 0.072)
setMetalFill -layer {M2 M3} \
    -maxWidth 0.072 -minWidth 0.072 \
    -maxLength 16.8 -minLength 0.148 \
    -decrement 0.144 \
    -activeSpacing 0.144 \
    -gapSpacing 0.144 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# M4 (Width: 0.096 | MinLength: 0.336 | Spacing: 0.096)
setMetalFill -layer M4 \
    -maxWidth 0.096 -minWidth 0.096 \
    -maxLength 16.8 -minLength 0.336 \
    -decrement 0.192 \
    -activeSpacing 0.192 \
    -gapSpacing 0.192 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# M5 (Width: 0.096 | MinLength: 0.336 | Spacing: 0.096)
setMetalFill -layer M5 \
    -maxWidth 0.096 -minWidth 0.096 \
    -maxLength 16.8 -minLength 0.336 \
    -decrement 0.192 \
    -activeSpacing 0.192 \
    -gapSpacing 0.192 \
    -maxDensity 70 -minDensity 60 -preferredDensity 65

# M6 (Width: 0.128 | MinLength: 0.288 | Spacing: 0.128)
setMetalFill -layer M6 \
    -maxWidth 0.128 -minWidth 0.128 \
    -maxLength 16.8 -minLength 0.288 \
    -decrement 0.256 \
    -activeSpacing 0.256 \
    -gapSpacing 0.256 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# M7 (Width: 0.128 | MinLength: 0.288 | Spacing: 0.128)
setMetalFill -layer M7 \
    -maxWidth 0.128 -minWidth 0.128 \
    -maxLength 16.8 -minLength 0.288 \
    -decrement 0.256 \
    -activeSpacing 0.256 \
    -gapSpacing 0.256 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# M8-M9 (Width: 0.160 | MinLength: 0.752 | Spacing: 0.160)
setMetalFill -layer {M8 M9} \
    -maxWidth 0.160 -minWidth 0.160 \
    -maxLength 16.8 -minLength 0.752 \
    -decrement 0.320 \
    -activeSpacing 0.320 \
    -gapSpacing 0.320 \
    -maxDensity 70 -minDensity 30 -preferredDensity 50

# Pad: comment m?c d?nh — b? comment n?u c?n fill pad layer
# FIX IMPVMD-38: verifyMetalDensity ch? nh?n 0-100, LEF Pad MAXDENSITY=320
# N?u b?t: -minDensity 80 -maxDensity 90 -activeSpacing 8.0
# setMetalFill -layer Pad \
#     -maxWidth 0.160 -minWidth 0.160 \
#     -maxLength 16.8 -minLength 0.752 \
#     -decrement 0.320 \
#     -activeSpacing 8.0 -gapSpacing 8.0 \
#     -maxDensity 90 -minDensity 80 -preferredDensity 85

addMetalFill -snap -squareShape


##################################################
## Verification
##################################################

checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt

setSrouteMode -viaConnectToShape {ring stripe blockring}
sroute -nets {VSS VDD} \
    -connect {corePin padPin padRing} \
    -allowJogging 0 -allowLayerChange 0

verifyConnectivity \
    -report ./verify_rpt/verifyConnectivity.rpt \
    -error 1000
puts "INFO: verifyConnectivity done"

verify_drc -report ./verify_rpt/verify_drc.rpt
puts "INFO: verify_drc done"
puts "WARN: V3/V5 enclosure và các violations listed trong Known Issues là expected"

puts "INFO: Checking Metal Density (M1-M9 only)..."
verifyMetalDensity \
    -layer {M1 M2 M3 M4 M5 M6 M7 M8 M9} \
    -report ./verify_rpt/verifyMetalDensity.rpt
puts "INFO: verifyMetalDensity done"

setExtractRCMode -engine postRoute -effortLevel medium
puts "INFO: Running timing report (internal extractor)..."
timeDesign -postRoute \
    -outDir ./timingReports/postRoute_verify \
    -expandedViews


##################################################
## Write out final files
##################################################

report_power -hierarchy all -outfile reports/power.rpt
report_area  -out_file reports/area.rpt
reportGateCount -limit 0 -level 2 -outfile reports/gateCount.rpt

timeDesign -postRoute \
    -outDir ./timingReports/postRoute

if {![file exists ./summaryReport]} { file mkdir ./summaryReport }
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii

saveDesign -verilog design.enc

setExtractRCMode -engine postRoute -effortLevel signoff

extractRC -exclude_layer Pad
rcOut -spef ./outputs/innovus.spef -rc_corner rccorner

all_hold_analysis_views
all_setup_analysis_views
writeTimingCon ./outputs/innovus.sdc

saveNetlist -excludeLeafCell ./outputs/innovus.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst \
    ./outputs/innovus_pg.v

setStreamOutMode \
    -labelAllPinShape true \
    -pinTextOrientation automatic \
    -virtualConnection false \
    -textSize 1

streamOut ./outputs/innovus.gds \
    -mapFile  $GDS_LAYERMAP \
    -merge    $GDS_STDCELL \
    -dieAreaAsBoundary \
    -outputMacros

write_lef_abstract -noCutObs ./outputs/innovus.lef

puts "INFO: ========================================="
puts "INFO: PnR flow completed successfully."
puts "INFO: ========================================="

if [catch {file delete -force /tmp/$USER/innovus}] {}

exit