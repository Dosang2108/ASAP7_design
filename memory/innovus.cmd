#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Apr  6 10:17:28 2026                
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
set init_lef_file {../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_L_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SL_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SRAM_4x_220121a.lef ../../Asap7/asap7/asap7_sram_0p0/generated/LEF/4xLEF/srambank_256x4x32_6t122.lef.4x.lef}
set init_verilog outputs/synthesis_net.v
set init_top_cell top_axi_ram
set init_pwr_net VDD
set init_gnd_net VSS
set init_layout_view layout
set init_abstract_view abstract
set init_mmmc_file tcl/viewDefination.tcl
init_design
setAnalysisMode -analysisType onChipVariation -cppr both
all_constraint_modes
set_interactive_constraint_modes [all_constraint_modes]
set_propagated_clock [all_clocks]
floorPlan -r 1.0 0.75 10.8 10.8 10.8 10.8
changeFloorplan -coreToBottom 1.08
place_design -concurrent_macros
refine_macro_place
addHaloToBlock 2 2 2 2 -allMacro
setInstancePlacementStatus -allHardMacros -status fixed
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 0.88 -layer {top M6 bottom M6 left M5 right M5}
createPGPin VSS -geom M5 0 0 0.8 0.8
createPGPin VDD -geom M5 1.68 1.68 2.48 2.48
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
addRing -type block_rings -nets {VDD VSS} -around each_block -layer {top M6 bottom M6 left M5 right M5} -width 1.2 -spacing 0.88 -offset 1.0 -center 1
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms -allowJogging 0 -allowLayerChange 0
clearDrc
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
addStripe -nets {VSS VDD} -layer M6 -direction horizontal -width 0.8 -spacing 0.88 -set_to_set_distance 34.56 -start_from bottom -start_offset 32.48
addStripe -nets {VSS VDD} -layer M5 -direction vertical -width 0.8 -spacing 0.88 -set_to_set_distance 34.56 -start_from left -start_offset 32.48
editTrim -nets {VSS VDD}
setPinConstraint -corner_to_pin_distance 18
setPinAssignMode -pinEditInBatch true
editPin -pin {s_axi_awid[4]} -layer M3 -assign {0.0 5.0}
editPin -pin {s_axi_awid[3]} -layer M3 -assign {0.0 6.71394392523}
editPin -pin {s_axi_awid[2]} -layer M3 -assign {0.0 8.42788785046}
editPin -pin {s_axi_awid[1]} -layer M3 -assign {0.0 10.1418317757}
editPin -pin {s_axi_awid[0]} -layer M3 -assign {0.0 11.8557757009}
editPin -pin {s_axi_awaddr[31]} -layer M3 -assign {0.0 13.5697196262}
editPin -pin {s_axi_awaddr[30]} -layer M3 -assign {0.0 15.2836635514}
editPin -pin {s_axi_awaddr[29]} -layer M3 -assign {0.0 16.9976074766}
editPin -pin {s_axi_awaddr[28]} -layer M3 -assign {0.0 18.7115514018}
editPin -pin {s_axi_awaddr[27]} -layer M3 -assign {0.0 20.4254953271}
editPin -pin {s_axi_awaddr[26]} -layer M3 -assign {0.0 22.1394392523}
editPin -pin {s_axi_awaddr[25]} -layer M3 -assign {0.0 23.8533831775}
editPin -pin {s_axi_awaddr[24]} -layer M3 -assign {0.0 25.5673271028}
editPin -pin {s_axi_awaddr[23]} -layer M3 -assign {0.0 27.281271028}
editPin -pin {s_axi_awaddr[22]} -layer M3 -assign {0.0 28.9952149532}
editPin -pin {s_axi_awaddr[21]} -layer M3 -assign {0.0 30.7091588784}
editPin -pin {s_axi_awaddr[20]} -layer M3 -assign {0.0 32.4231028037}
editPin -pin {s_axi_awaddr[19]} -layer M3 -assign {0.0 34.1370467289}
editPin -pin {s_axi_awaddr[18]} -layer M3 -assign {0.0 35.8509906541}
editPin -pin {s_axi_awaddr[17]} -layer M3 -assign {0.0 37.5649345794}
editPin -pin {s_axi_awaddr[16]} -layer M3 -assign {0.0 39.2788785046}
editPin -pin {s_axi_awaddr[15]} -layer M3 -assign {0.0 40.9928224298}
editPin -pin {s_axi_awaddr[14]} -layer M3 -assign {0.0 42.7067663551}
editPin -pin {s_axi_awaddr[13]} -layer M3 -assign {0.0 44.4207102803}
editPin -pin {s_axi_awaddr[12]} -layer M3 -assign {0.0 46.1346542055}
editPin -pin {s_axi_awaddr[11]} -layer M3 -assign {0.0 47.8485981307}
editPin -pin {s_axi_awaddr[10]} -layer M3 -assign {0.0 49.562542056}
editPin -pin {s_axi_awaddr[9]} -layer M3 -assign {0.0 51.2764859812}
editPin -pin {s_axi_awaddr[8]} -layer M3 -assign {0.0 52.9904299064}
editPin -pin {s_axi_awaddr[7]} -layer M3 -assign {0.0 54.7043738317}
editPin -pin {s_axi_awaddr[6]} -layer M3 -assign {0.0 56.4183177569}
editPin -pin {s_axi_awaddr[5]} -layer M3 -assign {0.0 58.1322616821}
editPin -pin {s_axi_awaddr[4]} -layer M3 -assign {0.0 59.8462056074}
editPin -pin {s_axi_awaddr[3]} -layer M3 -assign {0.0 61.5601495326}
editPin -pin {s_axi_awaddr[2]} -layer M3 -assign {0.0 63.2740934578}
editPin -pin {s_axi_awaddr[1]} -layer M3 -assign {0.0 64.988037383}
editPin -pin {s_axi_awaddr[0]} -layer M3 -assign {0.0 66.7019813083}
editPin -pin {s_axi_awlen[7]} -layer M3 -assign {0.0 68.4159252335}
editPin -pin {s_axi_awlen[6]} -layer M3 -assign {0.0 70.1298691587}
editPin -pin {s_axi_awlen[5]} -layer M3 -assign {0.0 71.843813084}
editPin -pin {s_axi_awlen[4]} -layer M3 -assign {0.0 73.5577570092}
editPin -pin {s_axi_awlen[3]} -layer M3 -assign {0.0 75.2717009344}
editPin -pin {s_axi_awlen[2]} -layer M3 -assign {0.0 76.9856448597}
editPin -pin {s_axi_awlen[1]} -layer M3 -assign {0.0 78.6995887849}
editPin -pin {s_axi_awlen[0]} -layer M3 -assign {0.0 80.4135327101}
editPin -pin {s_axi_awsize[2]} -layer M3 -assign {0.0 82.1274766353}
editPin -pin {s_axi_awsize[1]} -layer M3 -assign {0.0 83.8414205606}
editPin -pin {s_axi_awsize[0]} -layer M3 -assign {0.0 85.5553644858}
editPin -pin {s_axi_awburst[1]} -layer M3 -assign {0.0 87.269308411}
editPin -pin {s_axi_awburst[0]} -layer M3 -assign {0.0 88.9832523363}
editPin -pin s_axi_awlock -layer M3 -assign {0.0 90.6971962615}
editPin -pin {s_axi_awcache[3]} -layer M3 -assign {0.0 92.4111401867}
editPin -pin {s_axi_awcache[2]} -layer M3 -assign {0.0 94.125084112}
editPin -pin {s_axi_awcache[1]} -layer M3 -assign {0.0 95.8390280372}
editPin -pin {s_axi_awcache[0]} -layer M3 -assign {0.0 97.5529719624}
editPin -pin {s_axi_awprot[2]} -layer M3 -assign {0.0 99.2669158877}
editPin -pin {s_axi_awprot[1]} -layer M3 -assign {0.0 100.980859813}
editPin -pin {s_axi_awprot[0]} -layer M3 -assign {0.0 102.694803738}
editPin -pin {s_axi_awqos[3]} -layer M3 -assign {0.0 104.408747663}
editPin -pin {s_axi_awqos[2]} -layer M3 -assign {0.0 106.122691589}
editPin -pin {s_axi_awqos[1]} -layer M3 -assign {0.0 107.836635514}
editPin -pin {s_axi_awqos[0]} -layer M3 -assign {0.0 109.550579439}
editPin -pin {s_axi_awregion[3]} -layer M3 -assign {0.0 111.264523364}
editPin -pin {s_axi_awregion[2]} -layer M3 -assign {0.0 112.978467289}
editPin -pin {s_axi_awregion[1]} -layer M3 -assign {0.0 114.692411215}
editPin -pin {s_axi_awregion[0]} -layer M3 -assign {0.0 116.40635514}
editPin -pin s_axi_awvalid -layer M3 -assign {0.0 118.120299065}
editPin -pin s_axi_awready -layer M3 -assign {0.0 119.83424299}
editPin -pin {s_axi_wdata[31]} -layer M3 -assign {0.0 121.548186916}
editPin -pin {s_axi_wdata[30]} -layer M3 -assign {0.0 123.262130841}
editPin -pin {s_axi_wdata[29]} -layer M3 -assign {0.0 124.976074766}
editPin -pin {s_axi_wdata[28]} -layer M3 -assign {0.0 126.690018691}
editPin -pin {s_axi_wdata[27]} -layer M3 -assign {0.0 128.403962617}
editPin -pin {s_axi_wdata[26]} -layer M3 -assign {0.0 130.117906542}
editPin -pin {s_axi_wdata[25]} -layer M3 -assign {0.0 131.831850467}
editPin -pin {s_axi_wdata[24]} -layer M3 -assign {0.0 133.545794392}
editPin -pin {s_axi_wdata[23]} -layer M3 -assign {0.0 135.259738317}
editPin -pin {s_axi_wdata[22]} -layer M3 -assign {0.0 136.973682243}
editPin -pin {s_axi_wdata[21]} -layer M3 -assign {0.0 138.687626168}
editPin -pin {s_axi_wdata[20]} -layer M3 -assign {0.0 140.401570093}
editPin -pin {s_axi_wdata[19]} -layer M3 -assign {0.0 142.115514018}
editPin -pin {s_axi_wdata[18]} -layer M3 -assign {0.0 143.829457944}
editPin -pin {s_axi_wdata[17]} -layer M3 -assign {0.0 145.543401869}
editPin -pin {s_axi_wdata[16]} -layer M3 -assign {0.0 147.257345794}
editPin -pin {s_axi_wdata[15]} -layer M3 -assign {0.0 148.971289719}
editPin -pin {s_axi_wdata[14]} -layer M3 -assign {0.0 150.685233645}
editPin -pin {s_axi_wdata[13]} -layer M3 -assign {0.0 152.39917757}
editPin -pin {s_axi_wdata[12]} -layer M3 -assign {0.0 154.113121495}
editPin -pin {s_axi_wdata[11]} -layer M3 -assign {0.0 155.82706542}
editPin -pin {s_axi_wdata[10]} -layer M3 -assign {0.0 157.541009345}
editPin -pin {s_axi_wdata[9]} -layer M3 -assign {0.0 159.254953271}
editPin -pin {s_axi_wdata[8]} -layer M3 -assign {0.0 160.968897196}
editPin -pin {s_axi_wdata[7]} -layer M3 -assign {0.0 162.682841121}
editPin -pin {s_axi_wdata[6]} -layer M3 -assign {0.0 164.396785046}
editPin -pin {s_axi_wdata[5]} -layer M3 -assign {0.0 166.110728972}
editPin -pin {s_axi_wdata[4]} -layer M3 -assign {0.0 167.824672897}
editPin -pin {s_axi_wdata[3]} -layer M3 -assign {0.0 169.538616822}
editPin -pin {s_axi_wdata[2]} -layer M3 -assign {0.0 171.252560747}
editPin -pin {s_axi_wdata[1]} -layer M3 -assign {0.0 172.966504673}
editPin -pin {s_axi_wdata[0]} -layer M3 -assign {0.0 174.680448598}
editPin -pin {s_axi_wstrb[3]} -layer M3 -assign {0.0 176.394392523}
editPin -pin {s_axi_wstrb[2]} -layer M3 -assign {0.0 178.108336448}
editPin -pin {s_axi_wstrb[1]} -layer M3 -assign {0.0 179.822280373}
editPin -pin {s_axi_wstrb[0]} -layer M3 -assign {0.0 181.536224299}
editPin -pin s_axi_wlast -layer M3 -assign {0.0 183.250168224}
editPin -pin s_axi_wvalid -layer M3 -assign {0.0 184.964112149}
editPin -pin s_axi_wready -layer M3 -assign {0.0 186.678056074}
editPin -pin {s_axi_arid[4]} -layer M3 -assign {193.536 5.0}
editPin -pin {s_axi_arid[3]} -layer M3 -assign {193.536 6.6672}
editPin -pin {s_axi_arid[2]} -layer M3 -assign {193.536 8.3344}
editPin -pin {s_axi_arid[1]} -layer M3 -assign {193.536 10.0016}
editPin -pin {s_axi_arid[0]} -layer M3 -assign {193.536 11.6688}
editPin -pin {s_axi_araddr[31]} -layer M3 -assign {193.536 13.336}
editPin -pin {s_axi_araddr[30]} -layer M3 -assign {193.536 15.0032}
editPin -pin {s_axi_araddr[29]} -layer M3 -assign {193.536 16.6704}
editPin -pin {s_axi_araddr[28]} -layer M3 -assign {193.536 18.3376}
editPin -pin {s_axi_araddr[27]} -layer M3 -assign {193.536 20.0048}
editPin -pin {s_axi_araddr[26]} -layer M3 -assign {193.536 21.672}
editPin -pin {s_axi_araddr[25]} -layer M3 -assign {193.536 23.3392}
editPin -pin {s_axi_araddr[24]} -layer M3 -assign {193.536 25.0064}
editPin -pin {s_axi_araddr[23]} -layer M3 -assign {193.536 26.6736}
editPin -pin {s_axi_araddr[22]} -layer M3 -assign {193.536 28.3408}
editPin -pin {s_axi_araddr[21]} -layer M3 -assign {193.536 30.008}
editPin -pin {s_axi_araddr[20]} -layer M3 -assign {193.536 31.6752}
editPin -pin {s_axi_araddr[19]} -layer M3 -assign {193.536 33.3424}
editPin -pin {s_axi_araddr[18]} -layer M3 -assign {193.536 35.0096}
editPin -pin {s_axi_araddr[17]} -layer M3 -assign {193.536 36.6768}
editPin -pin {s_axi_araddr[16]} -layer M3 -assign {193.536 38.344}
editPin -pin {s_axi_araddr[15]} -layer M3 -assign {193.536 40.0112}
editPin -pin {s_axi_araddr[14]} -layer M3 -assign {193.536 41.6784}
editPin -pin {s_axi_araddr[13]} -layer M3 -assign {193.536 43.3456}
editPin -pin {s_axi_araddr[12]} -layer M3 -assign {193.536 45.0128}
editPin -pin {s_axi_araddr[11]} -layer M3 -assign {193.536 46.68}
editPin -pin {s_axi_araddr[10]} -layer M3 -assign {193.536 48.3472}
editPin -pin {s_axi_araddr[9]} -layer M3 -assign {193.536 50.0144}
editPin -pin {s_axi_araddr[8]} -layer M3 -assign {193.536 51.6816}
editPin -pin {s_axi_araddr[7]} -layer M3 -assign {193.536 53.3488}
editPin -pin {s_axi_araddr[6]} -layer M3 -assign {193.536 55.016}
editPin -pin {s_axi_araddr[5]} -layer M3 -assign {193.536 56.6832}
editPin -pin {s_axi_araddr[4]} -layer M3 -assign {193.536 58.3504}
editPin -pin {s_axi_araddr[3]} -layer M3 -assign {193.536 60.0176}
editPin -pin {s_axi_araddr[2]} -layer M3 -assign {193.536 61.6848}
editPin -pin {s_axi_araddr[1]} -layer M3 -assign {193.536 63.352}
editPin -pin {s_axi_araddr[0]} -layer M3 -assign {193.536 65.0192}
editPin -pin {s_axi_arlen[7]} -layer M3 -assign {193.536 66.6864}
editPin -pin {s_axi_arlen[6]} -layer M3 -assign {193.536 68.3536}
editPin -pin {s_axi_arlen[5]} -layer M3 -assign {193.536 70.0208}
editPin -pin {s_axi_arlen[4]} -layer M3 -assign {193.536 71.688}
editPin -pin {s_axi_arlen[3]} -layer M3 -assign {193.536 73.3552}
editPin -pin {s_axi_arlen[2]} -layer M3 -assign {193.536 75.0224}
editPin -pin {s_axi_arlen[1]} -layer M3 -assign {193.536 76.6896}
editPin -pin {s_axi_arlen[0]} -layer M3 -assign {193.536 78.3568}
editPin -pin {s_axi_arsize[2]} -layer M3 -assign {193.536 80.024}
editPin -pin {s_axi_arsize[1]} -layer M3 -assign {193.536 81.6912}
editPin -pin {s_axi_arsize[0]} -layer M3 -assign {193.536 83.3584}
editPin -pin {s_axi_arburst[1]} -layer M3 -assign {193.536 85.0256}
editPin -pin {s_axi_arburst[0]} -layer M3 -assign {193.536 86.6928}
editPin -pin s_axi_arlock -layer M3 -assign {193.536 88.36}
editPin -pin {s_axi_arcache[3]} -layer M3 -assign {193.536 90.0272}
editPin -pin {s_axi_arcache[2]} -layer M3 -assign {193.536 91.6944}
editPin -pin {s_axi_arcache[1]} -layer M3 -assign {193.536 93.3616}
editPin -pin {s_axi_arcache[0]} -layer M3 -assign {193.536 95.0288}
editPin -pin {s_axi_arprot[2]} -layer M3 -assign {193.536 96.696}
editPin -pin {s_axi_arprot[1]} -layer M3 -assign {193.536 98.3632}
editPin -pin {s_axi_arprot[0]} -layer M3 -assign {193.536 100.0304}
editPin -pin {s_axi_arqos[3]} -layer M3 -assign {193.536 101.6976}
editPin -pin {s_axi_arqos[2]} -layer M3 -assign {193.536 103.3648}
editPin -pin {s_axi_arqos[1]} -layer M3 -assign {193.536 105.032}
editPin -pin {s_axi_arqos[0]} -layer M3 -assign {193.536 106.6992}
editPin -pin {s_axi_arregion[3]} -layer M3 -assign {193.536 108.3664}
editPin -pin {s_axi_arregion[2]} -layer M3 -assign {193.536 110.0336}
editPin -pin {s_axi_arregion[1]} -layer M3 -assign {193.536 111.7008}
editPin -pin {s_axi_arregion[0]} -layer M3 -assign {193.536 113.368}
editPin -pin s_axi_arvalid -layer M3 -assign {193.536 115.0352}
editPin -pin s_axi_arready -layer M3 -assign {193.536 116.7024}
editPin -pin {s_axi_rid[4]} -layer M3 -assign {193.536 118.3696}
editPin -pin {s_axi_rid[3]} -layer M3 -assign {193.536 120.0368}
editPin -pin {s_axi_rid[2]} -layer M3 -assign {193.536 121.704}
editPin -pin {s_axi_rid[1]} -layer M3 -assign {193.536 123.3712}
editPin -pin {s_axi_rid[0]} -layer M3 -assign {193.536 125.0384}
editPin -pin {s_axi_rdata[31]} -layer M3 -assign {193.536 126.7056}
editPin -pin {s_axi_rdata[30]} -layer M3 -assign {193.536 128.3728}
editPin -pin {s_axi_rdata[29]} -layer M3 -assign {193.536 130.04}
editPin -pin {s_axi_rdata[28]} -layer M3 -assign {193.536 131.7072}
editPin -pin {s_axi_rdata[27]} -layer M3 -assign {193.536 133.3744}
editPin -pin {s_axi_rdata[26]} -layer M3 -assign {193.536 135.0416}
editPin -pin {s_axi_rdata[25]} -layer M3 -assign {193.536 136.7088}
editPin -pin {s_axi_rdata[24]} -layer M3 -assign {193.536 138.376}
editPin -pin {s_axi_rdata[23]} -layer M3 -assign {193.536 140.0432}
editPin -pin {s_axi_rdata[22]} -layer M3 -assign {193.536 141.7104}
editPin -pin {s_axi_rdata[21]} -layer M3 -assign {193.536 143.3776}
editPin -pin {s_axi_rdata[20]} -layer M3 -assign {193.536 145.0448}
editPin -pin {s_axi_rdata[19]} -layer M3 -assign {193.536 146.712}
editPin -pin {s_axi_rdata[18]} -layer M3 -assign {193.536 148.3792}
editPin -pin {s_axi_rdata[17]} -layer M3 -assign {193.536 150.0464}
editPin -pin {s_axi_rdata[16]} -layer M3 -assign {193.536 151.7136}
editPin -pin {s_axi_rdata[15]} -layer M3 -assign {193.536 153.3808}
editPin -pin {s_axi_rdata[14]} -layer M3 -assign {193.536 155.048}
editPin -pin {s_axi_rdata[13]} -layer M3 -assign {193.536 156.7152}
editPin -pin {s_axi_rdata[12]} -layer M3 -assign {193.536 158.3824}
editPin -pin {s_axi_rdata[11]} -layer M3 -assign {193.536 160.0496}
editPin -pin {s_axi_rdata[10]} -layer M3 -assign {193.536 161.7168}
editPin -pin {s_axi_rdata[9]} -layer M3 -assign {193.536 163.384}
editPin -pin {s_axi_rdata[8]} -layer M3 -assign {193.536 165.0512}
editPin -pin {s_axi_rdata[7]} -layer M3 -assign {193.536 166.7184}
editPin -pin {s_axi_rdata[6]} -layer M3 -assign {193.536 168.3856}
editPin -pin {s_axi_rdata[5]} -layer M3 -assign {193.536 170.0528}
editPin -pin {s_axi_rdata[4]} -layer M3 -assign {193.536 171.72}
editPin -pin {s_axi_rdata[3]} -layer M3 -assign {193.536 173.3872}
editPin -pin {s_axi_rdata[2]} -layer M3 -assign {193.536 175.0544}
editPin -pin {s_axi_rdata[1]} -layer M3 -assign {193.536 176.7216}
editPin -pin {s_axi_rdata[0]} -layer M3 -assign {193.536 178.3888}
editPin -pin {s_axi_rresp[1]} -layer M3 -assign {193.536 180.056}
editPin -pin {s_axi_rresp[0]} -layer M3 -assign {193.536 181.7232}
editPin -pin s_axi_rlast -layer M3 -assign {193.536 183.3904}
editPin -pin s_axi_rvalid -layer M3 -assign {193.536 185.0576}
editPin -pin s_axi_rready -layer M3 -assign {193.536 186.7248}
editPin -pin {s_axi_bid[4]} -layer M4 -assign {5.0 193.392}
editPin -pin {s_axi_bid[3]} -layer M4 -assign {25.3928888889 193.392}
editPin -pin {s_axi_bid[2]} -layer M4 -assign {45.7857777778 193.392}
editPin -pin {s_axi_bid[1]} -layer M4 -assign {66.1786666667 193.392}
editPin -pin {s_axi_bid[0]} -layer M4 -assign {86.5715555556 193.392}
editPin -pin {s_axi_bresp[1]} -layer M4 -assign {106.964444445 193.392}
editPin -pin {s_axi_bresp[0]} -layer M4 -assign {127.357333333 193.392}
editPin -pin s_axi_bvalid -layer M4 -assign {147.750222222 193.392}
editPin -pin s_axi_bready -layer M4 -assign {168.143111111 193.392}
editPin -pin clk -layer M4 -assign {66.1786666667 0.0}
editPin -pin rst_n -layer M4 -assign {127.357333333 0.0}
setPinAssignMode -pinEditInBatch false
setPlaceMode -reset
setPlaceMode -place_global_uniform_density true -place_global_module_aware_spare true -place_global_auto_blockage_in_channel soft -place_detail_preroute_as_obs {2 3} -place_global_cong_effort high -place_design_refine_macro true
addWellTap -cell TAPCELL_ASAP7_75t_R -cellInterval 25 -prefix WELLTAP
place_design
refinePlace
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil.rpt
create_route_type -name leaf_rule -bottom_preferred_layer M2 -top_preferred_layer M3
create_route_type -name trunk_rule -shield_net VSS -bottom_preferred_layer M3 -top_preferred_layer M4
create_route_type -name top_rule -shield_net VSS -bottom_preferred_layer M5 -top_preferred_layer M6
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
create_ccopt_clock_tree_spec -filename outputs/ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property sink_type -pin {s_axi_rdata[0]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[0]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[10]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[10]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[11]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[11]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[12]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[12]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[13]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[13]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[14]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[14]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[15]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[15]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[16]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[16]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[17]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[17]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[18]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[18]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[19]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[19]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[1]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[1]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[20]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[20]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[21]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[21]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[22]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[22]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[23]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[23]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[24]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[24]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[25]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[25]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[26]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[26]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[27]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[27]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[28]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[28]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[29]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[29]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[2]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[2]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[30]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[30]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[31]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[31]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[3]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[3]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[4]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[4]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[5]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[5]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[6]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[6]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[7]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[7]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[8]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[8]} {implicit design_io}
set_ccopt_property sink_type -pin {s_axi_rdata[9]} ignore
set_ccopt_property sink_type_reasons -pin {s_axi_rdata[9]} {implicit design_io}
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk 50.000
set_ccopt_property clock_period -pin clk 2000
create_ccopt_generated_clock_tree -name clk<1> -source {u_sram_macro_sram_banks[0].u_bank/dataout[17]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<1> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<1> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[17]} auto
create_ccopt_generated_clock_tree -name clk<2> -source {u_sram_macro_sram_banks[0].u_bank/dataout[18]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<2> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<2> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[18]} auto
create_ccopt_generated_clock_tree -name clk<3> -source {u_sram_macro_sram_banks[0].u_bank/dataout[19]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<3> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<3> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[19]} auto
create_ccopt_generated_clock_tree -name clk<4> -source {u_sram_macro_sram_banks[0].u_bank/dataout[20]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<4> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<4> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[20]} auto
create_ccopt_generated_clock_tree -name clk<5> -source {u_sram_macro_sram_banks[0].u_bank/dataout[21]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<5> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<5> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[21]} auto
create_ccopt_generated_clock_tree -name clk<6> -source {u_sram_macro_sram_banks[0].u_bank/dataout[22]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<6> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<6> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[22]} auto
create_ccopt_generated_clock_tree -name clk<7> -source {u_sram_macro_sram_banks[0].u_bank/dataout[23]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<7> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<7> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[23]} auto
create_ccopt_generated_clock_tree -name clk<8> -source {u_sram_macro_sram_banks[0].u_bank/dataout[24]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<8> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<8> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[24]} auto
create_ccopt_generated_clock_tree -name clk<9> -source {u_sram_macro_sram_banks[0].u_bank/dataout[25]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<9> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<9> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[25]} auto
create_ccopt_generated_clock_tree -name clk<10> -source {u_sram_macro_sram_banks[0].u_bank/dataout[26]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<10> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<10> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[26]} auto
create_ccopt_generated_clock_tree -name clk<11> -source {u_sram_macro_sram_banks[0].u_bank/dataout[27]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<11> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<11> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[27]} auto
create_ccopt_generated_clock_tree -name clk<12> -source {u_sram_macro_sram_banks[0].u_bank/dataout[28]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<12> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<12> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[28]} auto
create_ccopt_generated_clock_tree -name clk<13> -source {u_sram_macro_sram_banks[0].u_bank/dataout[29]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<13> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<13> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[29]} auto
create_ccopt_generated_clock_tree -name clk<14> -source {u_sram_macro_sram_banks[0].u_bank/dataout[30]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<14> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<14> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[30]} auto
create_ccopt_generated_clock_tree -name clk<15> -source {u_sram_macro_sram_banks[0].u_bank/dataout[31]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<15> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<15> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[31]} auto
create_ccopt_generated_clock_tree -name clk<16> -source {u_sram_macro_sram_banks[0].u_bank/dataout[7]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<16> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<16> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[7]} auto
create_ccopt_generated_clock_tree -name clk<17> -source {u_sram_macro_sram_banks[0].u_bank/dataout[15]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<17> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<17> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[15]} auto
create_ccopt_generated_clock_tree -name clk<18> -source {u_sram_macro_sram_banks[0].u_bank/dataout[14]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<18> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<18> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[14]} auto
create_ccopt_generated_clock_tree -name clk<19> -source {u_sram_macro_sram_banks[0].u_bank/dataout[13]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<19> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<19> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[13]} auto
create_ccopt_generated_clock_tree -name clk<20> -source {u_sram_macro_sram_banks[0].u_bank/dataout[12]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<20> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<20> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[12]} auto
create_ccopt_generated_clock_tree -name clk<21> -source {u_sram_macro_sram_banks[0].u_bank/dataout[11]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<21> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<21> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[11]} auto
create_ccopt_generated_clock_tree -name clk<22> -source {u_sram_macro_sram_banks[0].u_bank/dataout[10]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<22> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<22> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[10]} auto
create_ccopt_generated_clock_tree -name clk<23> -source {u_sram_macro_sram_banks[0].u_bank/dataout[9]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<23> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<23> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[9]} auto
create_ccopt_generated_clock_tree -name clk<24> -source {u_sram_macro_sram_banks[0].u_bank/dataout[8]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<24> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<24> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[8]} auto
create_ccopt_generated_clock_tree -name clk<25> -source {u_sram_macro_sram_banks[0].u_bank/dataout[16]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<25> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<25> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[16]} auto
create_ccopt_generated_clock_tree -name clk<26> -source {u_sram_macro_sram_banks[0].u_bank/dataout[6]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<26> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<26> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[6]} auto
create_ccopt_generated_clock_tree -name clk<27> -source {u_sram_macro_sram_banks[0].u_bank/dataout[5]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<27> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<27> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[5]} auto
create_ccopt_generated_clock_tree -name clk<28> -source {u_sram_macro_sram_banks[0].u_bank/dataout[4]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<28> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<28> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[4]} auto
create_ccopt_generated_clock_tree -name clk<29> -source {u_sram_macro_sram_banks[0].u_bank/dataout[3]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<29> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<29> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[3]} auto
create_ccopt_generated_clock_tree -name clk<30> -source {u_sram_macro_sram_banks[0].u_bank/dataout[2]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<30> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<30> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[2]} auto
create_ccopt_generated_clock_tree -name clk<31> -source {u_sram_macro_sram_banks[0].u_bank/dataout[1]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<31> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<31> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[1]} auto
create_ccopt_generated_clock_tree -name clk<32> -source {u_sram_macro_sram_banks[0].u_bank/dataout[0]} -generated_by {{u_sram_macro_sram_banks[0].u_bank/clk}}
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<32> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<32> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_sram_banks[0].u_bank/dataout[0]} auto
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/constraint_typical -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/constraint_typical true
set_ccopt_property extracted_from_clock_name -skew_group clk/constraint_typical clk
set_ccopt_property extracted_from_constraint_mode_names -skew_group clk/constraint_typical {constraint_typical  }
set_ccopt_property extracted_from_delay_corners -skew_group clk/constraint_typical delay_corner_typical
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -prefix postCTS
optDesign -prefix postCTS -postCTS -setup -hold
setNanoRouteMode -reset
setNanoRouteMode -drouteFixAntenna true -routeInsertAntennaDiode true -routeInsertDiodeForClockNets true -routeAntennaCellName ANTENNA_ASAP7_75t_R -drouteAutoStop false -droutePostRouteSwapVia true -routeReserveSpaceForMultiCut true -routeWithSiDriven true
setFillerMode -core {FILLER_ASAP7_75t_R FILLER_ASAP7_75t_R_2 FILLER_ASAP7_75t_R_4} -honorPrerouteAsObs true
addFiller
routeDesign
routeDesign -viaOpt -wireOpt -trackOpt
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -reset -drouteEndIteration
setExtractRCMode -engine postRoute -effortLevel low -useShieldingInDetailMode true
deleteDanglingNet
optDesign -prefix postRoute -postRoute -setup -hold
setAnalysisMode -analysisType onChipVariation -cppr both
setExtractRCMode -engine postRoute -effortLevel low -useShieldingInDetailMode true
deleteDanglingNet
optDesign -postRoute -setup -hold -prefix postRoute
addFiller -cell {DECAPx10_ASAP7_75t_R DECAPx6_ASAP7_75t_R DECAPx4_ASAP7_75t_R} -prefix FILLER_DECAP_
addFiller -cell TAPCELL_ASAP7_75t_R -prefix FILLER_TAP_
addFiller -cell {FILLER_ASAP7_75t_R FILLER_ASAP7_75t_R_2 FILLER_ASAP7_75t_R_4} -prefix FILLER_
setMetalFill -layer M1 -maxWidth 3.36 -minWidth 0.14 -maxLength 16.8 -minLength 0.14 -decrement 0.14 -activeSpacing 1.5 -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer { M2 M3 } -maxWidth 3.36 -minWidth 0.155 -maxLength 16.8 -minLength 0.155 -decrement 0.155 -activeSpacing 1.5 -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50
setMetalFill -layer { M4 M5 M6 } -maxWidth 3.36 -minWidth 0.3 -maxLength 16.8 -minLength 0.3 -decrement 0.3 -activeSpacing 1.5 -gapSpacing 1.5 -maxDensity 70 -minDensity 30 -preferredDensity 50
addMetalFill -snap -squareShape
checkPlace ./verify_rpt/checkPlace.rpt
checkFPlan -reportUtil -outFile ./verify_rpt/reportUtil_postRoute.rpt
verifyConnectivity -type all -error 1000 -warning 50 -report ./verify_rpt/verifyConnectivity.rpt
verify_drc -report ./verify_rpt/verify_drc.rpt
report_power -hierarchy all -outfile ./reports/power.rpt
report_area -out_file ./reports/area.rpt
timeDesign -outDir ./timingReports -postRoute
summaryReport -noHtml -outfile ./summaryReport/main.htm.ascii
write_db saved/top_axi_ram_final.db
win
set enc_check_rename_command_name 1
saveDesign -mmmc2 saved/top_axi_ram_final.enc
extractRC
rcOut -spef ./outputs/innovus.spef -rc_corner rc_typical all_hold_analysis_views
writeTimingCon ./outputs/innovus.sdc
saveNetlist -excludeLeafCell ./outputs/top_axi_ram_pnr.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst ./outputs/top_axi_ram_pg.v
setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic -virtualConnection false -textSize 1
streamOut ./outputs/top_axi_ram.gds -mapFile ../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_4x.map -dieAreaAsBoundary -outputMacros
write_lef_abstract -noCutObs ./outputs/top_axi_ram.lef
extractRC
rcOut -spef ./outputs/innovus.spef -rc_corner rc_typical all_hold_analysis_views
rcOut -spef ./outputs/innovus.spef -rc_corner rc_typical
writeTimingCon ./outputs/innovus.sdc
saveNetlist -excludeLeafCell ./outputs/top_axi_ram_pnr.v
saveNetlist -excludeLeafCell -includePowerGround -includePhysicalInst ./outputs/top_axi_ram_pg.v
setStreamOutMode -labelAllPinShape true -pinTextOrientation automatic -virtualConnection false -textSize 1
streamOut ./outputs/top_axi_ram.gds -mapFile ../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_4x.map -dieAreaAsBoundary -outputMacros
streamOut ./outputs/top_axi_ram.gds -dieAreaAsBoundary -outputMacros
zoomBox -43.76300 -31.12750 211.25075 199.93475
zoomBox -23.40425 -13.51600 193.35750 182.88700
zoomBox -6.09925 1.45375 178.14825 168.39625
zoomBox 21.11275 24.99375 154.23175 145.60975
zoomBox 35.73925 41.32100 131.91775 128.46625
zoomBox 50.59000 57.79275 109.65550 111.31075
zoomBox 58.34750 65.39950 101.02250 104.06625
zoomBox 63.95250 70.89550 94.78525 98.83225
zoomBox 58.34750 65.39975 101.02250 104.06650
zoomBox 45.65675 52.95575 115.14550 115.91800
zoomBox 24.99125 32.69275 138.14225 135.21625
zoomBox 15.54050 23.42575 148.65925 144.04175
zoomBox -8.65875 -0.30250 175.58875 166.64000
zoomBox -24.04775 -15.39200 192.71400 181.01100
zoomBox -63.45175 -54.02950 236.56450 217.80850
streamOut ./outputs/top_axi_ram.gds -dieAreaAsBoundary -outputMacros
write_lef_abstract -noCutObs ./outputs/top_axi_ram.lef
