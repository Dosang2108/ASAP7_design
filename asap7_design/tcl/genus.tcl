set ASAP7_DIR "../../../Asap7/asap7"
set LIB_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LIB/NLDM"

# 1. Setup Library
set_db library [glob ${LIB_PATH}/*.lib]
#
# # 2. Load Design
read_hdl ../rtl/Adder32.v
elaborate Adder32
#
# # 3. Apply Constraints
read_sdc constraint.sdc
#
# # 4. Synthesis Flow
syn_generic
syn_map
syn_opt
#
# # 5. Reports (Theo trang 57 tài li?u)
report_area > ../reports/synthesis_area.rpt
report_gates > ../reports/synthesis_gate.rpt
report_power > ../reports/synthesis_power.rpt
report_timing > ../reports/synthesis_pretim.rpt
#
# # 6. Export Netlist
write_hdl > ../outputs/synthesis_net.v
write_sdc > ../outputs/synthesis.sdc
quit
