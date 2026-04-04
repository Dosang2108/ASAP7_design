#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Apr  4 15:13:58 2026                
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
setAnalysisMode -analysisType onChipVariation -cppr both
all_constraint_modes
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]
floorPlan -r 1.0 0.75 12 12 12 12
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 8.0 -layer {top M9 bottom M9 left M10 right M10}
createPGPin VSS -geom M10 0 0 0.8 0.8
createPGPin VDD -geom M10 8.8 8.8 9.6 9.6
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms -allowJogging 0 -allowLayerChange 0
clearDrc
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
addStripe -nets {VSS VDD} -layer M9 -direction horizontal -width 0.8 -spacing 8.0 -set_to_set_distance 34.56 -start_from bottom -start_offset 32.48
addStripe -nets {VSS VDD} -layer M10 -direction vertical -width 0.8 -spacing 8.0 -set_to_set_distance 34.56 -start_from left -start_offset 32.48
editTrim -nets {VSS VDD}
setPinConstraint -corner_to_pin_distance 18
setPinAssignMode -pinEditInBatch true
editPin -pin {iA[31]} -layer M3 -assign {0.0 5.0}
editPin -pin {iA[30]} -layer M3 -assign {0.0 6.1185}
editPin -pin {iA[29]} -layer M3 -assign {0.0 7.237}
editPin -pin {iA[28]} -layer M3 -assign {0.0 8.3555}
editPin -pin {iA[27]} -layer M3 -assign {0.0 9.474}
editPin -pin {iA[26]} -layer M3 -assign {0.0 10.5925}
editPin -pin {iA[25]} -layer M3 -assign {0.0 11.711}
editPin -pin {iA[24]} -layer M3 -assign {0.0 12.8295}
editPin -pin {iA[23]} -layer M3 -assign {0.0 13.948}
editPin -pin {iA[22]} -layer M3 -assign {0.0 15.0665}
editPin -pin {iA[21]} -layer M3 -assign {0.0 16.185}
editPin -pin {iA[20]} -layer M3 -assign {0.0 17.3035}
editPin -pin {iA[19]} -layer M3 -assign {0.0 18.422}
editPin -pin {iA[18]} -layer M3 -assign {0.0 19.5405}
editPin -pin {iA[17]} -layer M3 -assign {0.0 20.659}
editPin -pin {iA[16]} -layer M3 -assign {0.0 21.7775}
editPin -pin {iA[15]} -layer M3 -assign {0.0 22.896}
editPin -pin {iA[14]} -layer M3 -assign {0.0 24.0145}
editPin -pin {iA[13]} -layer M3 -assign {0.0 25.133}
editPin -pin {iA[12]} -layer M3 -assign {0.0 26.2515}
editPin -pin {iA[11]} -layer M3 -assign {0.0 27.37}
editPin -pin {iA[10]} -layer M3 -assign {0.0 28.4885}
editPin -pin {iA[9]} -layer M3 -assign {0.0 29.607}
editPin -pin {iA[8]} -layer M3 -assign {0.0 30.7255}
editPin -pin {iA[7]} -layer M3 -assign {0.0 31.844}
editPin -pin {iA[6]} -layer M3 -assign {0.0 32.9625}
editPin -pin {iA[5]} -layer M3 -assign {0.0 34.081}
editPin -pin {iA[4]} -layer M3 -assign {0.0 35.1995}
editPin -pin {iA[3]} -layer M3 -assign {0.0 36.318}
editPin -pin {iA[2]} -layer M3 -assign {0.0 37.4365}
editPin -pin {iA[1]} -layer M3 -assign {0.0 38.555}
editPin -pin {iA[0]} -layer M3 -assign {0.0 39.6735}
editPin -pin {iB[31]} -layer M3 -assign {46.512 5.0}
editPin -pin {iB[30]} -layer M3 -assign {46.512 6.1185}
editPin -pin {iB[29]} -layer M3 -assign {46.512 7.237}
editPin -pin {iB[28]} -layer M3 -assign {46.512 8.3555}
editPin -pin {iB[27]} -layer M3 -assign {46.512 9.474}
editPin -pin {iB[26]} -layer M3 -assign {46.512 10.5925}
editPin -pin {iB[25]} -layer M3 -assign {46.512 11.711}
editPin -pin {iB[24]} -layer M3 -assign {46.512 12.8295}
editPin -pin {iB[23]} -layer M3 -assign {46.512 13.948}
editPin -pin {iB[22]} -layer M3 -assign {46.512 15.0665}
editPin -pin {iB[21]} -layer M3 -assign {46.512 16.185}
editPin -pin {iB[20]} -layer M3 -assign {46.512 17.3035}
editPin -pin {iB[19]} -layer M3 -assign {46.512 18.422}
editPin -pin {iB[18]} -layer M3 -assign {46.512 19.5405}
editPin -pin {iB[17]} -layer M3 -assign {46.512 20.659}
editPin -pin {iB[16]} -layer M3 -assign {46.512 21.7775}
editPin -pin {iB[15]} -layer M3 -assign {46.512 22.896}
editPin -pin {iB[14]} -layer M3 -assign {46.512 24.0145}
editPin -pin {iB[13]} -layer M3 -assign {46.512 25.133}
editPin -pin {iB[12]} -layer M3 -assign {46.512 26.2515}
editPin -pin {iB[11]} -layer M3 -assign {46.512 27.37}
editPin -pin {iB[10]} -layer M3 -assign {46.512 28.4885}
editPin -pin {iB[9]} -layer M3 -assign {46.512 29.607}
editPin -pin {iB[8]} -layer M3 -assign {46.512 30.7255}
editPin -pin {iB[7]} -layer M3 -assign {46.512 31.844}
editPin -pin {iB[6]} -layer M3 -assign {46.512 32.9625}
editPin -pin {iB[5]} -layer M3 -assign {46.512 34.081}
editPin -pin {iB[4]} -layer M3 -assign {46.512 35.1995}
editPin -pin {iB[3]} -layer M3 -assign {46.512 36.318}
editPin -pin {iB[2]} -layer M3 -assign {46.512 37.4365}
editPin -pin {iB[1]} -layer M3 -assign {46.512 38.555}
editPin -pin {iB[0]} -layer M3 -assign {46.512 39.6735}
editPin -pin {oS[31]} -layer M4 -assign {5.0 45.792}
editPin -pin {oS[30]} -layer M4 -assign {6.141 45.792}
editPin -pin {oS[29]} -layer M4 -assign {7.282 45.792}
editPin -pin {oS[28]} -layer M4 -assign {8.423 45.792}
editPin -pin {oS[27]} -layer M4 -assign {9.564 45.792}
editPin -pin {oS[26]} -layer M4 -assign {10.705 45.792}
editPin -pin {oS[25]} -layer M4 -assign {11.846 45.792}
editPin -pin {oS[24]} -layer M4 -assign {12.987 45.792}
editPin -pin {oS[23]} -layer M4 -assign {14.128 45.792}
editPin -pin {oS[22]} -layer M4 -assign {15.269 45.792}
editPin -pin {oS[21]} -layer M4 -assign {16.41 45.792}
editPin -pin {oS[20]} -layer M4 -assign {17.551 45.792}
editPin -pin {oS[19]} -layer M4 -assign {18.692 45.792}
editPin -pin {oS[18]} -layer M4 -assign {19.833 45.792}
editPin -pin {oS[17]} -layer M4 -assign {20.974 45.792}
editPin -pin {oS[16]} -layer M4 -assign {22.115 45.792}
editPin -pin {oS[15]} -layer M4 -assign {23.256 45.792}
editPin -pin {oS[14]} -layer M4 -assign {24.397 45.792}
editPin -pin {oS[13]} -layer M4 -assign {25.538 45.792}
editPin -pin {oS[12]} -layer M4 -assign {26.679 45.792}
editPin -pin {oS[11]} -layer M4 -assign {27.82 45.792}
editPin -pin {oS[10]} -layer M4 -assign {28.961 45.792}
editPin -pin {oS[9]} -layer M4 -assign {30.102 45.792}
editPin -pin {oS[8]} -layer M4 -assign {31.243 45.792}
editPin -pin {oS[7]} -layer M4 -assign {32.384 45.792}
editPin -pin {oS[6]} -layer M4 -assign {33.525 45.792}
editPin -pin {oS[5]} -layer M4 -assign {34.666 45.792}
editPin -pin {oS[4]} -layer M4 -assign {35.807 45.792}
editPin -pin {oS[3]} -layer M4 -assign {36.948 45.792}
editPin -pin {oS[2]} -layer M4 -assign {38.089 45.792}
editPin -pin {oS[1]} -layer M4 -assign {39.23 45.792}
editPin -pin {oS[0]} -layer M4 -assign {40.371 45.792}
editPin -pin iClk -layer M4 -assign {23.256 0.0}
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
set_ccopt_property target_max_trans 50ps
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
selectVia 5.5600 11.8600 5.6720 11.9720 3 {iA[24]}
fit
zoomBox -0.85475 1.67250 46.39900 44.48800
zoomBox 7.20450 10.33600 36.22425 36.63025
zoomBox 13.33475 16.92650 28.48375 30.65275
zoomBox 15.19275 18.92400 26.13800 28.84125
zoomBox 17.50500 21.40950 23.21875 26.58650
zoomBox 16.83725 19.75000 26.14100 28.18000
zoomBox 16.17225 18.09800 29.04975 29.76600
zoomBox 14.66700 14.35750 35.63600 33.35700
zoomBox 12.21600 8.26675 46.36100 39.20475
zoomBox 16.87525 11.70425 41.54500 34.05700
zoomBox 22.67325 15.98225 35.55125 27.65075
zoomBox 26.19550 18.58100 31.91000 23.75875
zoomBox 27.54325 19.44050 30.52675 22.14375
zoomBox 28.24675 19.88925 29.80425 21.30050
zoomBox 28.52675 20.15250 29.48325 21.01925
deselectAll
selectMarker 28.9080 20.5080 28.9800 20.6040 36 1 41
zoomBox 28.29300 20.06375 29.61725 21.26350
zoomBox 27.46725 19.58675 30.45175 22.29100
zoomBox 26.10800 18.80150 31.82575 23.98225
zoomBox 22.54325 16.74175 35.42975 28.41800
zoomBox 16.67575 13.35175 41.36225 35.71975
zoomBox 5.43500 6.85700 52.72725 49.70750
zoomBox 1.28500 4.45925 56.92325 54.87175
zoomBox 8.36250 10.31075 42.53150 41.27050
zoomBox 11.48800 12.89500 36.17525 35.26350
zoomBox 14.62825 15.49125 29.78950 29.22850
zoomBox 15.37775 16.11100 28.26500 27.78775
zoomBox 13.74600 14.76175 31.58300 30.92350
zoomBox 10.05125 11.70675 39.09600 38.02350
zoomBox 4.03525 6.73250 51.32975 49.58500
zoomBox 4.03525 -1.83800 51.32975 41.01450
zoomBox 4.03525 -6.12325 51.32975 36.72925
zoomBox 19.69725 9.13525 48.74200 35.45200
zoomBox 31.61175 20.74275 46.77350 34.48050
zoomBox 35.22250 24.26050 46.17700 34.18600
zoomBox 39.68675 28.33900 45.40550 33.52075
zoomBox 42.01750 30.46850 45.00275 33.17325
zoomBox 43.23400 31.57975 44.79275 32.99200
pan 0.20075 -11.02275
panCenter 43.43475 33.62350
zoomBox 42.83125 33.03100 44.15625 34.23150
zoomBox 42.65550 32.91725 44.21450 34.32975
zoomBox 42.20550 32.62600 44.36350 34.58125
zoomBox 41.58250 32.22275 44.56975 34.92950
zoomBox 40.72050 31.66500 44.85500 35.41125
zoomBox 41.77900 32.08525 44.76625 34.79200
zoomBox 43.04625 32.65825 44.60600 34.07150
zoomBox 43.72725 32.93700 44.54150 33.67475
zoomBox 44.02150 33.04575 44.52175 33.49900
zoomBox 44.09175 33.07175 44.51700 33.45700
deselectAll
fit
zoomBox 2.29425 7.94200 36.43525 38.87650
zoomBox 6.49100 14.22550 27.45825 33.22350
zoomBox 9.68375 19.00575 20.62925 28.92325
zoomBox 11.77600 20.64675 18.49800 26.73750
selectInst {oS_reg[30]}
