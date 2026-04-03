#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Apr  3 18:09:43 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v22.17-s086_1 (64bit) 09/24/2024 10:51 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 22.17-s086_1 NR240905-1647/22_17-UB (database version 18.20.629) {superthreading v2.20}
#@(#)CDS: AAE 22.17-s013 (64bit) 09/24/2024 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 22.17-s017_1 () Sep 12 2024 04:53:54 ( )
#@(#)CDS: SYNTECH 22.17-s006_1 () Aug 12 2024 03:52:27 ( )
#@(#)CDS: CPE v22.17-s051
#@(#)CDS: IQuantus/TQuantus 21.2.2-s369 (64bit) Tue May 7 14:30:42 PDT 2024 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
set init_lef_file {../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_L_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SL_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SRAM_4x_220121a.lef}
set init_verilog outputs/synthesis_net.v
set init_top_cell Adder32
set init_pwr_net VDD
set init_gnd_net VSS
set init_layout_view layout
set init_abstract_view abstract
set init_mmmc_file ./tcl/viewDefination.tcl
init_design
all_constraint_modes
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]
floorPlan -r 1.0 0.75 4 4 4 4
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 -layer {top M9 bottom M9 left M10 right M10}
createPGPin VSS -geom M10 0 0 0.8 0.8
createPGPin VDD -geom M10 1.68 1.68 2.48 2.48
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms -allowJogging 0 -allowLayerChange 0
clearDrc
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
addStripe -nets {VSS VDD} -layer M9 -direction horizontal -width 0.8 -spacing 0.88 -set_to_set_distance 34.56 -start_from bottom -start_offset 32.48
addStripe -nets {VSS VDD} -layer M10 -direction vertical -width 0.8 -spacing 0.88 -set_to_set_distance 34.56 -start_from left -start_offset 32.48
editTrim -nets {VSS VDD}
setPinConstraint -corner_to_pin_distance 18
setPinAssignMode -pinEditInBatch true
editPin -pin {iA[31]} -layer M3 -assign {0.0 5.0}
editPin -pin {iA[30]} -layer M3 -assign {0.0 5.583}
editPin -pin {iA[29]} -layer M3 -assign {0.0 6.166}
editPin -pin {iA[28]} -layer M3 -assign {0.0 6.749}
editPin -pin {iA[27]} -layer M3 -assign {0.0 7.332}
editPin -pin {iA[26]} -layer M3 -assign {0.0 7.915}
editPin -pin {iA[25]} -layer M3 -assign {0.0 8.498}
editPin -pin {iA[24]} -layer M3 -assign {0.0 9.081}
editPin -pin {iA[23]} -layer M3 -assign {0.0 9.664}
editPin -pin {iA[22]} -layer M3 -assign {0.0 10.247}
editPin -pin {iA[21]} -layer M3 -assign {0.0 10.83}
editPin -pin {iA[20]} -layer M3 -assign {0.0 11.413}
editPin -pin {iA[19]} -layer M3 -assign {0.0 11.996}
editPin -pin {iA[18]} -layer M3 -assign {0.0 12.579}
editPin -pin {iA[17]} -layer M3 -assign {0.0 13.162}
editPin -pin {iA[16]} -layer M3 -assign {0.0 13.745}
editPin -pin {iA[15]} -layer M3 -assign {0.0 14.328}
editPin -pin {iA[14]} -layer M3 -assign {0.0 14.911}
editPin -pin {iA[13]} -layer M3 -assign {0.0 15.494}
editPin -pin {iA[12]} -layer M3 -assign {0.0 16.077}
editPin -pin {iA[11]} -layer M3 -assign {0.0 16.66}
editPin -pin {iA[10]} -layer M3 -assign {0.0 17.243}
editPin -pin {iA[9]} -layer M3 -assign {0.0 17.826}
editPin -pin {iA[8]} -layer M3 -assign {0.0 18.409}
editPin -pin {iA[7]} -layer M3 -assign {0.0 18.992}
editPin -pin {iA[6]} -layer M3 -assign {0.0 19.575}
editPin -pin {iA[5]} -layer M3 -assign {0.0 20.158}
editPin -pin {iA[4]} -layer M3 -assign {0.0 20.741}
editPin -pin {iA[3]} -layer M3 -assign {0.0 21.324}
editPin -pin {iA[2]} -layer M3 -assign {0.0 21.907}
editPin -pin {iA[1]} -layer M3 -assign {0.0 22.49}
editPin -pin {iA[0]} -layer M3 -assign {0.0 23.073}
editPin -pin {iB[31]} -layer M3 -assign {29.088 5.0}
editPin -pin {iB[30]} -layer M3 -assign {29.088 5.583}
editPin -pin {iB[29]} -layer M3 -assign {29.088 6.166}
editPin -pin {iB[28]} -layer M3 -assign {29.088 6.749}
editPin -pin {iB[27]} -layer M3 -assign {29.088 7.332}
editPin -pin {iB[26]} -layer M3 -assign {29.088 7.915}
editPin -pin {iB[25]} -layer M3 -assign {29.088 8.498}
editPin -pin {iB[24]} -layer M3 -assign {29.088 9.081}
editPin -pin {iB[23]} -layer M3 -assign {29.088 9.664}
editPin -pin {iB[22]} -layer M3 -assign {29.088 10.247}
editPin -pin {iB[21]} -layer M3 -assign {29.088 10.83}
editPin -pin {iB[20]} -layer M3 -assign {29.088 11.413}
editPin -pin {iB[19]} -layer M3 -assign {29.088 11.996}
editPin -pin {iB[18]} -layer M3 -assign {29.088 12.579}
editPin -pin {iB[17]} -layer M3 -assign {29.088 13.162}
editPin -pin {iB[16]} -layer M3 -assign {29.088 13.745}
editPin -pin {iB[15]} -layer M3 -assign {29.088 14.328}
editPin -pin {iB[14]} -layer M3 -assign {29.088 14.911}
editPin -pin {iB[13]} -layer M3 -assign {29.088 15.494}
editPin -pin {iB[12]} -layer M3 -assign {29.088 16.077}
editPin -pin {iB[11]} -layer M3 -assign {29.088 16.66}
editPin -pin {iB[10]} -layer M3 -assign {29.088 17.243}
editPin -pin {iB[9]} -layer M3 -assign {29.088 17.826}
editPin -pin {iB[8]} -layer M3 -assign {29.088 18.409}
editPin -pin {iB[7]} -layer M3 -assign {29.088 18.992}
editPin -pin {iB[6]} -layer M3 -assign {29.088 19.575}
editPin -pin {iB[5]} -layer M3 -assign {29.088 20.158}
editPin -pin {iB[4]} -layer M3 -assign {29.088 20.741}
editPin -pin {iB[3]} -layer M3 -assign {29.088 21.324}
editPin -pin {iB[2]} -layer M3 -assign {29.088 21.907}
editPin -pin {iB[1]} -layer M3 -assign {29.088 22.49}
editPin -pin {iB[0]} -layer M3 -assign {29.088 23.073}
editPin -pin {oS[31]} -layer M4 -assign {5.0 28.656}
editPin -pin {oS[30]} -layer M4 -assign {5.5965 28.656}
editPin -pin {oS[29]} -layer M4 -assign {6.193 28.656}
editPin -pin {oS[28]} -layer M4 -assign {6.7895 28.656}
editPin -pin {oS[27]} -layer M4 -assign {7.386 28.656}
editPin -pin {oS[26]} -layer M4 -assign {7.9825 28.656}
editPin -pin {oS[25]} -layer M4 -assign {8.579 28.656}
editPin -pin {oS[24]} -layer M4 -assign {9.1755 28.656}
editPin -pin {oS[23]} -layer M4 -assign {9.772 28.656}
editPin -pin {oS[22]} -layer M4 -assign {10.3685 28.656}
editPin -pin {oS[21]} -layer M4 -assign {10.965 28.656}
editPin -pin {oS[20]} -layer M4 -assign {11.5615 28.656}
editPin -pin {oS[19]} -layer M4 -assign {12.158 28.656}
editPin -pin {oS[18]} -layer M4 -assign {12.7545 28.656}
editPin -pin {oS[17]} -layer M4 -assign {13.351 28.656}
editPin -pin {oS[16]} -layer M4 -assign {13.9475 28.656}
editPin -pin {oS[15]} -layer M4 -assign {14.544 28.656}
editPin -pin {oS[14]} -layer M4 -assign {15.1405 28.656}
editPin -pin {oS[13]} -layer M4 -assign {15.737 28.656}
editPin -pin {oS[12]} -layer M4 -assign {16.3335 28.656}
editPin -pin {oS[11]} -layer M4 -assign {16.93 28.656}
editPin -pin {oS[10]} -layer M4 -assign {17.5265 28.656}
editPin -pin {oS[9]} -layer M4 -assign {18.123 28.656}
editPin -pin {oS[8]} -layer M4 -assign {18.7195 28.656}
editPin -pin {oS[7]} -layer M4 -assign {19.316 28.656}
editPin -pin {oS[6]} -layer M4 -assign {19.9125 28.656}
editPin -pin {oS[5]} -layer M4 -assign {20.509 28.656}
editPin -pin {oS[4]} -layer M4 -assign {21.1055 28.656}
editPin -pin {oS[3]} -layer M4 -assign {21.702 28.656}
editPin -pin {oS[2]} -layer M4 -assign {22.2985 28.656}
editPin -pin {oS[1]} -layer M4 -assign {22.895 28.656}
editPin -pin {oS[0]} -layer M4 -assign {23.4915 28.656}
editPin -pin iClk -layer M4 -assign {14.544 0.0}
setPinAssignMode -pinEditInBatch false
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true -place_global_module_aware_spare true -place_global_auto_blockage_in_channel soft -place_detail_preroute_as_obs {2 3} -place_global_cong_effort high -place_design_refine_macro true
place_design
refinePlace
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt
create_route_type -name leaf_rule -bottom_preferred_layer M2 -top_preferred_layer M3
create_route_type -name trunk_rule -shield_net VSS -bottom_preferred_layer M4 -top_preferred_layer M6
create_route_type -name top_rule -shield_net VSS -bottom_preferred_layer M7 -top_preferred_layer M8
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type top_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property target_max_trans 1ns
set_ccopt_property buffer_cells {BUFx2_ASAP7_75t_R BUFx4_ASAP7_75t_R}
set_ccopt_property inverter_cells {INVx2_ASAP7_75t_R INVx4_ASAP7_75t_R}
set_ccopt_property use_inverters auto
setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 -powerEffort high -fixFanoutLoad true
optDesign -prefix preCTS -preCTS
create_ccopt_clock_tree_spec -filename ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin iClk true
create_ccopt_clock_tree -name CLK -source iClk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree CLK 0.5
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree CLK 1.0
set_ccopt_property clock_period -pin iClk 10
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name CLK/constraint_typical -sources iClk -auto_sinks
set_ccopt_property include_source_latency -skew_group CLK/constraint_typical true
set_ccopt_property extracted_from_clock_name -skew_group CLK/constraint_typical CLK
set_ccopt_property extracted_from_constraint_mode_names -skew_group CLK/constraint_typical {constraint_typical  }
set_ccopt_property extracted_from_delay_corners -skew_group CLK/constraint_typical delay_corner_typical
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -prefix postCTS
optDesign -prefix postCTS -postCTS -setup -hold
setNanoRouteMode -quiet -routeWithSiDriven true -routeWithTimingDriven true -routeWithSiPostRouteFix true -drouteFixAntenna true
routeDesign
verify_drc -report ./verify_rpt/drc.rpt
verifyConnectivity -type all -error 1000 -warning 50 -report ./verify_rpt/connectivity.rpt
optDesign -postRoute -setup -hold -prefix postRoute
win
set enc_check_rename_command_name 1
fit
