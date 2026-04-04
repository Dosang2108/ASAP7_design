set ASAP7_DIR "../../Asap7/asap7"
set LIB_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LIB/NLDM"
set LEF_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LEF/scaled"

# 1. Standard Cell 
set TECH_LEF [glob ${ASAP7_DIR}/asap7sc7p5t_28/techlef_misc/asap7_tech_4x_*.lef]
set STD_LIB  [glob ${LIB_PATH}/*_RVT_TT_*.lib]

# 2. SRAM Macro (Ðã b? d?u ngo?c kép th?a)
set SRAM_LIB [glob ${ASAP7_DIR}/asap7_sram_0p0/generated/LIB/srambank_256*.lib]
set SRAM_LEF [glob ${ASAP7_DIR}/asap7_sram_0p0/generated/LEF/4xLEF/srambank_256*.lef] 

# 3. N?p thu vi?n (ÐÃ THÊM {*} CHO SRAM_LIB Ð? FIX L?I TUI-24)
set_db library [list {*}$STD_LIB {*}$SRAM_LIB]
set_db lef_library [concat $TECH_LEF [glob ${LEF_PATH}/*.lef] $SRAM_LEF]

# 4. Ð?c mã ngu?n
read_hdl rtl/axi_ram.v
elaborate axi_ram


# 5. Apply Constraint & Synthesis
read_sdc tcl/constraint.sdc


syn_generic
syn_map
syn_opt

report_area > reports/synthesis_area.rpt
report_gates > reports/synthesis_gate.rpt
report_power > reports/synthesis_power.rpt
report_timing > reports/synthesis_pretim.rpt
#
# # 6. Export Netlist
write_hdl > outputs/synthesis_net.v
write_sdc > outputs/synthesis.sdc
quit
