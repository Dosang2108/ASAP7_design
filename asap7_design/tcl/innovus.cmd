#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Mar 30 16:29:32 2026                
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
set init_lef_file {../../../Asap7/asap7/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_201209.lef ../../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_L_4x_220121a.lef ../../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_R_4x_220121a.lef ../../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SL_4x_220121a.lef ../../../Asap7/asap7/asap7sc7p5t_28/LEF/scaled/asap7sc7p5t_28_SRAM_4x_220121a.lef}
set init_verilog ../outputs/synthesis_net.v
set init_top_cell Adder32
set init_pwr_net VDD
set init_gnd_net VSS
set init_layout_view layout
set init_abstract_view abstract
set init_mmmc_file ./viewDefinition.tcl
init_design
win
set enc_check_rename_command_name 1
