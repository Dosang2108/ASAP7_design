set ASAP7_DIR "../../Asap7/asap7"
set LIB_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LIB/NLDM"
set LEF_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LEF/scaled"

 
set TECH_LEF [glob ${ASAP7_DIR}/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_*.lef]
set STD_LIB  [glob ${LIB_PATH}/*_RVT_TT_*.lib]

set SRAM_LIB [glob ${ASAP7_DIR}/asap7_sram_0p0/generated/LIB/srambank_256*.lib]
set SRAM_LEF [glob ${ASAP7_DIR}/asap7_sram_0p0/generated/LEF/srambank_256*.lef] 

set_db library [list {*}$STD_LIB {*}$SRAM_LIB]

set_db lef_library [concat $TECH_LEF [glob ${LEF_PATH}/*.lef] $SRAM_LEF]


read_hdl -sv rtl/axi_ctrl.v rtl/sram_macro.v rtl/top_axi_ram.v

elaborate top_axi_ram

check_design -unresolved


set_db [get_db insts *u_sram_macro*] .preserve true

read_sdc tcl/constraint.sdc

syn_generic
syn_map
syn_opt
exec mkdir -p reports outputs

report_area   > reports/synthesis_area.rpt
report_gates  > reports/synthesis_gate.rpt
report_power  > reports/synthesis_power.rpt
report_timing > reports/synthesis_pretim.rpt

write_hdl > outputs/synthesis_net.v
write_sdc > outputs/synthesis.sdc
quit
