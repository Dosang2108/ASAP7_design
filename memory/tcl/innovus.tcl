source ./tcl/innovus.globals
init_design

setAnalysisMode -analysisType onChipVariation -cppr both

set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]

# Tính toán cao d? (Pitch) d?a trên thu vi?n ASAP7
set row     [dbGet head.sites.size_y]
set track   [dbGet head.sites.size_x]
set pitch   [expr 32 * $row]

set Density 0.75
floorPlan -r 1.0 $Density 12 12 12 12

set CoreSize [dbGet top.fPlan.coreBox_size]
set FPsize   [dbGet top.fPlan.box_size]
set FPx      [dbGet top.fPlan.box_sizex]
set FPy      [dbGet top.fPlan.box_sizey]

set fo [open outputs/FPlanFinal.size w]
puts $fo "Core size: \{X Y\} = ${CoreSize}"
puts $fo "Floorplan size: \{X Y\} = ${FPsize}"
close $fo

place_design -concurrent_macros

addHaloToBlock 2 2 2 2 -allMacro

setObjFPlanBox Instance *u_sram_macro* -fixed true

source ./tcl/pins.tcl
setPinConstraint -corner_to_pin_distance 18

addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 8.0 \
-layer {top M9 bottom M9 left M10 right M10}

createPGPin VSS -geom M10 0 0 0.8 0.8
createPGPin VDD -geom M10 8.8 8.8 9.6 9.6

globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}

setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms \
-allowJogging 0 -allowLayerChange 0; clearDrc

setAddStripeMode -break_at block_ring -allow_jog padcore_ring

addStripe -nets {VSS VDD} -layer M9 -direction horizontal \
-width 0.8 -spacing 8.0 -set_to_set_distance $pitch \
-start_from bottom -start_offset [expr $pitch - 2.08] 

addStripe -nets {VSS VDD} -layer M10 -direction vertical \
-width 0.8 -spacing 8.0 -set_to_set_distance $pitch \
-start_from left -start_offset [expr $pitch - 2.08] 

editTrim -nets {VSS VDD}

setPlaceMode -reset
setPlaceMode -place_global_uniform_density true \
-place_global_module_aware_spare true \
-place_global_auto_blockage_in_channel soft \
-place_detail_preroute_as_obs {2 3} -place_global_cong_effort high \
-place_design_refine_macro true

place_design
refinePlace

exec mkdir -p verify_rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt

set BUFCells {BUFx2_ASAP7_75t_R BUFx4_ASAP7_75t_R}
set INVCells {INVx2_ASAP7_75t_R INVx4_ASAP7_75t_R}

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

set_ccopt_property target_max_trans 50ps

set_ccopt_property buffer_cells $BUFCells
set_ccopt_property inverter_cells $INVCells
set_ccopt_property use_inverters auto

setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 \
-powerEffort high -fixFanoutLoad true

optDesign -prefix preCTS -preCTS
create_ccopt_clock_tree_spec -filename outputs/ccopt.spec
source outputs/ccopt.spec
ccopt_design -prefix postCTS
optDesign -prefix postCTS -postCTS -setup -hold

setNanoRouteMode -quiet -routeWithSiDriven true \
-routeWithTimingDriven true -routeWithSiPostRouteFix true \
-drouteFixAntenna true

routeDesign

verify_drc -report ./verify_rpt/drc.rpt
verifyConnectivity -type all -error 1000 -warning 50 \
-report ./verify_rpt/connectivity.rpt

optDesign -postRoute -setup -hold -prefix postRoute

add_fillers -cells {FILLER_ASAP7_75t_R FILLER_ASAP7_75t_R_2 FILLER_ASAP7_75t_R_4}

check_connectivity -error 1000 -warning 50

write_hdl > outputs/top_axi_ram_pnr.v
write_db saved/top_axi_ram_final.db

streamOut outputs/top_axi_ram.gds -libName WORK -units 1000 -mode ALL

report_area   > ./verify_rpt/final_area.rpt
report_power  > ./verify_rpt/final_power.rpt
report_timing > ./verify_rpt/final_timing.rpt

puts "=== RUN INNOVUS COMPLETED ==="
