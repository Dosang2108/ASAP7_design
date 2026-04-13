#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Apr 13 14:41:57 2026                
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
set auto_file_dir /data/tkvm2/innovus
set init_design_uniquify 1
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set init_abstract_view abstract
set init_design_settop 0
set init_gnd_net VSS
set init_layout_view layout
set init_mmmc_file ./tcl/viewDefinition.tcl
set init_lef_file {../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef}
set init_pwr_net VDD
set init_verilog ./outputs/synthesis_net.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
setGenerateViaMode -auto true
all_constraint_modes
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]
setDesignMode -process 7
setMultiCpuUsage -acquireLicense 2
setMultiCpuUsage -localCpu 2
setDistributeHost -local
setDontUse ICGx8DC_ASAP7_75t_R true
setDontUse ICGx6p67DC_ASAP7_75t_R true
setDontUse ICGx5p33DC_ASAP7_75t_R true
setDontUse ICGx4DC_ASAP7_75t_R true
setDontUse ICGx2p67DC_ASAP7_75t_R true
setDontUse MAJIx1_ASAP7_75t_R true
setDontUse SDFLx1_ASAP7_75t_R true
setDontUse DFFHQNx1_ASAP7_75t_R true
setDontUse ASYNC_DFFHx1_ASAP7_75t_R true
setDesignMode -topRoutingLayer 9
floorPlan -r 1.0 0.7 3.84 3.84 3.84 3.84
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 -layer {top M8 bottom M8 left M9 right M9}
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
createPGPin VSS -geom M9 0 0 0.8 0.8
add_text -height 0.5 -label VSS -layer M9 -pt 0.2 0.2
createPGPin VDD -geom M9 1.68 1.68 2.48 2.48
add_text -height 0.5 -label VDD -layer M9 -pt 1.88 1.88
setSrouteMode -viaConnectToShape {ring stripe blockring}
sroute -nets {VSS VDD} -connect corePin -allowJogging 0 -allowLayerChange 0
clearDrc
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
editTrim -nets {VSS VDD}
setPinConstraint -corner_to_pin_distance 18
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side -spreadDirection counterclockwise -side BOTTOM -layer 7 -honorConstraint 1 -pin {iClk iA[31] iA[30] iA[29] iA[28] iA[27] iA[26] iA[25] iA[24] iA[23] iA[22] iA[21] iA[20] iA[19] iA[18] iA[17] iA[16] iA[15] iA[14] iA[13] iA[12] iA[11] iA[10] iA[9] iA[8] }
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side -spreadDirection counterclockwise -side TOP -layer 7 -honorConstraint 1 -pin { iB[15] iB[14] iB[13] iB[12] iB[11] iB[10] iB[9] iB[8] iB[7] iB[6] iB[5] iB[4] iB[3] iB[2] iB[1] iB[0] oS[31] oS[30] oS[29] oS[28] oS[27] oS[26] oS[25] oS[24] }
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side -spreadDirection counterclockwise -side RIGHT -layer 6 -honorConstraint 1 -pin { iA[7] iA[6] iA[5] iA[4] iA[3] iA[2] iA[1] iA[0] iB[31] iB[30] iB[29] iB[28] iB[27] iB[26] iB[25] iB[24] iB[23] iB[22] iB[21] iB[20] iB[19] iB[18] iB[17] iB[16] }
editPin -pinWidth 0.128 -pinDepth 0.28 -fixOverlap 1 -spreadType side -spreadDirection counterclockwise -side LEFT -layer 6 -honorConstraint 1 -pin { oS[23] oS[22] oS[21] oS[20] oS[19] oS[18] oS[17] oS[16] oS[15] oS[14] oS[13] oS[12] oS[11] oS[10] oS[9] oS[8] oS[7] oS[6] oS[5] oS[4] oS[3] oS[2] oS[1] oS[0] }
setPinAssignMode -pinEditInBatch false
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true -place_global_module_aware_spare true -place_global_auto_blockage_in_channel soft -place_detail_preroute_as_obs {1 2 3} -place_global_cong_effort high -place_design_refine_macro true
place_design
refinePlace
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt
saveDesign ./checkpoints/postPlace.enc
create_route_type -name leaf_rule -bottom_preferred_layer M2 -top_preferred_layer M3
create_route_type -name trunk_rule -shield_net VSS -bottom_preferred_layer M4 -top_preferred_layer M6
create_route_type -name top_rule -shield_net VSS -bottom_preferred_layer M7 -top_preferred_layer M8
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type top_rule
set_ccopt_property routing_top_min_fanout 10000
set_ccopt_property target_max_trans 1ns
set_ccopt_property buffer_cells {BUFx2_ASAP7_75t_R BUFx3_ASAP7_75t_R BUFx4_ASAP7_75t_R BUFx8_ASAP7_75t_R}
set_ccopt_property inverter_cells {INVx1_ASAP7_75t_R INVx2_ASAP7_75t_R INVx4_ASAP7_75t_R INVx8_ASAP7_75t_R INVxp33_ASAP7_75t_R}
set_ccopt_property use_inverters auto
setAnalysisMode -analysisType onChipVariation -cppr both
setExtractRCMode -engine postRoute -effortLevel medium
setOptMode -reclaimArea true -leakageToDynamicRatio 0.5 -powerEffort high -fixFanoutLoad true
optDesign -prefix preCTS -preCTS
create_ccopt_clock_tree_spec -filename ccopt.spec
ccopt_design -prefix postCTS
timeDesign -postCTS -outDir ./timingReports/postCTS
optDesign -prefix postCTS -postCTS -setup -hold
saveDesign ./checkpoints/postCTS.enc
setNanoRouteMode -reset
setNanoRouteMode -drouteFixAntenna true -routeInsertAntennaDiode true -routeInsertDiodeForClockNets true -drouteAutoStop false -droutePostRouteSwapVia true -routeReserveSpaceForMultiCut true
routeDesign
routeDesign -viaOpt -wireOpt -trackOpt
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -reset -drouteEndIteration
setExtractRCMode -engine postRoute -effortLevel signoff
optDesign -prefix postRoute -postRoute -setup -hold
deleteDanglingNet
saveDesign ./checkpoints/postRoute.enc
setFillerMode -core FILLER_ASAP7_75t_R -preserveUserOrder true -honorPrerouteAsObs true -diffCellViol true
addFiller
setMetalFill -layer M1 -maxWidth 0.072 -minWidth 0.072 -maxLength 16.8 -minLength 0.148 -decrement 0.144 -activeSpacing 0.144 -gapSpacing 0.144 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer {M2 M3} -maxWidth 0.072 -minWidth 0.072 -maxLength 16.8 -minLength 0.148 -decrement 0.144 -activeSpacing 0.144 -gapSpacing 0.144 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer M4 -maxWidth 0.096 -minWidth 0.096 -maxLength 16.8 -minLength 0.336 -decrement 0.192 -activeSpacing 0.192 -gapSpacing 0.192 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer M5 -maxWidth 0.096 -minWidth 0.096 -maxLength 16.8 -minLength 0.336 -decrement 0.192 -activeSpacing 0.192 -gapSpacing 0.192 -maxDensity 70 -minDensity 60 -preferredDensity 65
setMetalFill -layer M6 -maxWidth 0.128 -minWidth 0.128 -maxLength 16.8 -minLength 0.288 -decrement 0.256 -activeSpacing 0.256 -gapSpacing 0.256 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer M7 -maxWidth 0.128 -minWidth 0.128 -maxLength 16.8 -minLength 0.288 -decrement 0.256 -activeSpacing 0.256 -gapSpacing 0.256 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer {M8 M9} -maxWidth 0.160 -minWidth 0.160 -maxLength 16.8 -minLength 0.752 -decrement 0.320 -activeSpacing 0.320 -gapSpacing 0.320 -maxDensity 70 -minDensity 30 -preferredDensity 50
addMetalFill -snap -squareShape
checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt
setSrouteMode -viaConnectToShape {ring stripe blockring}
sroute -nets {VSS VDD} -connect {corePin padPin padRing} -allowJogging 0 -allowLayerChange 0
verifyConnectivity -report ./verify_rpt/verifyConnectivity.rpt -error 1000
verify_drc -report ./verify_rpt/verify_drc.rpt
verifyMetalDensity -layer {M1 M2 M3 M4 M5 M6 M7 M8 M9} -report ./verify_rpt/verifyMetalDensity.rpt
setExtractRCMode -engine postRoute -effortLevel medium
timeDesign -postRoute -outDir ./timingReports/postRoute_verify -expandedViews
report_power -hierarchy all -outfile reports/power.rpt
report_area -out_file reports/area.rpt
reportGateCount -limit 0 -level 2 -outfile reports/gateCount.rpt
timeDesign -postRoute -outDir ./timingReports/postRoute -noExtract
win
set enc_check_rename_command_name 1
timeDesign -postRoute -outDir ./timingReports/postRoute
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii
saveDesign -verilog design.enc
setExtractRCMode -engine postRoute -effortLevel signoff
extractRC -exclude_layer Pad
rcOut -spef ./outputs/innovus.spef -rc_corner rccorner
all_hold_analysis_views
all_setup_analysis_views
writeTimingCon ./outputs/innovus.sdc
saveNetlist -excludeLeafCell ./outputs/innovus.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst ./outputs/innovus_pg.v
setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic -virtualConnection false -textSize 1
streamOut ./outputs/innovus.gds -mapFile ../../Asap7/asap7/asap7_pdk_r1p7/cdslib/asap7_TechLib_10/asap7_TechLib_08.layermap -merge ../../Asap7/asap7/asap7sc7p5t_28/GDS/asap7sc7p5t_28_R_220121a.gds -dieAreaAsBoundary -outputMacros
write_lef_abstract -noCutObs ./outputs/innovus.lef
