#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Apr  5 12:42:00 2026                
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
set init_lef_file {../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_L_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SL_4x_220121a.lef ../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SRAM_4x_220121a.lef ../../Asap7/asap7/asap7_sram_0p0/generated/LEF/srambank_256x4x32_6t122.lef}
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
floorPlan -r 1.0 0.75 12 12 12 12
place_design -concurrent_macros
refine_macro_place
addHaloToBlock 2 2 2 2 -allMacro
setInstancePlacementStatus -allHardMacros -status fixed
setInstancePlacementStatus -name u_sram_macro -status fixed
setPinAssignMode -pinEditInBatch true
editPin -pin {s_axi_awid[4]} -layer M3 -assign {0.0 5.0}
editPin -pin {s_axi_awid[3]} -layer M3 -assign {0.0 5.60770093458}
editPin -pin {s_axi_awid[2]} -layer M3 -assign {0.0 6.21540186916}
editPin -pin {s_axi_awid[1]} -layer M3 -assign {0.0 6.82310280374}
editPin -pin {s_axi_awid[0]} -layer M3 -assign {0.0 7.43080373832}
editPin -pin {s_axi_awaddr[31]} -layer M3 -assign {0.0 8.03850467289}
editPin -pin {s_axi_awaddr[30]} -layer M3 -assign {0.0 8.64620560747}
editPin -pin {s_axi_awaddr[29]} -layer M3 -assign {0.0 9.25390654205}
editPin -pin {s_axi_awaddr[28]} -layer M3 -assign {0.0 9.86160747663}
editPin -pin {s_axi_awaddr[27]} -layer M3 -assign {0.0 10.4693084112}
editPin -pin {s_axi_awaddr[26]} -layer M3 -assign {0.0 11.0770093458}
editPin -pin {s_axi_awaddr[25]} -layer M3 -assign {0.0 11.6847102804}
editPin -pin {s_axi_awaddr[24]} -layer M3 -assign {0.0 12.2924112149}
editPin -pin {s_axi_awaddr[23]} -layer M3 -assign {0.0 12.9001121495}
editPin -pin {s_axi_awaddr[22]} -layer M3 -assign {0.0 13.5078130841}
editPin -pin {s_axi_awaddr[21]} -layer M3 -assign {0.0 14.1155140187}
editPin -pin {s_axi_awaddr[20]} -layer M3 -assign {0.0 14.7232149533}
editPin -pin {s_axi_awaddr[19]} -layer M3 -assign {0.0 15.3309158878}
editPin -pin {s_axi_awaddr[18]} -layer M3 -assign {0.0 15.9386168224}
editPin -pin {s_axi_awaddr[17]} -layer M3 -assign {0.0 16.546317757}
editPin -pin {s_axi_awaddr[16]} -layer M3 -assign {0.0 17.1540186916}
editPin -pin {s_axi_awaddr[15]} -layer M3 -assign {0.0 17.7617196262}
editPin -pin {s_axi_awaddr[14]} -layer M3 -assign {0.0 18.3694205607}
editPin -pin {s_axi_awaddr[13]} -layer M3 -assign {0.0 18.9771214953}
editPin -pin {s_axi_awaddr[12]} -layer M3 -assign {0.0 19.5848224299}
editPin -pin {s_axi_awaddr[11]} -layer M3 -assign {0.0 20.1925233645}
editPin -pin {s_axi_awaddr[10]} -layer M3 -assign {0.0 20.8002242991}
editPin -pin {s_axi_awaddr[9]} -layer M3 -assign {0.0 21.4079252336}
editPin -pin {s_axi_awaddr[8]} -layer M3 -assign {0.0 22.0156261682}
editPin -pin {s_axi_awaddr[7]} -layer M3 -assign {0.0 22.6233271028}
editPin -pin {s_axi_awaddr[6]} -layer M3 -assign {0.0 23.2310280374}
editPin -pin {s_axi_awaddr[5]} -layer M3 -assign {0.0 23.8387289719}
editPin -pin {s_axi_awaddr[4]} -layer M3 -assign {0.0 24.4464299065}
editPin -pin {s_axi_awaddr[3]} -layer M3 -assign {0.0 25.0541308411}
editPin -pin {s_axi_awaddr[2]} -layer M3 -assign {0.0 25.6618317757}
editPin -pin {s_axi_awaddr[1]} -layer M3 -assign {0.0 26.2695327103}
editPin -pin {s_axi_awaddr[0]} -layer M3 -assign {0.0 26.8772336448}
editPin -pin {s_axi_awlen[7]} -layer M3 -assign {0.0 27.4849345794}
editPin -pin {s_axi_awlen[6]} -layer M3 -assign {0.0 28.092635514}
editPin -pin {s_axi_awlen[5]} -layer M3 -assign {0.0 28.7003364486}
editPin -pin {s_axi_awlen[4]} -layer M3 -assign {0.0 29.3080373832}
editPin -pin {s_axi_awlen[3]} -layer M3 -assign {0.0 29.9157383177}
editPin -pin {s_axi_awlen[2]} -layer M3 -assign {0.0 30.5234392523}
editPin -pin {s_axi_awlen[1]} -layer M3 -assign {0.0 31.1311401869}
editPin -pin {s_axi_awlen[0]} -layer M3 -assign {0.0 31.7388411215}
editPin -pin {s_axi_awsize[2]} -layer M3 -assign {0.0 32.3465420561}
editPin -pin {s_axi_awsize[1]} -layer M3 -assign {0.0 32.9542429906}
editPin -pin {s_axi_awsize[0]} -layer M3 -assign {0.0 33.5619439252}
editPin -pin {s_axi_awburst[1]} -layer M3 -assign {0.0 34.1696448598}
editPin -pin {s_axi_awburst[0]} -layer M3 -assign {0.0 34.7773457944}
editPin -pin s_axi_awlock -layer M3 -assign {0.0 35.385046729}
editPin -pin {s_axi_awcache[3]} -layer M3 -assign {0.0 35.9927476635}
editPin -pin {s_axi_awcache[2]} -layer M3 -assign {0.0 36.6004485981}
editPin -pin {s_axi_awcache[1]} -layer M3 -assign {0.0 37.2081495327}
editPin -pin {s_axi_awcache[0]} -layer M3 -assign {0.0 37.8158504673}
editPin -pin {s_axi_awprot[2]} -layer M3 -assign {0.0 38.4235514018}
editPin -pin {s_axi_awprot[1]} -layer M3 -assign {0.0 39.0312523364}
editPin -pin {s_axi_awprot[0]} -layer M3 -assign {0.0 39.638953271}
editPin -pin {s_axi_awqos[3]} -layer M3 -assign {0.0 40.2466542056}
editPin -pin {s_axi_awqos[2]} -layer M3 -assign {0.0 40.8543551402}
editPin -pin {s_axi_awqos[1]} -layer M3 -assign {0.0 41.4620560747}
editPin -pin {s_axi_awqos[0]} -layer M3 -assign {0.0 42.0697570093}
editPin -pin {s_axi_awregion[3]} -layer M3 -assign {0.0 42.6774579439}
editPin -pin {s_axi_awregion[2]} -layer M3 -assign {0.0 43.2851588785}
editPin -pin {s_axi_awregion[1]} -layer M3 -assign {0.0 43.8928598131}
editPin -pin {s_axi_awregion[0]} -layer M3 -assign {0.0 44.5005607476}
editPin -pin s_axi_awvalid -layer M3 -assign {0.0 45.1082616822}
editPin -pin s_axi_awready -layer M3 -assign {0.0 45.7159626168}
editPin -pin {s_axi_wdata[31]} -layer M3 -assign {0.0 46.3236635514}
editPin -pin {s_axi_wdata[30]} -layer M3 -assign {0.0 46.931364486}
editPin -pin {s_axi_wdata[29]} -layer M3 -assign {0.0 47.5390654205}
editPin -pin {s_axi_wdata[28]} -layer M3 -assign {0.0 48.1467663551}
editPin -pin {s_axi_wdata[27]} -layer M3 -assign {0.0 48.7544672897}
editPin -pin {s_axi_wdata[26]} -layer M3 -assign {0.0 49.3621682243}
editPin -pin {s_axi_wdata[25]} -layer M3 -assign {0.0 49.9698691588}
editPin -pin {s_axi_wdata[24]} -layer M3 -assign {0.0 50.5775700934}
editPin -pin {s_axi_wdata[23]} -layer M3 -assign {0.0 51.185271028}
editPin -pin {s_axi_wdata[22]} -layer M3 -assign {0.0 51.7929719626}
editPin -pin {s_axi_wdata[21]} -layer M3 -assign {0.0 52.4006728972}
editPin -pin {s_axi_wdata[20]} -layer M3 -assign {0.0 53.0083738317}
editPin -pin {s_axi_wdata[19]} -layer M3 -assign {0.0 53.6160747663}
editPin -pin {s_axi_wdata[18]} -layer M3 -assign {0.0 54.2237757009}
editPin -pin {s_axi_wdata[17]} -layer M3 -assign {0.0 54.8314766355}
editPin -pin {s_axi_wdata[16]} -layer M3 -assign {0.0 55.4391775701}
editPin -pin {s_axi_wdata[15]} -layer M3 -assign {0.0 56.0468785046}
editPin -pin {s_axi_wdata[14]} -layer M3 -assign {0.0 56.6545794392}
editPin -pin {s_axi_wdata[13]} -layer M3 -assign {0.0 57.2622803738}
editPin -pin {s_axi_wdata[12]} -layer M3 -assign {0.0 57.8699813084}
editPin -pin {s_axi_wdata[11]} -layer M3 -assign {0.0 58.477682243}
editPin -pin {s_axi_wdata[10]} -layer M3 -assign {0.0 59.0853831775}
editPin -pin {s_axi_wdata[9]} -layer M3 -assign {0.0 59.6930841121}
editPin -pin {s_axi_wdata[8]} -layer M3 -assign {0.0 60.3007850467}
editPin -pin {s_axi_wdata[7]} -layer M3 -assign {0.0 60.9084859813}
editPin -pin {s_axi_wdata[6]} -layer M3 -assign {0.0 61.5161869158}
editPin -pin {s_axi_wdata[5]} -layer M3 -assign {0.0 62.1238878504}
editPin -pin {s_axi_wdata[4]} -layer M3 -assign {0.0 62.731588785}
editPin -pin {s_axi_wdata[3]} -layer M3 -assign {0.0 63.3392897196}
editPin -pin {s_axi_wdata[2]} -layer M3 -assign {0.0 63.9469906542}
editPin -pin {s_axi_wdata[1]} -layer M3 -assign {0.0 64.5546915887}
editPin -pin {s_axi_wdata[0]} -layer M3 -assign {0.0 65.1623925233}
editPin -pin {s_axi_wstrb[3]} -layer M3 -assign {0.0 65.7700934579}
editPin -pin {s_axi_wstrb[2]} -layer M3 -assign {0.0 66.3777943925}
editPin -pin {s_axi_wstrb[1]} -layer M3 -assign {0.0 66.9854953271}
editPin -pin {s_axi_wstrb[0]} -layer M3 -assign {0.0 67.5931962616}
editPin -pin s_axi_wlast -layer M3 -assign {0.0 68.2008971962}
editPin -pin s_axi_wvalid -layer M3 -assign {0.0 68.8085981308}
editPin -pin s_axi_wready -layer M3 -assign {0.0 69.4162990654}
editPin -pin {s_axi_arid[4]} -layer M3 -assign {76.752 5.0}
editPin -pin {s_axi_arid[3]} -layer M3 -assign {76.752 5.59112727273}
editPin -pin {s_axi_arid[2]} -layer M3 -assign {76.752 6.18225454545}
editPin -pin {s_axi_arid[1]} -layer M3 -assign {76.752 6.77338181818}
editPin -pin {s_axi_arid[0]} -layer M3 -assign {76.752 7.36450909091}
editPin -pin {s_axi_araddr[31]} -layer M3 -assign {76.752 7.95563636364}
editPin -pin {s_axi_araddr[30]} -layer M3 -assign {76.752 8.54676363636}
editPin -pin {s_axi_araddr[29]} -layer M3 -assign {76.752 9.13789090909}
editPin -pin {s_axi_araddr[28]} -layer M3 -assign {76.752 9.72901818182}
editPin -pin {s_axi_araddr[27]} -layer M3 -assign {76.752 10.3201454545}
editPin -pin {s_axi_araddr[26]} -layer M3 -assign {76.752 10.9112727273}
editPin -pin {s_axi_araddr[25]} -layer M3 -assign {76.752 11.5024}
editPin -pin {s_axi_araddr[24]} -layer M3 -assign {76.752 12.0935272727}
editPin -pin {s_axi_araddr[23]} -layer M3 -assign {76.752 12.6846545455}
editPin -pin {s_axi_araddr[22]} -layer M3 -assign {76.752 13.2757818182}
editPin -pin {s_axi_araddr[21]} -layer M3 -assign {76.752 13.8669090909}
editPin -pin {s_axi_araddr[20]} -layer M3 -assign {76.752 14.4580363636}
editPin -pin {s_axi_araddr[19]} -layer M3 -assign {76.752 15.0491636364}
editPin -pin {s_axi_araddr[18]} -layer M3 -assign {76.752 15.6402909091}
editPin -pin {s_axi_araddr[17]} -layer M3 -assign {76.752 16.2314181818}
editPin -pin {s_axi_araddr[16]} -layer M3 -assign {76.752 16.8225454545}
editPin -pin {s_axi_araddr[15]} -layer M3 -assign {76.752 17.4136727273}
editPin -pin {s_axi_araddr[14]} -layer M3 -assign {76.752 18.0048}
editPin -pin {s_axi_araddr[13]} -layer M3 -assign {76.752 18.5959272727}
editPin -pin {s_axi_araddr[12]} -layer M3 -assign {76.752 19.1870545454}
editPin -pin {s_axi_araddr[11]} -layer M3 -assign {76.752 19.7781818182}
editPin -pin {s_axi_araddr[10]} -layer M3 -assign {76.752 20.3693090909}
editPin -pin {s_axi_araddr[9]} -layer M3 -assign {76.752 20.9604363636}
editPin -pin {s_axi_araddr[8]} -layer M3 -assign {76.752 21.5515636364}
editPin -pin {s_axi_araddr[7]} -layer M3 -assign {76.752 22.1426909091}
editPin -pin {s_axi_araddr[6]} -layer M3 -assign {76.752 22.7338181818}
editPin -pin {s_axi_araddr[5]} -layer M3 -assign {76.752 23.3249454545}
editPin -pin {s_axi_araddr[4]} -layer M3 -assign {76.752 23.9160727273}
editPin -pin {s_axi_araddr[3]} -layer M3 -assign {76.752 24.5072}
editPin -pin {s_axi_araddr[2]} -layer M3 -assign {76.752 25.0983272727}
editPin -pin {s_axi_araddr[1]} -layer M3 -assign {76.752 25.6894545454}
editPin -pin {s_axi_araddr[0]} -layer M3 -assign {76.752 26.2805818182}
editPin -pin {s_axi_arlen[7]} -layer M3 -assign {76.752 26.8717090909}
editPin -pin {s_axi_arlen[6]} -layer M3 -assign {76.752 27.4628363636}
editPin -pin {s_axi_arlen[5]} -layer M3 -assign {76.752 28.0539636364}
editPin -pin {s_axi_arlen[4]} -layer M3 -assign {76.752 28.6450909091}
editPin -pin {s_axi_arlen[3]} -layer M3 -assign {76.752 29.2362181818}
editPin -pin {s_axi_arlen[2]} -layer M3 -assign {76.752 29.8273454545}
editPin -pin {s_axi_arlen[1]} -layer M3 -assign {76.752 30.4184727273}
editPin -pin {s_axi_arlen[0]} -layer M3 -assign {76.752 31.0096}
editPin -pin {s_axi_arsize[2]} -layer M3 -assign {76.752 31.6007272727}
editPin -pin {s_axi_arsize[1]} -layer M3 -assign {76.752 32.1918545454}
editPin -pin {s_axi_arsize[0]} -layer M3 -assign {76.752 32.7829818182}
editPin -pin {s_axi_arburst[1]} -layer M3 -assign {76.752 33.3741090909}
editPin -pin {s_axi_arburst[0]} -layer M3 -assign {76.752 33.9652363636}
editPin -pin s_axi_arlock -layer M3 -assign {76.752 34.5563636363}
editPin -pin {s_axi_arcache[3]} -layer M3 -assign {76.752 35.1474909091}
editPin -pin {s_axi_arcache[2]} -layer M3 -assign {76.752 35.7386181818}
editPin -pin {s_axi_arcache[1]} -layer M3 -assign {76.752 36.3297454545}
editPin -pin {s_axi_arcache[0]} -layer M3 -assign {76.752 36.9208727273}
editPin -pin {s_axi_arprot[2]} -layer M3 -assign {76.752 37.512}
editPin -pin {s_axi_arprot[1]} -layer M3 -assign {76.752 38.1031272727}
editPin -pin {s_axi_arprot[0]} -layer M3 -assign {76.752 38.6942545454}
editPin -pin {s_axi_arqos[3]} -layer M3 -assign {76.752 39.2853818182}
editPin -pin {s_axi_arqos[2]} -layer M3 -assign {76.752 39.8765090909}
editPin -pin {s_axi_arqos[1]} -layer M3 -assign {76.752 40.4676363636}
editPin -pin {s_axi_arqos[0]} -layer M3 -assign {76.752 41.0587636363}
editPin -pin {s_axi_arregion[3]} -layer M3 -assign {76.752 41.6498909091}
editPin -pin {s_axi_arregion[2]} -layer M3 -assign {76.752 42.2410181818}
editPin -pin {s_axi_arregion[1]} -layer M3 -assign {76.752 42.8321454545}
editPin -pin {s_axi_arregion[0]} -layer M3 -assign {76.752 43.4232727273}
editPin -pin s_axi_arvalid -layer M3 -assign {76.752 44.0144}
editPin -pin s_axi_arready -layer M3 -assign {76.752 44.6055272727}
editPin -pin {s_axi_rid[4]} -layer M3 -assign {76.752 45.1966545454}
editPin -pin {s_axi_rid[3]} -layer M3 -assign {76.752 45.7877818182}
editPin -pin {s_axi_rid[2]} -layer M3 -assign {76.752 46.3789090909}
editPin -pin {s_axi_rid[1]} -layer M3 -assign {76.752 46.9700363636}
editPin -pin {s_axi_rid[0]} -layer M3 -assign {76.752 47.5611636363}
editPin -pin {s_axi_rdata[31]} -layer M3 -assign {76.752 48.1522909091}
editPin -pin {s_axi_rdata[30]} -layer M3 -assign {76.752 48.7434181818}
editPin -pin {s_axi_rdata[29]} -layer M3 -assign {76.752 49.3345454545}
editPin -pin {s_axi_rdata[28]} -layer M3 -assign {76.752 49.9256727273}
editPin -pin {s_axi_rdata[27]} -layer M3 -assign {76.752 50.5168}
editPin -pin {s_axi_rdata[26]} -layer M3 -assign {76.752 51.1079272727}
editPin -pin {s_axi_rdata[25]} -layer M3 -assign {76.752 51.6990545454}
editPin -pin {s_axi_rdata[24]} -layer M3 -assign {76.752 52.2901818182}
editPin -pin {s_axi_rdata[23]} -layer M3 -assign {76.752 52.8813090909}
editPin -pin {s_axi_rdata[22]} -layer M3 -assign {76.752 53.4724363636}
editPin -pin {s_axi_rdata[21]} -layer M3 -assign {76.752 54.0635636363}
editPin -pin {s_axi_rdata[20]} -layer M3 -assign {76.752 54.6546909091}
editPin -pin {s_axi_rdata[19]} -layer M3 -assign {76.752 55.2458181818}
editPin -pin {s_axi_rdata[18]} -layer M3 -assign {76.752 55.8369454545}
editPin -pin {s_axi_rdata[17]} -layer M3 -assign {76.752 56.4280727272}
editPin -pin {s_axi_rdata[16]} -layer M3 -assign {76.752 57.0192}
editPin -pin {s_axi_rdata[15]} -layer M3 -assign {76.752 57.6103272727}
editPin -pin {s_axi_rdata[14]} -layer M3 -assign {76.752 58.2014545454}
editPin -pin {s_axi_rdata[13]} -layer M3 -assign {76.752 58.7925818182}
editPin -pin {s_axi_rdata[12]} -layer M3 -assign {76.752 59.3837090909}
editPin -pin {s_axi_rdata[11]} -layer M3 -assign {76.752 59.9748363636}
editPin -pin {s_axi_rdata[10]} -layer M3 -assign {76.752 60.5659636363}
editPin -pin {s_axi_rdata[9]} -layer M3 -assign {76.752 61.1570909091}
editPin -pin {s_axi_rdata[8]} -layer M3 -assign {76.752 61.7482181818}
editPin -pin {s_axi_rdata[7]} -layer M3 -assign {76.752 62.3393454545}
editPin -pin {s_axi_rdata[6]} -layer M3 -assign {76.752 62.9304727272}
editPin -pin {s_axi_rdata[5]} -layer M3 -assign {76.752 63.5216}
editPin -pin {s_axi_rdata[4]} -layer M3 -assign {76.752 64.1127272727}
editPin -pin {s_axi_rdata[3]} -layer M3 -assign {76.752 64.7038545454}
editPin -pin {s_axi_rdata[2]} -layer M3 -assign {76.752 65.2949818182}
editPin -pin {s_axi_rdata[1]} -layer M3 -assign {76.752 65.8861090909}
editPin -pin {s_axi_rdata[0]} -layer M3 -assign {76.752 66.4772363636}
editPin -pin {s_axi_rresp[1]} -layer M3 -assign {76.752 67.0683636363}
editPin -pin {s_axi_rresp[0]} -layer M3 -assign {76.752 67.6594909091}
editPin -pin s_axi_rlast -layer M3 -assign {76.752 68.2506181818}
editPin -pin s_axi_rvalid -layer M3 -assign {76.752 68.8417454545}
editPin -pin s_axi_rready -layer M3 -assign {76.752 69.4328727272}
editPin -pin {s_axi_bid[4]} -layer M4 -assign {5.0 75.024}
editPin -pin {s_axi_bid[3]} -layer M4 -assign {12.4168888889 75.024}
editPin -pin {s_axi_bid[2]} -layer M4 -assign {19.8337777778 75.024}
editPin -pin {s_axi_bid[1]} -layer M4 -assign {27.2506666667 75.024}
editPin -pin {s_axi_bid[0]} -layer M4 -assign {34.6675555556 75.024}
editPin -pin {s_axi_bresp[1]} -layer M4 -assign {42.0844444444 75.024}
editPin -pin {s_axi_bresp[0]} -layer M4 -assign {49.5013333333 75.024}
editPin -pin s_axi_bvalid -layer M4 -assign {56.9182222222 75.024}
editPin -pin s_axi_bready -layer M4 -assign {64.3351111111 75.024}
editPin -pin clk -layer M4 -assign {27.2506666667 0.0}
editPin -pin rst_n -layer M4 -assign {49.5013333334 0.0}
setPinAssignMode -pinEditInBatch false
setPinConstraint -corner_to_pin_distance 18
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
fit
zoomBox -2.10750 1.55750 75.31175 71.70525
zoomBox 11.59075 15.93700 52.00425 52.55475
zoomBox 18.74100 23.44325 39.83750 42.55825
zoomBox 21.75450 26.60650 34.71025 38.34550
zoomBox 26.86600 29.05850 33.62900 35.18625
zoomBox 29.02375 30.09150 33.17725 33.85500
zoomBox 30.93425 31.00625 32.77725 32.67625
zoomBox 31.52225 31.28750 32.65425 32.31325
zoomBox 31.66250 31.35475 32.62500 32.22675
selectWire 32.1360 31.7160 32.2320 32.0520 5 {s_axi_wdata[15]}
zoomBox 31.47850 31.13950 32.81100 32.34675
zoomBox 31.22375 30.84150 33.06825 32.51275
zoomBox 30.64750 30.16675 33.65100 32.88825
zoomBox 29.70900 29.06825 34.59975 33.49975
zoomBox 28.77475 27.97475 35.54425 34.10850
zoomBox 25.69200 24.36725 38.66050 36.11775
zoomBox 21.64000 19.62525 42.75725 38.75900
zoomBox 12.02475 8.37175 52.47900 45.02650
zoomBox -0.61475 -6.42075 65.25850 53.26550
zoomBox 15.77975 6.10250 63.37325 49.22600
zoomBox -11.04100 -14.38475 66.45725 55.83475
zoomBox -23.30675 -23.75425 67.86775 58.85700
zoomBox -46.75200 -43.19550 79.44125 71.14525
fit
zoomBox -1.52725 5.62900 46.01775 48.70850
zoomBox 0.88350 14.72000 21.97975 33.83475
zoomBox 1.87100 18.32200 12.88375 28.30050
zoomBox 5.10225 20.79075 10.85125 25.99975
zoomBox 6.38275 22.07150 9.91350 25.27075
zoomBox 6.68300 22.40025 9.68425 25.11950
deselectAll
selectVia 8.1280 24.5200 8.2880 24.6560 4 {s_axi_awaddr[7]}
zoomBox 7.56225 23.62050 8.89425 24.82750
zoomBox 7.87750 24.11475 8.57300 24.74500
zoomBox 8.04200 24.37275 8.40525 24.70200
zoomBox 8.13400 24.47050 8.35725 24.67275
zoomBox 8.19050 24.53050 8.32775 24.65475
select_obj {{net:top_axi_ram/s_axi_awaddr[7]}}
select_obj {{net:top_axi_ram/s_axi_awaddr[7]}}
deselectAll
selectVia 8.1280 24.5200 8.2880 24.6560 4 {s_axi_awaddr[7]}
deselectAll
selectVia 8.1280 24.5200 8.2880 24.6560 4 {s_axi_awaddr[7]}
deselectAll
selectVia 8.1280 24.5200 8.2880 24.6560 4 {s_axi_awaddr[7]}
deselectAll
selectVia 8.1280 24.5200 8.2880 24.6560 4 {s_axi_awaddr[7]}
fit
zoomBox 14.72375 15.65150 62.26875 58.73100
zoomBox 26.14950 25.77975 50.96850 48.26775
zoomBox 32.11375 31.06700 45.06950 42.80600
