#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Apr  5 18:26:05 2026                
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
place_design -concurrent_macros
refine_macro_place
addHaloToBlock 2 2 2 2 -allMacro
setInstancePlacementStatus -allHardMacros -status fixed
setInstancePlacementStatus -name u_sram_macro -status fixed
setPinAssignMode -pinEditInBatch true
editPin -pin {s_axi_awid[4]} -layer M3 -assign {0.0 5.0}
editPin -pin {s_axi_awid[3]} -layer M3 -assign {0.0 6.69375700935}
editPin -pin {s_axi_awid[2]} -layer M3 -assign {0.0 8.3875140187}
editPin -pin {s_axi_awid[1]} -layer M3 -assign {0.0 10.0812710281}
editPin -pin {s_axi_awid[0]} -layer M3 -assign {0.0 11.7750280374}
editPin -pin {s_axi_awaddr[31]} -layer M3 -assign {0.0 13.4687850467}
editPin -pin {s_axi_awaddr[30]} -layer M3 -assign {0.0 15.1625420561}
editPin -pin {s_axi_awaddr[29]} -layer M3 -assign {0.0 16.8562990655}
editPin -pin {s_axi_awaddr[28]} -layer M3 -assign {0.0 18.5500560748}
editPin -pin {s_axi_awaddr[27]} -layer M3 -assign {0.0 20.2438130841}
editPin -pin {s_axi_awaddr[26]} -layer M3 -assign {0.0 21.9375700935}
editPin -pin {s_axi_awaddr[25]} -layer M3 -assign {0.0 23.6313271029}
editPin -pin {s_axi_awaddr[24]} -layer M3 -assign {0.0 25.3250841122}
editPin -pin {s_axi_awaddr[23]} -layer M3 -assign {0.0 27.0188411216}
editPin -pin {s_axi_awaddr[22]} -layer M3 -assign {0.0 28.7125981309}
editPin -pin {s_axi_awaddr[21]} -layer M3 -assign {0.0 30.4063551402}
editPin -pin {s_axi_awaddr[20]} -layer M3 -assign {0.0 32.1001121496}
editPin -pin {s_axi_awaddr[19]} -layer M3 -assign {0.0 33.793869159}
editPin -pin {s_axi_awaddr[18]} -layer M3 -assign {0.0 35.4876261683}
editPin -pin {s_axi_awaddr[17]} -layer M3 -assign {0.0 37.1813831776}
editPin -pin {s_axi_awaddr[16]} -layer M3 -assign {0.0 38.875140187}
editPin -pin {s_axi_awaddr[15]} -layer M3 -assign {0.0 40.5688971964}
editPin -pin {s_axi_awaddr[14]} -layer M3 -assign {0.0 42.2626542057}
editPin -pin {s_axi_awaddr[13]} -layer M3 -assign {0.0 43.9564112151}
editPin -pin {s_axi_awaddr[12]} -layer M3 -assign {0.0 45.6501682244}
editPin -pin {s_axi_awaddr[11]} -layer M3 -assign {0.0 47.3439252337}
editPin -pin {s_axi_awaddr[10]} -layer M3 -assign {0.0 49.0376822431}
editPin -pin {s_axi_awaddr[9]} -layer M3 -assign {0.0 50.7314392525}
editPin -pin {s_axi_awaddr[8]} -layer M3 -assign {0.0 52.4251962618}
editPin -pin {s_axi_awaddr[7]} -layer M3 -assign {0.0 54.1189532712}
editPin -pin {s_axi_awaddr[6]} -layer M3 -assign {0.0 55.8127102805}
editPin -pin {s_axi_awaddr[5]} -layer M3 -assign {0.0 57.5064672899}
editPin -pin {s_axi_awaddr[4]} -layer M3 -assign {0.0 59.2002242992}
editPin -pin {s_axi_awaddr[3]} -layer M3 -assign {0.0 60.8939813086}
editPin -pin {s_axi_awaddr[2]} -layer M3 -assign {0.0 62.5877383179}
editPin -pin {s_axi_awaddr[1]} -layer M3 -assign {0.0 64.2814953272}
editPin -pin {s_axi_awaddr[0]} -layer M3 -assign {0.0 65.9752523366}
editPin -pin {s_axi_awlen[7]} -layer M3 -assign {0.0 67.669009346}
editPin -pin {s_axi_awlen[6]} -layer M3 -assign {0.0 69.3627663553}
editPin -pin {s_axi_awlen[5]} -layer M3 -assign {0.0 71.0565233647}
editPin -pin {s_axi_awlen[4]} -layer M3 -assign {0.0 72.750280374}
editPin -pin {s_axi_awlen[3]} -layer M3 -assign {0.0 74.4440373834}
editPin -pin {s_axi_awlen[2]} -layer M3 -assign {0.0 76.1377943927}
editPin -pin {s_axi_awlen[1]} -layer M3 -assign {0.0 77.831551402}
editPin -pin {s_axi_awlen[0]} -layer M3 -assign {0.0 79.5253084114}
editPin -pin {s_axi_awsize[2]} -layer M3 -assign {0.0 81.2190654207}
editPin -pin {s_axi_awsize[1]} -layer M3 -assign {0.0 82.9128224301}
editPin -pin {s_axi_awsize[0]} -layer M3 -assign {0.0 84.6065794395}
editPin -pin {s_axi_awburst[1]} -layer M3 -assign {0.0 86.3003364488}
editPin -pin {s_axi_awburst[0]} -layer M3 -assign {0.0 87.9940934582}
editPin -pin s_axi_awlock -layer M3 -assign {0.0 89.6878504675}
editPin -pin {s_axi_awcache[3]} -layer M3 -assign {0.0 91.3816074769}
editPin -pin {s_axi_awcache[2]} -layer M3 -assign {0.0 93.0753644862}
editPin -pin {s_axi_awcache[1]} -layer M3 -assign {0.0 94.7691214956}
editPin -pin {s_axi_awcache[0]} -layer M3 -assign {0.0 96.4628785049}
editPin -pin {s_axi_awprot[2]} -layer M3 -assign {0.0 98.1566355142}
editPin -pin {s_axi_awprot[1]} -layer M3 -assign {0.0 99.8503925236}
editPin -pin {s_axi_awprot[0]} -layer M3 -assign {0.0 101.544149533}
editPin -pin {s_axi_awqos[3]} -layer M3 -assign {0.0 103.237906542}
editPin -pin {s_axi_awqos[2]} -layer M3 -assign {0.0 104.931663552}
editPin -pin {s_axi_awqos[1]} -layer M3 -assign {0.0 106.625420561}
editPin -pin {s_axi_awqos[0]} -layer M3 -assign {0.0 108.31917757}
editPin -pin {s_axi_awregion[3]} -layer M3 -assign {0.0 110.01293458}
editPin -pin {s_axi_awregion[2]} -layer M3 -assign {0.0 111.706691589}
editPin -pin {s_axi_awregion[1]} -layer M3 -assign {0.0 113.400448598}
editPin -pin {s_axi_awregion[0]} -layer M3 -assign {0.0 115.094205608}
editPin -pin s_axi_awvalid -layer M3 -assign {0.0 116.787962617}
editPin -pin s_axi_awready -layer M3 -assign {0.0 118.481719626}
editPin -pin {s_axi_wdata[31]} -layer M3 -assign {0.0 120.175476636}
editPin -pin {s_axi_wdata[30]} -layer M3 -assign {0.0 121.869233645}
editPin -pin {s_axi_wdata[29]} -layer M3 -assign {0.0 123.562990654}
editPin -pin {s_axi_wdata[28]} -layer M3 -assign {0.0 125.256747664}
editPin -pin {s_axi_wdata[27]} -layer M3 -assign {0.0 126.950504673}
editPin -pin {s_axi_wdata[26]} -layer M3 -assign {0.0 128.644261683}
editPin -pin {s_axi_wdata[25]} -layer M3 -assign {0.0 130.338018692}
editPin -pin {s_axi_wdata[24]} -layer M3 -assign {0.0 132.031775701}
editPin -pin {s_axi_wdata[23]} -layer M3 -assign {0.0 133.725532711}
editPin -pin {s_axi_wdata[22]} -layer M3 -assign {0.0 135.41928972}
editPin -pin {s_axi_wdata[21]} -layer M3 -assign {0.0 137.113046729}
editPin -pin {s_axi_wdata[20]} -layer M3 -assign {0.0 138.806803739}
editPin -pin {s_axi_wdata[19]} -layer M3 -assign {0.0 140.500560748}
editPin -pin {s_axi_wdata[18]} -layer M3 -assign {0.0 142.194317757}
editPin -pin {s_axi_wdata[17]} -layer M3 -assign {0.0 143.888074767}
editPin -pin {s_axi_wdata[16]} -layer M3 -assign {0.0 145.581831776}
editPin -pin {s_axi_wdata[15]} -layer M3 -assign {0.0 147.275588785}
editPin -pin {s_axi_wdata[14]} -layer M3 -assign {0.0 148.969345795}
editPin -pin {s_axi_wdata[13]} -layer M3 -assign {0.0 150.663102804}
editPin -pin {s_axi_wdata[12]} -layer M3 -assign {0.0 152.356859813}
editPin -pin {s_axi_wdata[11]} -layer M3 -assign {0.0 154.050616823}
editPin -pin {s_axi_wdata[10]} -layer M3 -assign {0.0 155.744373832}
editPin -pin {s_axi_wdata[9]} -layer M3 -assign {0.0 157.438130841}
editPin -pin {s_axi_wdata[8]} -layer M3 -assign {0.0 159.131887851}
editPin -pin {s_axi_wdata[7]} -layer M3 -assign {0.0 160.82564486}
editPin -pin {s_axi_wdata[6]} -layer M3 -assign {0.0 162.51940187}
editPin -pin {s_axi_wdata[5]} -layer M3 -assign {0.0 164.213158879}
editPin -pin {s_axi_wdata[4]} -layer M3 -assign {0.0 165.906915888}
editPin -pin {s_axi_wdata[3]} -layer M3 -assign {0.0 167.600672898}
editPin -pin {s_axi_wdata[2]} -layer M3 -assign {0.0 169.294429907}
editPin -pin {s_axi_wdata[1]} -layer M3 -assign {0.0 170.988186916}
editPin -pin {s_axi_wdata[0]} -layer M3 -assign {0.0 172.681943926}
editPin -pin {s_axi_wstrb[3]} -layer M3 -assign {0.0 174.375700935}
editPin -pin {s_axi_wstrb[2]} -layer M3 -assign {0.0 176.069457944}
editPin -pin {s_axi_wstrb[1]} -layer M3 -assign {0.0 177.763214954}
editPin -pin {s_axi_wstrb[0]} -layer M3 -assign {0.0 179.456971963}
editPin -pin s_axi_wlast -layer M3 -assign {0.0 181.150728972}
editPin -pin s_axi_wvalid -layer M3 -assign {0.0 182.844485982}
editPin -pin s_axi_wready -layer M3 -assign {0.0 184.538242991}
editPin -pin {s_axi_arid[4]} -layer M3 -assign {191.952 5.0}
editPin -pin {s_axi_arid[3]} -layer M3 -assign {191.952 6.64756363636}
editPin -pin {s_axi_arid[2]} -layer M3 -assign {191.952 8.29512727272}
editPin -pin {s_axi_arid[1]} -layer M3 -assign {191.952 9.94269090908}
editPin -pin {s_axi_arid[0]} -layer M3 -assign {191.952 11.5902545454}
editPin -pin {s_axi_araddr[31]} -layer M3 -assign {191.952 13.2378181818}
editPin -pin {s_axi_araddr[30]} -layer M3 -assign {191.952 14.8853818182}
editPin -pin {s_axi_araddr[29]} -layer M3 -assign {191.952 16.5329454545}
editPin -pin {s_axi_araddr[28]} -layer M3 -assign {191.952 18.1805090909}
editPin -pin {s_axi_araddr[27]} -layer M3 -assign {191.952 19.8280727272}
editPin -pin {s_axi_araddr[26]} -layer M3 -assign {191.952 21.4756363636}
editPin -pin {s_axi_araddr[25]} -layer M3 -assign {191.952 23.1232}
editPin -pin {s_axi_araddr[24]} -layer M3 -assign {191.952 24.7707636363}
editPin -pin {s_axi_araddr[23]} -layer M3 -assign {191.952 26.4183272727}
editPin -pin {s_axi_araddr[22]} -layer M3 -assign {191.952 28.065890909}
editPin -pin {s_axi_araddr[21]} -layer M3 -assign {191.952 29.7134545454}
editPin -pin {s_axi_araddr[20]} -layer M3 -assign {191.952 31.3610181818}
editPin -pin {s_axi_araddr[19]} -layer M3 -assign {191.952 33.0085818181}
editPin -pin {s_axi_araddr[18]} -layer M3 -assign {191.952 34.6561454545}
editPin -pin {s_axi_araddr[17]} -layer M3 -assign {191.952 36.3037090908}
editPin -pin {s_axi_araddr[16]} -layer M3 -assign {191.952 37.9512727272}
editPin -pin {s_axi_araddr[15]} -layer M3 -assign {191.952 39.5988363636}
editPin -pin {s_axi_araddr[14]} -layer M3 -assign {191.952 41.2463999999}
editPin -pin {s_axi_araddr[13]} -layer M3 -assign {191.952 42.8939636363}
editPin -pin {s_axi_araddr[12]} -layer M3 -assign {191.952 44.5415272726}
editPin -pin {s_axi_araddr[11]} -layer M3 -assign {191.952 46.189090909}
editPin -pin {s_axi_araddr[10]} -layer M3 -assign {191.952 47.8366545454}
editPin -pin {s_axi_araddr[9]} -layer M3 -assign {191.952 49.4842181817}
editPin -pin {s_axi_araddr[8]} -layer M3 -assign {191.952 51.1317818181}
editPin -pin {s_axi_araddr[7]} -layer M3 -assign {191.952 52.7793454544}
editPin -pin {s_axi_araddr[6]} -layer M3 -assign {191.952 54.4269090908}
editPin -pin {s_axi_araddr[5]} -layer M3 -assign {191.952 56.0744727272}
editPin -pin {s_axi_araddr[4]} -layer M3 -assign {191.952 57.7220363635}
editPin -pin {s_axi_araddr[3]} -layer M3 -assign {191.952 59.3695999999}
editPin -pin {s_axi_araddr[2]} -layer M3 -assign {191.952 61.0171636362}
editPin -pin {s_axi_araddr[1]} -layer M3 -assign {191.952 62.6647272726}
editPin -pin {s_axi_araddr[0]} -layer M3 -assign {191.952 64.312290909}
editPin -pin {s_axi_arlen[7]} -layer M3 -assign {191.952 65.9598545453}
editPin -pin {s_axi_arlen[6]} -layer M3 -assign {191.952 67.6074181817}
editPin -pin {s_axi_arlen[5]} -layer M3 -assign {191.952 69.254981818}
editPin -pin {s_axi_arlen[4]} -layer M3 -assign {191.952 70.9025454544}
editPin -pin {s_axi_arlen[3]} -layer M3 -assign {191.952 72.5501090908}
editPin -pin {s_axi_arlen[2]} -layer M3 -assign {191.952 74.1976727271}
editPin -pin {s_axi_arlen[1]} -layer M3 -assign {191.952 75.8452363635}
editPin -pin {s_axi_arlen[0]} -layer M3 -assign {191.952 77.4927999998}
editPin -pin {s_axi_arsize[2]} -layer M3 -assign {191.952 79.1403636362}
editPin -pin {s_axi_arsize[1]} -layer M3 -assign {191.952 80.7879272726}
editPin -pin {s_axi_arsize[0]} -layer M3 -assign {191.952 82.4354909089}
editPin -pin {s_axi_arburst[1]} -layer M3 -assign {191.952 84.0830545453}
editPin -pin {s_axi_arburst[0]} -layer M3 -assign {191.952 85.7306181816}
editPin -pin s_axi_arlock -layer M3 -assign {191.952 87.378181818}
editPin -pin {s_axi_arcache[3]} -layer M3 -assign {191.952 89.0257454544}
editPin -pin {s_axi_arcache[2]} -layer M3 -assign {191.952 90.6733090907}
editPin -pin {s_axi_arcache[1]} -layer M3 -assign {191.952 92.3208727271}
editPin -pin {s_axi_arcache[0]} -layer M3 -assign {191.952 93.9684363634}
editPin -pin {s_axi_arprot[2]} -layer M3 -assign {191.952 95.6159999998}
editPin -pin {s_axi_arprot[1]} -layer M3 -assign {191.952 97.2635636362}
editPin -pin {s_axi_arprot[0]} -layer M3 -assign {191.952 98.9111272725}
editPin -pin {s_axi_arqos[3]} -layer M3 -assign {191.952 100.558690909}
editPin -pin {s_axi_arqos[2]} -layer M3 -assign {191.952 102.206254545}
editPin -pin {s_axi_arqos[1]} -layer M3 -assign {191.952 103.853818182}
editPin -pin {s_axi_arqos[0]} -layer M3 -assign {191.952 105.501381818}
editPin -pin {s_axi_arregion[3]} -layer M3 -assign {191.952 107.148945454}
editPin -pin {s_axi_arregion[2]} -layer M3 -assign {191.952 108.796509091}
editPin -pin {s_axi_arregion[1]} -layer M3 -assign {191.952 110.444072727}
editPin -pin {s_axi_arregion[0]} -layer M3 -assign {191.952 112.091636363}
editPin -pin s_axi_arvalid -layer M3 -assign {191.952 113.7392}
editPin -pin s_axi_arready -layer M3 -assign {191.952 115.386763636}
editPin -pin {s_axi_rid[4]} -layer M3 -assign {191.952 117.034327272}
editPin -pin {s_axi_rid[3]} -layer M3 -assign {191.952 118.681890909}
editPin -pin {s_axi_rid[2]} -layer M3 -assign {191.952 120.329454545}
editPin -pin {s_axi_rid[1]} -layer M3 -assign {191.952 121.977018182}
editPin -pin {s_axi_rid[0]} -layer M3 -assign {191.952 123.624581818}
editPin -pin {s_axi_rdata[31]} -layer M3 -assign {191.952 125.272145454}
editPin -pin {s_axi_rdata[30]} -layer M3 -assign {191.952 126.919709091}
editPin -pin {s_axi_rdata[29]} -layer M3 -assign {191.952 128.567272727}
editPin -pin {s_axi_rdata[28]} -layer M3 -assign {191.952 130.214836363}
editPin -pin {s_axi_rdata[27]} -layer M3 -assign {191.952 131.8624}
editPin -pin {s_axi_rdata[26]} -layer M3 -assign {191.952 133.509963636}
editPin -pin {s_axi_rdata[25]} -layer M3 -assign {191.952 135.157527272}
editPin -pin {s_axi_rdata[24]} -layer M3 -assign {191.952 136.805090909}
editPin -pin {s_axi_rdata[23]} -layer M3 -assign {191.952 138.452654545}
editPin -pin {s_axi_rdata[22]} -layer M3 -assign {191.952 140.100218182}
editPin -pin {s_axi_rdata[21]} -layer M3 -assign {191.952 141.747781818}
editPin -pin {s_axi_rdata[20]} -layer M3 -assign {191.952 143.395345454}
editPin -pin {s_axi_rdata[19]} -layer M3 -assign {191.952 145.042909091}
editPin -pin {s_axi_rdata[18]} -layer M3 -assign {191.952 146.690472727}
editPin -pin {s_axi_rdata[17]} -layer M3 -assign {191.952 148.338036363}
editPin -pin {s_axi_rdata[16]} -layer M3 -assign {191.952 149.9856}
editPin -pin {s_axi_rdata[15]} -layer M3 -assign {191.952 151.633163636}
editPin -pin {s_axi_rdata[14]} -layer M3 -assign {191.952 153.280727272}
editPin -pin {s_axi_rdata[13]} -layer M3 -assign {191.952 154.928290909}
editPin -pin {s_axi_rdata[12]} -layer M3 -assign {191.952 156.575854545}
editPin -pin {s_axi_rdata[11]} -layer M3 -assign {191.952 158.223418181}
editPin -pin {s_axi_rdata[10]} -layer M3 -assign {191.952 159.870981818}
editPin -pin {s_axi_rdata[9]} -layer M3 -assign {191.952 161.518545454}
editPin -pin {s_axi_rdata[8]} -layer M3 -assign {191.952 163.166109091}
editPin -pin {s_axi_rdata[7]} -layer M3 -assign {191.952 164.813672727}
editPin -pin {s_axi_rdata[6]} -layer M3 -assign {191.952 166.461236363}
editPin -pin {s_axi_rdata[5]} -layer M3 -assign {191.952 168.1088}
editPin -pin {s_axi_rdata[4]} -layer M3 -assign {191.952 169.756363636}
editPin -pin {s_axi_rdata[3]} -layer M3 -assign {191.952 171.403927272}
editPin -pin {s_axi_rdata[2]} -layer M3 -assign {191.952 173.051490909}
editPin -pin {s_axi_rdata[1]} -layer M3 -assign {191.952 174.699054545}
editPin -pin {s_axi_rdata[0]} -layer M3 -assign {191.952 176.346618181}
editPin -pin {s_axi_rresp[1]} -layer M3 -assign {191.952 177.994181818}
editPin -pin {s_axi_rresp[0]} -layer M3 -assign {191.952 179.641745454}
editPin -pin s_axi_rlast -layer M3 -assign {191.952 181.289309091}
editPin -pin s_axi_rvalid -layer M3 -assign {191.952 182.936872727}
editPin -pin s_axi_rready -layer M3 -assign {191.952 184.584436363}
editPin -pin {s_axi_bid[4]} -layer M4 -assign {5.0 191.232}
editPin -pin {s_axi_bid[3]} -layer M4 -assign {25.2168888889 191.232}
editPin -pin {s_axi_bid[2]} -layer M4 -assign {45.4337777778 191.232}
editPin -pin {s_axi_bid[1]} -layer M4 -assign {65.6506666667 191.232}
editPin -pin {s_axi_bid[0]} -layer M4 -assign {85.8675555556 191.232}
editPin -pin {s_axi_bresp[1]} -layer M4 -assign {106.084444445 191.232}
editPin -pin {s_axi_bresp[0]} -layer M4 -assign {126.301333333 191.232}
editPin -pin s_axi_bvalid -layer M4 -assign {146.518222222 191.232}
editPin -pin s_axi_bready -layer M4 -assign {166.735111111 191.232}
editPin -pin clk -layer M4 -assign {65.6506666667 0.0}
editPin -pin rst_n -layer M4 -assign {126.301333333 0.0}
setPinAssignMode -pinEditInBatch false
setPinConstraint -corner_to_pin_distance 18
addRing -nets {VSS VDD} -follow io -offset 0 -width 0.8 -spacing 8.0 -layer {top M9 bottom M9 left M8 right M8}
createPGPin VSS -geom M8 0 0 0.8 0.8
createPGPin VDD -geom M8 8.8 8.8 9.6 9.6
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { ring stripe blockring }
sroute -nets { VSS VDD } -connect corePin -corePinCheckStdcellGeoms -allowJogging 0 -allowLayerChange 0
clearDrc
setAddStripeMode -break_at block_ring -allow_jog padcore_ring
addStripe -nets {VSS VDD} -layer M9 -direction horizontal -width 0.8 -spacing 8.0 -set_to_set_distance 34.56 -start_from bottom -start_offset 32.48
addStripe -nets {VSS VDD} -layer M8 -direction vertical -width 0.8 -spacing 8.0 -set_to_set_distance 34.56 -start_from left -start_offset 32.48
editTrim -nets {VSS VDD}
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
create_ccopt_generated_clock_tree -name clk<1> -source {u_sram_macro_u_sram_macro/dataout[17]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<1> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<1> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[17]} auto
create_ccopt_generated_clock_tree -name clk<2> -source {u_sram_macro_u_sram_macro/dataout[18]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<2> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<2> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[18]} auto
create_ccopt_generated_clock_tree -name clk<3> -source {u_sram_macro_u_sram_macro/dataout[19]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<3> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<3> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[19]} auto
create_ccopt_generated_clock_tree -name clk<4> -source {u_sram_macro_u_sram_macro/dataout[20]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<4> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<4> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[20]} auto
create_ccopt_generated_clock_tree -name clk<5> -source {u_sram_macro_u_sram_macro/dataout[21]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<5> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<5> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[21]} auto
create_ccopt_generated_clock_tree -name clk<6> -source {u_sram_macro_u_sram_macro/dataout[22]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<6> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<6> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[22]} auto
create_ccopt_generated_clock_tree -name clk<7> -source {u_sram_macro_u_sram_macro/dataout[23]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<7> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<7> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[23]} auto
create_ccopt_generated_clock_tree -name clk<8> -source {u_sram_macro_u_sram_macro/dataout[24]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<8> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<8> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[24]} auto
create_ccopt_generated_clock_tree -name clk<9> -source {u_sram_macro_u_sram_macro/dataout[25]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<9> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<9> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[25]} auto
create_ccopt_generated_clock_tree -name clk<10> -source {u_sram_macro_u_sram_macro/dataout[26]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<10> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<10> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[26]} auto
create_ccopt_generated_clock_tree -name clk<11> -source {u_sram_macro_u_sram_macro/dataout[27]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<11> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<11> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[27]} auto
create_ccopt_generated_clock_tree -name clk<12> -source {u_sram_macro_u_sram_macro/dataout[28]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<12> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<12> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[28]} auto
create_ccopt_generated_clock_tree -name clk<13> -source {u_sram_macro_u_sram_macro/dataout[29]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<13> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<13> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[29]} auto
create_ccopt_generated_clock_tree -name clk<14> -source {u_sram_macro_u_sram_macro/dataout[30]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<14> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<14> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[30]} auto
create_ccopt_generated_clock_tree -name clk<15> -source {u_sram_macro_u_sram_macro/dataout[31]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<15> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<15> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[31]} auto
create_ccopt_generated_clock_tree -name clk<16> -source {u_sram_macro_u_sram_macro/dataout[7]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<16> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<16> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[7]} auto
create_ccopt_generated_clock_tree -name clk<17> -source {u_sram_macro_u_sram_macro/dataout[15]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<17> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<17> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[15]} auto
create_ccopt_generated_clock_tree -name clk<18> -source {u_sram_macro_u_sram_macro/dataout[14]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<18> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<18> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[14]} auto
create_ccopt_generated_clock_tree -name clk<19> -source {u_sram_macro_u_sram_macro/dataout[13]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<19> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<19> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[13]} auto
create_ccopt_generated_clock_tree -name clk<20> -source {u_sram_macro_u_sram_macro/dataout[12]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<20> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<20> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[12]} auto
create_ccopt_generated_clock_tree -name clk<21> -source {u_sram_macro_u_sram_macro/dataout[11]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<21> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<21> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[11]} auto
create_ccopt_generated_clock_tree -name clk<22> -source {u_sram_macro_u_sram_macro/dataout[10]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<22> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<22> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[10]} auto
create_ccopt_generated_clock_tree -name clk<23> -source {u_sram_macro_u_sram_macro/dataout[9]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<23> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<23> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[9]} auto
create_ccopt_generated_clock_tree -name clk<24> -source {u_sram_macro_u_sram_macro/dataout[8]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<24> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<24> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[8]} auto
create_ccopt_generated_clock_tree -name clk<25> -source {u_sram_macro_u_sram_macro/dataout[16]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<25> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<25> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[16]} auto
create_ccopt_generated_clock_tree -name clk<26> -source {u_sram_macro_u_sram_macro/dataout[6]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<26> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<26> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[6]} auto
create_ccopt_generated_clock_tree -name clk<27> -source {u_sram_macro_u_sram_macro/dataout[5]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<27> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<27> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[5]} auto
create_ccopt_generated_clock_tree -name clk<28> -source {u_sram_macro_u_sram_macro/dataout[4]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<28> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<28> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[4]} auto
create_ccopt_generated_clock_tree -name clk<29> -source {u_sram_macro_u_sram_macro/dataout[3]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<29> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<29> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[3]} auto
create_ccopt_generated_clock_tree -name clk<30> -source {u_sram_macro_u_sram_macro/dataout[2]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<30> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<30> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[2]} auto
create_ccopt_generated_clock_tree -name clk<31> -source {u_sram_macro_u_sram_macro/dataout[1]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<31> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<31> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[1]} auto
create_ccopt_generated_clock_tree -name clk<32> -source {u_sram_macro_u_sram_macro/dataout[0]} -generated_by u_sram_macro_u_sram_macro/clk
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -early -clock_tree clk<32> 50.000
set_ccopt_property target_max_trans_sdc -delay_corner delay_corner_typical -late -clock_tree clk<32> 50.000
set_ccopt_property clock_period -pin {u_sram_macro_u_sram_macro/dataout[0]} auto
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
setNanoRouteMode -quiet -routeWithSiDriven true -routeWithTimingDriven true -routeWithSiPostRouteFix true -drouteFixAntenna true
routeDesign
verify_drc -report ./verify_rpt/drc.rpt
verifyConnectivity -type all -error 1000 -warning 50 -report ./verify_rpt/connectivity.rpt
optDesign -postRoute -setup -hold -prefix postRoute
win
set enc_check_rename_command_name 1
zoomBox -37.99900 -24.56875 193.45150 185.14325
zoomBox -109.86925 -62.38675 210.47750 227.87225
zoomBox -26.04825 -6.06950 205.40250 203.64275
zoomBox 58.16375 50.51025 200.30375 179.30000
zoomBox 42.59625 37.94525 209.81975 189.46275
zoomBox 24.28125 23.16300 221.01500 201.41900
zoomBox -22.61450 -14.68775 249.68125 232.03325
