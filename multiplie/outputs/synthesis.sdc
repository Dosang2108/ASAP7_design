# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Wed Apr 08 22:25:56 +07 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design Multiplier32

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports iClk]
set_clock_transition -min 0.5 [get_clocks CLK]
set_clock_transition -max 1.0 [get_clocks CLK]
set_load -pin_load 0.2 [get_ports {p[63]}]
set_load -pin_load 0.2 [get_ports {p[62]}]
set_load -pin_load 0.2 [get_ports {p[61]}]
set_load -pin_load 0.2 [get_ports {p[60]}]
set_load -pin_load 0.2 [get_ports {p[59]}]
set_load -pin_load 0.2 [get_ports {p[58]}]
set_load -pin_load 0.2 [get_ports {p[57]}]
set_load -pin_load 0.2 [get_ports {p[56]}]
set_load -pin_load 0.2 [get_ports {p[55]}]
set_load -pin_load 0.2 [get_ports {p[54]}]
set_load -pin_load 0.2 [get_ports {p[53]}]
set_load -pin_load 0.2 [get_ports {p[52]}]
set_load -pin_load 0.2 [get_ports {p[51]}]
set_load -pin_load 0.2 [get_ports {p[50]}]
set_load -pin_load 0.2 [get_ports {p[49]}]
set_load -pin_load 0.2 [get_ports {p[48]}]
set_load -pin_load 0.2 [get_ports {p[47]}]
set_load -pin_load 0.2 [get_ports {p[46]}]
set_load -pin_load 0.2 [get_ports {p[45]}]
set_load -pin_load 0.2 [get_ports {p[44]}]
set_load -pin_load 0.2 [get_ports {p[43]}]
set_load -pin_load 0.2 [get_ports {p[42]}]
set_load -pin_load 0.2 [get_ports {p[41]}]
set_load -pin_load 0.2 [get_ports {p[40]}]
set_load -pin_load 0.2 [get_ports {p[39]}]
set_load -pin_load 0.2 [get_ports {p[38]}]
set_load -pin_load 0.2 [get_ports {p[37]}]
set_load -pin_load 0.2 [get_ports {p[36]}]
set_load -pin_load 0.2 [get_ports {p[35]}]
set_load -pin_load 0.2 [get_ports {p[34]}]
set_load -pin_load 0.2 [get_ports {p[33]}]
set_load -pin_load 0.2 [get_ports {p[32]}]
set_load -pin_load 0.2 [get_ports {p[31]}]
set_load -pin_load 0.2 [get_ports {p[30]}]
set_load -pin_load 0.2 [get_ports {p[29]}]
set_load -pin_load 0.2 [get_ports {p[28]}]
set_load -pin_load 0.2 [get_ports {p[27]}]
set_load -pin_load 0.2 [get_ports {p[26]}]
set_load -pin_load 0.2 [get_ports {p[25]}]
set_load -pin_load 0.2 [get_ports {p[24]}]
set_load -pin_load 0.2 [get_ports {p[23]}]
set_load -pin_load 0.2 [get_ports {p[22]}]
set_load -pin_load 0.2 [get_ports {p[21]}]
set_load -pin_load 0.2 [get_ports {p[20]}]
set_load -pin_load 0.2 [get_ports {p[19]}]
set_load -pin_load 0.2 [get_ports {p[18]}]
set_load -pin_load 0.2 [get_ports {p[17]}]
set_load -pin_load 0.2 [get_ports {p[16]}]
set_load -pin_load 0.2 [get_ports {p[15]}]
set_load -pin_load 0.2 [get_ports {p[14]}]
set_load -pin_load 0.2 [get_ports {p[13]}]
set_load -pin_load 0.2 [get_ports {p[12]}]
set_load -pin_load 0.2 [get_ports {p[11]}]
set_load -pin_load 0.2 [get_ports {p[10]}]
set_load -pin_load 0.2 [get_ports {p[9]}]
set_load -pin_load 0.2 [get_ports {p[8]}]
set_load -pin_load 0.2 [get_ports {p[7]}]
set_load -pin_load 0.2 [get_ports {p[6]}]
set_load -pin_load 0.2 [get_ports {p[5]}]
set_load -pin_load 0.2 [get_ports {p[4]}]
set_load -pin_load 0.2 [get_ports {p[3]}]
set_load -pin_load 0.2 [get_ports {p[2]}]
set_load -pin_load 0.2 [get_ports {p[1]}]
set_load -pin_load 0.2 [get_ports {p[0]}]
group_path -name C2C -from [list \
  [get_cells {p_reg[63]}]  \
  [get_cells {p_reg[62]}]  \
  [get_cells {p_reg[60]}]  \
  [get_cells {p_reg[56]}]  \
  [get_cells {p_reg[48]}]  \
  [get_cells {p_reg[32]}]  \
  [get_cells {p_reg[0]}]  \
  [get_cells {p_reg[31]}]  \
  [get_cells {p_reg[47]}]  \
  [get_cells {p_reg[30]}]  \
  [get_cells {p_reg[29]}]  \
  [get_cells {p_reg[55]}]  \
  [get_cells {p_reg[46]}]  \
  [get_cells {p_reg[28]}]  \
  [get_cells {p_reg[27]}]  \
  [get_cells {p_reg[45]}]  \
  [get_cells {p_reg[26]}]  \
  [get_cells {p_reg[25]}]  \
  [get_cells {p_reg[59]}]  \
  [get_cells {p_reg[54]}]  \
  [get_cells {p_reg[44]}]  \
  [get_cells {p_reg[24]}]  \
  [get_cells {p_reg[23]}]  \
  [get_cells {p_reg[43]}]  \
  [get_cells {p_reg[22]}]  \
  [get_cells {p_reg[21]}]  \
  [get_cells {p_reg[53]}]  \
  [get_cells {p_reg[42]}]  \
  [get_cells {p_reg[20]}]  \
  [get_cells {p_reg[19]}]  \
  [get_cells {p_reg[41]}]  \
  [get_cells {p_reg[18]}]  \
  [get_cells {p_reg[11]}]  \
  [get_cells {p_reg[61]}]  \
  [get_cells {p_reg[58]}]  \
  [get_cells {p_reg[52]}]  \
  [get_cells {p_reg[33]}]  \
  [get_cells {p_reg[40]}]  \
  [get_cells {p_reg[16]}]  \
  [get_cells {p_reg[15]}]  \
  [get_cells {p_reg[49]}]  \
  [get_cells {p_reg[39]}]  \
  [get_cells {p_reg[14]}]  \
  [get_cells {p_reg[13]}]  \
  [get_cells {p_reg[7]}]  \
  [get_cells {p_reg[51]}]  \
  [get_cells {p_reg[38]}]  \
  [get_cells {p_reg[12]}]  \
  [get_cells {p_reg[9]}]  \
  [get_cells {p_reg[37]}]  \
  [get_cells {p_reg[10]}]  \
  [get_cells {p_reg[17]}]  \
  [get_cells {p_reg[57]}]  \
  [get_cells {p_reg[50]}]  \
  [get_cells {p_reg[36]}]  \
  [get_cells {p_reg[8]}]  \
  [get_cells {p_reg[35]}]  \
  [get_cells {p_reg[6]}]  \
  [get_cells {p_reg[5]}]  \
  [get_cells {p_reg[34]}]  \
  [get_cells {p_reg[4]}]  \
  [get_cells {p_reg[3]}]  \
  [get_cells {p_reg[2]}]  \
  [get_cells {p_reg[1]}]  \
  [get_cells {mult_reg_reg[36]}]  \
  [get_cells {mult_reg_reg[37]}]  \
  [get_cells {mult_reg_reg[38]}]  \
  [get_cells {mult_reg_reg[40]}]  \
  [get_cells {mult_reg_reg[41]}]  \
  [get_cells {mult_reg_reg[42]}]  \
  [get_cells {mult_reg_reg[44]}]  \
  [get_cells {mult_reg_reg[45]}]  \
  [get_cells {mult_reg_reg[46]}]  \
  [get_cells {mult_reg_reg[47]}]  \
  [get_cells {mult_reg_reg[48]}]  \
  [get_cells {mult_reg_reg[49]}]  \
  [get_cells {mult_reg_reg[50]}]  \
  [get_cells {mult_reg_reg[51]}]  \
  [get_cells {mult_reg_reg[52]}]  \
  [get_cells {mult_reg_reg[53]}]  \
  [get_cells {mult_reg_reg[54]}]  \
  [get_cells {mult_reg_reg[56]}]  \
  [get_cells {mult_reg_reg[57]}]  \
  [get_cells {mult_reg_reg[58]}]  \
  [get_cells {mult_reg_reg[60]}]  \
  [get_cells {mult_reg_reg[61]}]  \
  [get_cells {mult_reg_reg[62]}]  \
  [get_cells {mult_reg_reg[15]}]  \
  [get_cells {mult_reg_reg[43]}]  \
  [get_cells {mult_reg_reg[39]}]  \
  [get_cells {mult_reg_reg[35]}]  \
  [get_cells {mult_reg_reg[27]}]  \
  [get_cells {mult_reg_reg[11]}]  \
  [get_cells {mult_reg_reg[23]}]  \
  [get_cells {mult_reg_reg[19]}]  \
  [get_cells {mult_reg_reg[7]}]  \
  [get_cells {mult_reg_reg[63]}]  \
  [get_cells {mult_reg_reg[0]}]  \
  [get_cells {mult_reg_reg[1]}]  \
  [get_cells {mult_reg_reg[2]}]  \
  [get_cells {mult_reg_reg[3]}]  \
  [get_cells {mult_reg_reg[4]}]  \
  [get_cells {mult_reg_reg[5]}]  \
  [get_cells {mult_reg_reg[6]}]  \
  [get_cells {mult_reg_reg[8]}]  \
  [get_cells {mult_reg_reg[9]}]  \
  [get_cells {mult_reg_reg[10]}]  \
  [get_cells {mult_reg_reg[59]}]  \
  [get_cells {mult_reg_reg[12]}]  \
  [get_cells {mult_reg_reg[13]}]  \
  [get_cells {mult_reg_reg[14]}]  \
  [get_cells {mult_reg_reg[16]}]  \
  [get_cells {mult_reg_reg[17]}]  \
  [get_cells {mult_reg_reg[18]}]  \
  [get_cells {mult_reg_reg[20]}]  \
  [get_cells {mult_reg_reg[21]}]  \
  [get_cells {mult_reg_reg[22]}]  \
  [get_cells {mult_reg_reg[24]}]  \
  [get_cells {mult_reg_reg[25]}]  \
  [get_cells {mult_reg_reg[26]}]  \
  [get_cells {mult_reg_reg[55]}]  \
  [get_cells {mult_reg_reg[28]}]  \
  [get_cells {mult_reg_reg[29]}]  \
  [get_cells {mult_reg_reg[30]}]  \
  [get_cells {mult_reg_reg[31]}]  \
  [get_cells {mult_reg_reg[32]}]  \
  [get_cells {mult_reg_reg[33]}]  \
  [get_cells {mult_reg_reg[34]}]  \
  [get_cells {b_reg_reg[17]}]  \
  [get_cells {b_reg_reg[3]}]  \
  [get_cells {b_reg_reg[7]}]  \
  [get_cells {b_reg_reg[30]}]  \
  [get_cells {a_reg_reg[20]}]  \
  [get_cells {b_reg_reg[13]}]  \
  [get_cells {b_reg_reg[24]}]  \
  [get_cells {b_reg_reg[22]}]  \
  [get_cells {b_reg_reg[6]}]  \
  [get_cells {b_reg_reg[11]}]  \
  [get_cells {b_reg_reg[0]}]  \
  [get_cells {b_reg_reg[4]}]  \
  [get_cells {a_reg_reg[25]}]  \
  [get_cells {a_reg_reg[28]}]  \
  [get_cells {a_reg_reg[27]}]  \
  [get_cells {b_reg_reg[29]}]  \
  [get_cells {b_reg_reg[18]}]  \
  [get_cells {a_reg_reg[29]}]  \
  [get_cells {b_reg_reg[31]}]  \
  [get_cells {b_reg_reg[23]}]  \
  [get_cells {b_reg_reg[19]}]  \
  [get_cells {a_reg_reg[31]}]  \
  [get_cells {b_reg_reg[2]}]  \
  [get_cells {b_reg_reg[5]}]  \
  [get_cells {b_reg_reg[8]}]  \
  [get_cells {b_reg_reg[10]}]  \
  [get_cells {b_reg_reg[12]}]  \
  [get_cells {b_reg_reg[21]}]  \
  [get_cells {b_reg_reg[14]}]  \
  [get_cells {b_reg_reg[20]}]  \
  [get_cells {b_reg_reg[28]}]  \
  [get_cells {a_reg_reg[13]}]  \
  [get_cells {a_reg_reg[15]}]  \
  [get_cells {a_reg_reg[9]}]  \
  [get_cells {a_reg_reg[0]}]  \
  [get_cells {a_reg_reg[26]}]  \
  [get_cells {b_reg_reg[27]}]  \
  [get_cells {a_reg_reg[24]}]  \
  [get_cells {a_reg_reg[5]}]  \
  [get_cells {b_reg_reg[15]}]  \
  [get_cells {a_reg_reg[14]}]  \
  [get_cells {a_reg_reg[18]}]  \
  [get_cells {a_reg_reg[23]}]  \
  [get_cells {a_reg_reg[30]}]  \
  [get_cells {a_reg_reg[21]}]  \
  [get_cells {a_reg_reg[19]}]  \
  [get_cells {a_reg_reg[6]}]  \
  [get_cells {a_reg_reg[12]}]  \
  [get_cells {b_reg_reg[1]}]  \
  [get_cells {b_reg_reg[26]}]  \
  [get_cells {b_reg_reg[25]}]  \
  [get_cells {a_reg_reg[17]}]  \
  [get_cells {b_reg_reg[16]}]  \
  [get_cells {a_reg_reg[16]}]  \
  [get_cells {a_reg_reg[11]}]  \
  [get_cells {a_reg_reg[22]}]  \
  [get_cells {a_reg_reg[10]}]  \
  [get_cells {b_reg_reg[9]}]  \
  [get_cells {a_reg_reg[7]}]  \
  [get_cells {a_reg_reg[8]}]  \
  [get_cells {a_reg_reg[3]}]  \
  [get_cells {a_reg_reg[4]}]  \
  [get_cells {a_reg_reg[2]}]  \
  [get_cells {a_reg_reg[1]}] ] -to [list \
  [get_cells {p_reg[63]}]  \
  [get_cells {p_reg[62]}]  \
  [get_cells {p_reg[60]}]  \
  [get_cells {p_reg[56]}]  \
  [get_cells {p_reg[48]}]  \
  [get_cells {p_reg[32]}]  \
  [get_cells {p_reg[0]}]  \
  [get_cells {p_reg[31]}]  \
  [get_cells {p_reg[47]}]  \
  [get_cells {p_reg[30]}]  \
  [get_cells {p_reg[29]}]  \
  [get_cells {p_reg[55]}]  \
  [get_cells {p_reg[46]}]  \
  [get_cells {p_reg[28]}]  \
  [get_cells {p_reg[27]}]  \
  [get_cells {p_reg[45]}]  \
  [get_cells {p_reg[26]}]  \
  [get_cells {p_reg[25]}]  \
  [get_cells {p_reg[59]}]  \
  [get_cells {p_reg[54]}]  \
  [get_cells {p_reg[44]}]  \
  [get_cells {p_reg[24]}]  \
  [get_cells {p_reg[23]}]  \
  [get_cells {p_reg[43]}]  \
  [get_cells {p_reg[22]}]  \
  [get_cells {p_reg[21]}]  \
  [get_cells {p_reg[53]}]  \
  [get_cells {p_reg[42]}]  \
  [get_cells {p_reg[20]}]  \
  [get_cells {p_reg[19]}]  \
  [get_cells {p_reg[41]}]  \
  [get_cells {p_reg[18]}]  \
  [get_cells {p_reg[11]}]  \
  [get_cells {p_reg[61]}]  \
  [get_cells {p_reg[58]}]  \
  [get_cells {p_reg[52]}]  \
  [get_cells {p_reg[33]}]  \
  [get_cells {p_reg[40]}]  \
  [get_cells {p_reg[16]}]  \
  [get_cells {p_reg[15]}]  \
  [get_cells {p_reg[49]}]  \
  [get_cells {p_reg[39]}]  \
  [get_cells {p_reg[14]}]  \
  [get_cells {p_reg[13]}]  \
  [get_cells {p_reg[7]}]  \
  [get_cells {p_reg[51]}]  \
  [get_cells {p_reg[38]}]  \
  [get_cells {p_reg[12]}]  \
  [get_cells {p_reg[9]}]  \
  [get_cells {p_reg[37]}]  \
  [get_cells {p_reg[10]}]  \
  [get_cells {p_reg[17]}]  \
  [get_cells {p_reg[57]}]  \
  [get_cells {p_reg[50]}]  \
  [get_cells {p_reg[36]}]  \
  [get_cells {p_reg[8]}]  \
  [get_cells {p_reg[35]}]  \
  [get_cells {p_reg[6]}]  \
  [get_cells {p_reg[5]}]  \
  [get_cells {p_reg[34]}]  \
  [get_cells {p_reg[4]}]  \
  [get_cells {p_reg[3]}]  \
  [get_cells {p_reg[2]}]  \
  [get_cells {p_reg[1]}]  \
  [get_cells {mult_reg_reg[36]}]  \
  [get_cells {mult_reg_reg[37]}]  \
  [get_cells {mult_reg_reg[38]}]  \
  [get_cells {mult_reg_reg[40]}]  \
  [get_cells {mult_reg_reg[41]}]  \
  [get_cells {mult_reg_reg[42]}]  \
  [get_cells {mult_reg_reg[44]}]  \
  [get_cells {mult_reg_reg[45]}]  \
  [get_cells {mult_reg_reg[46]}]  \
  [get_cells {mult_reg_reg[47]}]  \
  [get_cells {mult_reg_reg[48]}]  \
  [get_cells {mult_reg_reg[49]}]  \
  [get_cells {mult_reg_reg[50]}]  \
  [get_cells {mult_reg_reg[51]}]  \
  [get_cells {mult_reg_reg[52]}]  \
  [get_cells {mult_reg_reg[53]}]  \
  [get_cells {mult_reg_reg[54]}]  \
  [get_cells {mult_reg_reg[56]}]  \
  [get_cells {mult_reg_reg[57]}]  \
  [get_cells {mult_reg_reg[58]}]  \
  [get_cells {mult_reg_reg[60]}]  \
  [get_cells {mult_reg_reg[61]}]  \
  [get_cells {mult_reg_reg[62]}]  \
  [get_cells {mult_reg_reg[15]}]  \
  [get_cells {mult_reg_reg[43]}]  \
  [get_cells {mult_reg_reg[39]}]  \
  [get_cells {mult_reg_reg[35]}]  \
  [get_cells {mult_reg_reg[27]}]  \
  [get_cells {mult_reg_reg[11]}]  \
  [get_cells {mult_reg_reg[23]}]  \
  [get_cells {mult_reg_reg[19]}]  \
  [get_cells {mult_reg_reg[7]}]  \
  [get_cells {mult_reg_reg[63]}]  \
  [get_cells {mult_reg_reg[0]}]  \
  [get_cells {mult_reg_reg[1]}]  \
  [get_cells {mult_reg_reg[2]}]  \
  [get_cells {mult_reg_reg[3]}]  \
  [get_cells {mult_reg_reg[4]}]  \
  [get_cells {mult_reg_reg[5]}]  \
  [get_cells {mult_reg_reg[6]}]  \
  [get_cells {mult_reg_reg[8]}]  \
  [get_cells {mult_reg_reg[9]}]  \
  [get_cells {mult_reg_reg[10]}]  \
  [get_cells {mult_reg_reg[59]}]  \
  [get_cells {mult_reg_reg[12]}]  \
  [get_cells {mult_reg_reg[13]}]  \
  [get_cells {mult_reg_reg[14]}]  \
  [get_cells {mult_reg_reg[16]}]  \
  [get_cells {mult_reg_reg[17]}]  \
  [get_cells {mult_reg_reg[18]}]  \
  [get_cells {mult_reg_reg[20]}]  \
  [get_cells {mult_reg_reg[21]}]  \
  [get_cells {mult_reg_reg[22]}]  \
  [get_cells {mult_reg_reg[24]}]  \
  [get_cells {mult_reg_reg[25]}]  \
  [get_cells {mult_reg_reg[26]}]  \
  [get_cells {mult_reg_reg[55]}]  \
  [get_cells {mult_reg_reg[28]}]  \
  [get_cells {mult_reg_reg[29]}]  \
  [get_cells {mult_reg_reg[30]}]  \
  [get_cells {mult_reg_reg[31]}]  \
  [get_cells {mult_reg_reg[32]}]  \
  [get_cells {mult_reg_reg[33]}]  \
  [get_cells {mult_reg_reg[34]}]  \
  [get_cells {b_reg_reg[17]}]  \
  [get_cells {b_reg_reg[3]}]  \
  [get_cells {b_reg_reg[7]}]  \
  [get_cells {b_reg_reg[30]}]  \
  [get_cells {a_reg_reg[20]}]  \
  [get_cells {b_reg_reg[13]}]  \
  [get_cells {b_reg_reg[24]}]  \
  [get_cells {b_reg_reg[22]}]  \
  [get_cells {b_reg_reg[6]}]  \
  [get_cells {b_reg_reg[11]}]  \
  [get_cells {b_reg_reg[0]}]  \
  [get_cells {b_reg_reg[4]}]  \
  [get_cells {a_reg_reg[25]}]  \
  [get_cells {a_reg_reg[28]}]  \
  [get_cells {a_reg_reg[27]}]  \
  [get_cells {b_reg_reg[29]}]  \
  [get_cells {b_reg_reg[18]}]  \
  [get_cells {a_reg_reg[29]}]  \
  [get_cells {b_reg_reg[31]}]  \
  [get_cells {b_reg_reg[23]}]  \
  [get_cells {b_reg_reg[19]}]  \
  [get_cells {a_reg_reg[31]}]  \
  [get_cells {b_reg_reg[2]}]  \
  [get_cells {b_reg_reg[5]}]  \
  [get_cells {b_reg_reg[8]}]  \
  [get_cells {b_reg_reg[10]}]  \
  [get_cells {b_reg_reg[12]}]  \
  [get_cells {b_reg_reg[21]}]  \
  [get_cells {b_reg_reg[14]}]  \
  [get_cells {b_reg_reg[20]}]  \
  [get_cells {b_reg_reg[28]}]  \
  [get_cells {a_reg_reg[13]}]  \
  [get_cells {a_reg_reg[15]}]  \
  [get_cells {a_reg_reg[9]}]  \
  [get_cells {a_reg_reg[0]}]  \
  [get_cells {a_reg_reg[26]}]  \
  [get_cells {b_reg_reg[27]}]  \
  [get_cells {a_reg_reg[24]}]  \
  [get_cells {a_reg_reg[5]}]  \
  [get_cells {b_reg_reg[15]}]  \
  [get_cells {a_reg_reg[14]}]  \
  [get_cells {a_reg_reg[18]}]  \
  [get_cells {a_reg_reg[23]}]  \
  [get_cells {a_reg_reg[30]}]  \
  [get_cells {a_reg_reg[21]}]  \
  [get_cells {a_reg_reg[19]}]  \
  [get_cells {a_reg_reg[6]}]  \
  [get_cells {a_reg_reg[12]}]  \
  [get_cells {b_reg_reg[1]}]  \
  [get_cells {b_reg_reg[26]}]  \
  [get_cells {b_reg_reg[25]}]  \
  [get_cells {a_reg_reg[17]}]  \
  [get_cells {b_reg_reg[16]}]  \
  [get_cells {a_reg_reg[16]}]  \
  [get_cells {a_reg_reg[11]}]  \
  [get_cells {a_reg_reg[22]}]  \
  [get_cells {a_reg_reg[10]}]  \
  [get_cells {b_reg_reg[9]}]  \
  [get_cells {a_reg_reg[7]}]  \
  [get_cells {a_reg_reg[8]}]  \
  [get_cells {a_reg_reg[3]}]  \
  [get_cells {a_reg_reg[4]}]  \
  [get_cells {a_reg_reg[2]}]  \
  [get_cells {a_reg_reg[1]}] ]
group_path -name C2O -from [list \
  [get_cells {p_reg[63]}]  \
  [get_cells {p_reg[62]}]  \
  [get_cells {p_reg[60]}]  \
  [get_cells {p_reg[56]}]  \
  [get_cells {p_reg[48]}]  \
  [get_cells {p_reg[32]}]  \
  [get_cells {p_reg[0]}]  \
  [get_cells {p_reg[31]}]  \
  [get_cells {p_reg[47]}]  \
  [get_cells {p_reg[30]}]  \
  [get_cells {p_reg[29]}]  \
  [get_cells {p_reg[55]}]  \
  [get_cells {p_reg[46]}]  \
  [get_cells {p_reg[28]}]  \
  [get_cells {p_reg[27]}]  \
  [get_cells {p_reg[45]}]  \
  [get_cells {p_reg[26]}]  \
  [get_cells {p_reg[25]}]  \
  [get_cells {p_reg[59]}]  \
  [get_cells {p_reg[54]}]  \
  [get_cells {p_reg[44]}]  \
  [get_cells {p_reg[24]}]  \
  [get_cells {p_reg[23]}]  \
  [get_cells {p_reg[43]}]  \
  [get_cells {p_reg[22]}]  \
  [get_cells {p_reg[21]}]  \
  [get_cells {p_reg[53]}]  \
  [get_cells {p_reg[42]}]  \
  [get_cells {p_reg[20]}]  \
  [get_cells {p_reg[19]}]  \
  [get_cells {p_reg[41]}]  \
  [get_cells {p_reg[18]}]  \
  [get_cells {p_reg[11]}]  \
  [get_cells {p_reg[61]}]  \
  [get_cells {p_reg[58]}]  \
  [get_cells {p_reg[52]}]  \
  [get_cells {p_reg[33]}]  \
  [get_cells {p_reg[40]}]  \
  [get_cells {p_reg[16]}]  \
  [get_cells {p_reg[15]}]  \
  [get_cells {p_reg[49]}]  \
  [get_cells {p_reg[39]}]  \
  [get_cells {p_reg[14]}]  \
  [get_cells {p_reg[13]}]  \
  [get_cells {p_reg[7]}]  \
  [get_cells {p_reg[51]}]  \
  [get_cells {p_reg[38]}]  \
  [get_cells {p_reg[12]}]  \
  [get_cells {p_reg[9]}]  \
  [get_cells {p_reg[37]}]  \
  [get_cells {p_reg[10]}]  \
  [get_cells {p_reg[17]}]  \
  [get_cells {p_reg[57]}]  \
  [get_cells {p_reg[50]}]  \
  [get_cells {p_reg[36]}]  \
  [get_cells {p_reg[8]}]  \
  [get_cells {p_reg[35]}]  \
  [get_cells {p_reg[6]}]  \
  [get_cells {p_reg[5]}]  \
  [get_cells {p_reg[34]}]  \
  [get_cells {p_reg[4]}]  \
  [get_cells {p_reg[3]}]  \
  [get_cells {p_reg[2]}]  \
  [get_cells {p_reg[1]}]  \
  [get_cells {mult_reg_reg[36]}]  \
  [get_cells {mult_reg_reg[37]}]  \
  [get_cells {mult_reg_reg[38]}]  \
  [get_cells {mult_reg_reg[40]}]  \
  [get_cells {mult_reg_reg[41]}]  \
  [get_cells {mult_reg_reg[42]}]  \
  [get_cells {mult_reg_reg[44]}]  \
  [get_cells {mult_reg_reg[45]}]  \
  [get_cells {mult_reg_reg[46]}]  \
  [get_cells {mult_reg_reg[47]}]  \
  [get_cells {mult_reg_reg[48]}]  \
  [get_cells {mult_reg_reg[49]}]  \
  [get_cells {mult_reg_reg[50]}]  \
  [get_cells {mult_reg_reg[51]}]  \
  [get_cells {mult_reg_reg[52]}]  \
  [get_cells {mult_reg_reg[53]}]  \
  [get_cells {mult_reg_reg[54]}]  \
  [get_cells {mult_reg_reg[56]}]  \
  [get_cells {mult_reg_reg[57]}]  \
  [get_cells {mult_reg_reg[58]}]  \
  [get_cells {mult_reg_reg[60]}]  \
  [get_cells {mult_reg_reg[61]}]  \
  [get_cells {mult_reg_reg[62]}]  \
  [get_cells {mult_reg_reg[15]}]  \
  [get_cells {mult_reg_reg[43]}]  \
  [get_cells {mult_reg_reg[39]}]  \
  [get_cells {mult_reg_reg[35]}]  \
  [get_cells {mult_reg_reg[27]}]  \
  [get_cells {mult_reg_reg[11]}]  \
  [get_cells {mult_reg_reg[23]}]  \
  [get_cells {mult_reg_reg[19]}]  \
  [get_cells {mult_reg_reg[7]}]  \
  [get_cells {mult_reg_reg[63]}]  \
  [get_cells {mult_reg_reg[0]}]  \
  [get_cells {mult_reg_reg[1]}]  \
  [get_cells {mult_reg_reg[2]}]  \
  [get_cells {mult_reg_reg[3]}]  \
  [get_cells {mult_reg_reg[4]}]  \
  [get_cells {mult_reg_reg[5]}]  \
  [get_cells {mult_reg_reg[6]}]  \
  [get_cells {mult_reg_reg[8]}]  \
  [get_cells {mult_reg_reg[9]}]  \
  [get_cells {mult_reg_reg[10]}]  \
  [get_cells {mult_reg_reg[59]}]  \
  [get_cells {mult_reg_reg[12]}]  \
  [get_cells {mult_reg_reg[13]}]  \
  [get_cells {mult_reg_reg[14]}]  \
  [get_cells {mult_reg_reg[16]}]  \
  [get_cells {mult_reg_reg[17]}]  \
  [get_cells {mult_reg_reg[18]}]  \
  [get_cells {mult_reg_reg[20]}]  \
  [get_cells {mult_reg_reg[21]}]  \
  [get_cells {mult_reg_reg[22]}]  \
  [get_cells {mult_reg_reg[24]}]  \
  [get_cells {mult_reg_reg[25]}]  \
  [get_cells {mult_reg_reg[26]}]  \
  [get_cells {mult_reg_reg[55]}]  \
  [get_cells {mult_reg_reg[28]}]  \
  [get_cells {mult_reg_reg[29]}]  \
  [get_cells {mult_reg_reg[30]}]  \
  [get_cells {mult_reg_reg[31]}]  \
  [get_cells {mult_reg_reg[32]}]  \
  [get_cells {mult_reg_reg[33]}]  \
  [get_cells {mult_reg_reg[34]}]  \
  [get_cells {b_reg_reg[17]}]  \
  [get_cells {b_reg_reg[3]}]  \
  [get_cells {b_reg_reg[7]}]  \
  [get_cells {b_reg_reg[30]}]  \
  [get_cells {a_reg_reg[20]}]  \
  [get_cells {b_reg_reg[13]}]  \
  [get_cells {b_reg_reg[24]}]  \
  [get_cells {b_reg_reg[22]}]  \
  [get_cells {b_reg_reg[6]}]  \
  [get_cells {b_reg_reg[11]}]  \
  [get_cells {b_reg_reg[0]}]  \
  [get_cells {b_reg_reg[4]}]  \
  [get_cells {a_reg_reg[25]}]  \
  [get_cells {a_reg_reg[28]}]  \
  [get_cells {a_reg_reg[27]}]  \
  [get_cells {b_reg_reg[29]}]  \
  [get_cells {b_reg_reg[18]}]  \
  [get_cells {a_reg_reg[29]}]  \
  [get_cells {b_reg_reg[31]}]  \
  [get_cells {b_reg_reg[23]}]  \
  [get_cells {b_reg_reg[19]}]  \
  [get_cells {a_reg_reg[31]}]  \
  [get_cells {b_reg_reg[2]}]  \
  [get_cells {b_reg_reg[5]}]  \
  [get_cells {b_reg_reg[8]}]  \
  [get_cells {b_reg_reg[10]}]  \
  [get_cells {b_reg_reg[12]}]  \
  [get_cells {b_reg_reg[21]}]  \
  [get_cells {b_reg_reg[14]}]  \
  [get_cells {b_reg_reg[20]}]  \
  [get_cells {b_reg_reg[28]}]  \
  [get_cells {a_reg_reg[13]}]  \
  [get_cells {a_reg_reg[15]}]  \
  [get_cells {a_reg_reg[9]}]  \
  [get_cells {a_reg_reg[0]}]  \
  [get_cells {a_reg_reg[26]}]  \
  [get_cells {b_reg_reg[27]}]  \
  [get_cells {a_reg_reg[24]}]  \
  [get_cells {a_reg_reg[5]}]  \
  [get_cells {b_reg_reg[15]}]  \
  [get_cells {a_reg_reg[14]}]  \
  [get_cells {a_reg_reg[18]}]  \
  [get_cells {a_reg_reg[23]}]  \
  [get_cells {a_reg_reg[30]}]  \
  [get_cells {a_reg_reg[21]}]  \
  [get_cells {a_reg_reg[19]}]  \
  [get_cells {a_reg_reg[6]}]  \
  [get_cells {a_reg_reg[12]}]  \
  [get_cells {b_reg_reg[1]}]  \
  [get_cells {b_reg_reg[26]}]  \
  [get_cells {b_reg_reg[25]}]  \
  [get_cells {a_reg_reg[17]}]  \
  [get_cells {b_reg_reg[16]}]  \
  [get_cells {a_reg_reg[16]}]  \
  [get_cells {a_reg_reg[11]}]  \
  [get_cells {a_reg_reg[22]}]  \
  [get_cells {a_reg_reg[10]}]  \
  [get_cells {b_reg_reg[9]}]  \
  [get_cells {a_reg_reg[7]}]  \
  [get_cells {a_reg_reg[8]}]  \
  [get_cells {a_reg_reg[3]}]  \
  [get_cells {a_reg_reg[4]}]  \
  [get_cells {a_reg_reg[2]}]  \
  [get_cells {a_reg_reg[1]}] ] -to [list \
  [get_ports {p[63]}]  \
  [get_ports {p[62]}]  \
  [get_ports {p[61]}]  \
  [get_ports {p[60]}]  \
  [get_ports {p[59]}]  \
  [get_ports {p[58]}]  \
  [get_ports {p[57]}]  \
  [get_ports {p[56]}]  \
  [get_ports {p[55]}]  \
  [get_ports {p[54]}]  \
  [get_ports {p[53]}]  \
  [get_ports {p[52]}]  \
  [get_ports {p[51]}]  \
  [get_ports {p[50]}]  \
  [get_ports {p[49]}]  \
  [get_ports {p[48]}]  \
  [get_ports {p[47]}]  \
  [get_ports {p[46]}]  \
  [get_ports {p[45]}]  \
  [get_ports {p[44]}]  \
  [get_ports {p[43]}]  \
  [get_ports {p[42]}]  \
  [get_ports {p[41]}]  \
  [get_ports {p[40]}]  \
  [get_ports {p[39]}]  \
  [get_ports {p[38]}]  \
  [get_ports {p[37]}]  \
  [get_ports {p[36]}]  \
  [get_ports {p[35]}]  \
  [get_ports {p[34]}]  \
  [get_ports {p[33]}]  \
  [get_ports {p[32]}]  \
  [get_ports {p[31]}]  \
  [get_ports {p[30]}]  \
  [get_ports {p[29]}]  \
  [get_ports {p[28]}]  \
  [get_ports {p[27]}]  \
  [get_ports {p[26]}]  \
  [get_ports {p[25]}]  \
  [get_ports {p[24]}]  \
  [get_ports {p[23]}]  \
  [get_ports {p[22]}]  \
  [get_ports {p[21]}]  \
  [get_ports {p[20]}]  \
  [get_ports {p[19]}]  \
  [get_ports {p[18]}]  \
  [get_ports {p[17]}]  \
  [get_ports {p[16]}]  \
  [get_ports {p[15]}]  \
  [get_ports {p[14]}]  \
  [get_ports {p[13]}]  \
  [get_ports {p[12]}]  \
  [get_ports {p[11]}]  \
  [get_ports {p[10]}]  \
  [get_ports {p[9]}]  \
  [get_ports {p[8]}]  \
  [get_ports {p[7]}]  \
  [get_ports {p[6]}]  \
  [get_ports {p[5]}]  \
  [get_ports {p[4]}]  \
  [get_ports {p[3]}]  \
  [get_ports {p[2]}]  \
  [get_ports {p[1]}]  \
  [get_ports {p[0]}] ]
group_path -name I2C -from [list \
  [get_ports iClk]  \
  [get_ports rst_n]  \
  [get_ports {a[31]}]  \
  [get_ports {a[30]}]  \
  [get_ports {a[29]}]  \
  [get_ports {a[28]}]  \
  [get_ports {a[27]}]  \
  [get_ports {a[26]}]  \
  [get_ports {a[25]}]  \
  [get_ports {a[24]}]  \
  [get_ports {a[23]}]  \
  [get_ports {a[22]}]  \
  [get_ports {a[21]}]  \
  [get_ports {a[20]}]  \
  [get_ports {a[19]}]  \
  [get_ports {a[18]}]  \
  [get_ports {a[17]}]  \
  [get_ports {a[16]}]  \
  [get_ports {a[15]}]  \
  [get_ports {a[14]}]  \
  [get_ports {a[13]}]  \
  [get_ports {a[12]}]  \
  [get_ports {a[11]}]  \
  [get_ports {a[10]}]  \
  [get_ports {a[9]}]  \
  [get_ports {a[8]}]  \
  [get_ports {a[7]}]  \
  [get_ports {a[6]}]  \
  [get_ports {a[5]}]  \
  [get_ports {a[4]}]  \
  [get_ports {a[3]}]  \
  [get_ports {a[2]}]  \
  [get_ports {a[1]}]  \
  [get_ports {a[0]}]  \
  [get_ports {b[31]}]  \
  [get_ports {b[30]}]  \
  [get_ports {b[29]}]  \
  [get_ports {b[28]}]  \
  [get_ports {b[27]}]  \
  [get_ports {b[26]}]  \
  [get_ports {b[25]}]  \
  [get_ports {b[24]}]  \
  [get_ports {b[23]}]  \
  [get_ports {b[22]}]  \
  [get_ports {b[21]}]  \
  [get_ports {b[20]}]  \
  [get_ports {b[19]}]  \
  [get_ports {b[18]}]  \
  [get_ports {b[17]}]  \
  [get_ports {b[16]}]  \
  [get_ports {b[15]}]  \
  [get_ports {b[14]}]  \
  [get_ports {b[13]}]  \
  [get_ports {b[12]}]  \
  [get_ports {b[11]}]  \
  [get_ports {b[10]}]  \
  [get_ports {b[9]}]  \
  [get_ports {b[8]}]  \
  [get_ports {b[7]}]  \
  [get_ports {b[6]}]  \
  [get_ports {b[5]}]  \
  [get_ports {b[4]}]  \
  [get_ports {b[3]}]  \
  [get_ports {b[2]}]  \
  [get_ports {b[1]}]  \
  [get_ports {b[0]}] ] -to [list \
  [get_cells {p_reg[63]}]  \
  [get_cells {p_reg[62]}]  \
  [get_cells {p_reg[60]}]  \
  [get_cells {p_reg[56]}]  \
  [get_cells {p_reg[48]}]  \
  [get_cells {p_reg[32]}]  \
  [get_cells {p_reg[0]}]  \
  [get_cells {p_reg[31]}]  \
  [get_cells {p_reg[47]}]  \
  [get_cells {p_reg[30]}]  \
  [get_cells {p_reg[29]}]  \
  [get_cells {p_reg[55]}]  \
  [get_cells {p_reg[46]}]  \
  [get_cells {p_reg[28]}]  \
  [get_cells {p_reg[27]}]  \
  [get_cells {p_reg[45]}]  \
  [get_cells {p_reg[26]}]  \
  [get_cells {p_reg[25]}]  \
  [get_cells {p_reg[59]}]  \
  [get_cells {p_reg[54]}]  \
  [get_cells {p_reg[44]}]  \
  [get_cells {p_reg[24]}]  \
  [get_cells {p_reg[23]}]  \
  [get_cells {p_reg[43]}]  \
  [get_cells {p_reg[22]}]  \
  [get_cells {p_reg[21]}]  \
  [get_cells {p_reg[53]}]  \
  [get_cells {p_reg[42]}]  \
  [get_cells {p_reg[20]}]  \
  [get_cells {p_reg[19]}]  \
  [get_cells {p_reg[41]}]  \
  [get_cells {p_reg[18]}]  \
  [get_cells {p_reg[11]}]  \
  [get_cells {p_reg[61]}]  \
  [get_cells {p_reg[58]}]  \
  [get_cells {p_reg[52]}]  \
  [get_cells {p_reg[33]}]  \
  [get_cells {p_reg[40]}]  \
  [get_cells {p_reg[16]}]  \
  [get_cells {p_reg[15]}]  \
  [get_cells {p_reg[49]}]  \
  [get_cells {p_reg[39]}]  \
  [get_cells {p_reg[14]}]  \
  [get_cells {p_reg[13]}]  \
  [get_cells {p_reg[7]}]  \
  [get_cells {p_reg[51]}]  \
  [get_cells {p_reg[38]}]  \
  [get_cells {p_reg[12]}]  \
  [get_cells {p_reg[9]}]  \
  [get_cells {p_reg[37]}]  \
  [get_cells {p_reg[10]}]  \
  [get_cells {p_reg[17]}]  \
  [get_cells {p_reg[57]}]  \
  [get_cells {p_reg[50]}]  \
  [get_cells {p_reg[36]}]  \
  [get_cells {p_reg[8]}]  \
  [get_cells {p_reg[35]}]  \
  [get_cells {p_reg[6]}]  \
  [get_cells {p_reg[5]}]  \
  [get_cells {p_reg[34]}]  \
  [get_cells {p_reg[4]}]  \
  [get_cells {p_reg[3]}]  \
  [get_cells {p_reg[2]}]  \
  [get_cells {p_reg[1]}]  \
  [get_cells {mult_reg_reg[36]}]  \
  [get_cells {mult_reg_reg[37]}]  \
  [get_cells {mult_reg_reg[38]}]  \
  [get_cells {mult_reg_reg[40]}]  \
  [get_cells {mult_reg_reg[41]}]  \
  [get_cells {mult_reg_reg[42]}]  \
  [get_cells {mult_reg_reg[44]}]  \
  [get_cells {mult_reg_reg[45]}]  \
  [get_cells {mult_reg_reg[46]}]  \
  [get_cells {mult_reg_reg[47]}]  \
  [get_cells {mult_reg_reg[48]}]  \
  [get_cells {mult_reg_reg[49]}]  \
  [get_cells {mult_reg_reg[50]}]  \
  [get_cells {mult_reg_reg[51]}]  \
  [get_cells {mult_reg_reg[52]}]  \
  [get_cells {mult_reg_reg[53]}]  \
  [get_cells {mult_reg_reg[54]}]  \
  [get_cells {mult_reg_reg[56]}]  \
  [get_cells {mult_reg_reg[57]}]  \
  [get_cells {mult_reg_reg[58]}]  \
  [get_cells {mult_reg_reg[60]}]  \
  [get_cells {mult_reg_reg[61]}]  \
  [get_cells {mult_reg_reg[62]}]  \
  [get_cells {mult_reg_reg[15]}]  \
  [get_cells {mult_reg_reg[43]}]  \
  [get_cells {mult_reg_reg[39]}]  \
  [get_cells {mult_reg_reg[35]}]  \
  [get_cells {mult_reg_reg[27]}]  \
  [get_cells {mult_reg_reg[11]}]  \
  [get_cells {mult_reg_reg[23]}]  \
  [get_cells {mult_reg_reg[19]}]  \
  [get_cells {mult_reg_reg[7]}]  \
  [get_cells {mult_reg_reg[63]}]  \
  [get_cells {mult_reg_reg[0]}]  \
  [get_cells {mult_reg_reg[1]}]  \
  [get_cells {mult_reg_reg[2]}]  \
  [get_cells {mult_reg_reg[3]}]  \
  [get_cells {mult_reg_reg[4]}]  \
  [get_cells {mult_reg_reg[5]}]  \
  [get_cells {mult_reg_reg[6]}]  \
  [get_cells {mult_reg_reg[8]}]  \
  [get_cells {mult_reg_reg[9]}]  \
  [get_cells {mult_reg_reg[10]}]  \
  [get_cells {mult_reg_reg[59]}]  \
  [get_cells {mult_reg_reg[12]}]  \
  [get_cells {mult_reg_reg[13]}]  \
  [get_cells {mult_reg_reg[14]}]  \
  [get_cells {mult_reg_reg[16]}]  \
  [get_cells {mult_reg_reg[17]}]  \
  [get_cells {mult_reg_reg[18]}]  \
  [get_cells {mult_reg_reg[20]}]  \
  [get_cells {mult_reg_reg[21]}]  \
  [get_cells {mult_reg_reg[22]}]  \
  [get_cells {mult_reg_reg[24]}]  \
  [get_cells {mult_reg_reg[25]}]  \
  [get_cells {mult_reg_reg[26]}]  \
  [get_cells {mult_reg_reg[55]}]  \
  [get_cells {mult_reg_reg[28]}]  \
  [get_cells {mult_reg_reg[29]}]  \
  [get_cells {mult_reg_reg[30]}]  \
  [get_cells {mult_reg_reg[31]}]  \
  [get_cells {mult_reg_reg[32]}]  \
  [get_cells {mult_reg_reg[33]}]  \
  [get_cells {mult_reg_reg[34]}]  \
  [get_cells {b_reg_reg[17]}]  \
  [get_cells {b_reg_reg[3]}]  \
  [get_cells {b_reg_reg[7]}]  \
  [get_cells {b_reg_reg[30]}]  \
  [get_cells {a_reg_reg[20]}]  \
  [get_cells {b_reg_reg[13]}]  \
  [get_cells {b_reg_reg[24]}]  \
  [get_cells {b_reg_reg[22]}]  \
  [get_cells {b_reg_reg[6]}]  \
  [get_cells {b_reg_reg[11]}]  \
  [get_cells {b_reg_reg[0]}]  \
  [get_cells {b_reg_reg[4]}]  \
  [get_cells {a_reg_reg[25]}]  \
  [get_cells {a_reg_reg[28]}]  \
  [get_cells {a_reg_reg[27]}]  \
  [get_cells {b_reg_reg[29]}]  \
  [get_cells {b_reg_reg[18]}]  \
  [get_cells {a_reg_reg[29]}]  \
  [get_cells {b_reg_reg[31]}]  \
  [get_cells {b_reg_reg[23]}]  \
  [get_cells {b_reg_reg[19]}]  \
  [get_cells {a_reg_reg[31]}]  \
  [get_cells {b_reg_reg[2]}]  \
  [get_cells {b_reg_reg[5]}]  \
  [get_cells {b_reg_reg[8]}]  \
  [get_cells {b_reg_reg[10]}]  \
  [get_cells {b_reg_reg[12]}]  \
  [get_cells {b_reg_reg[21]}]  \
  [get_cells {b_reg_reg[14]}]  \
  [get_cells {b_reg_reg[20]}]  \
  [get_cells {b_reg_reg[28]}]  \
  [get_cells {a_reg_reg[13]}]  \
  [get_cells {a_reg_reg[15]}]  \
  [get_cells {a_reg_reg[9]}]  \
  [get_cells {a_reg_reg[0]}]  \
  [get_cells {a_reg_reg[26]}]  \
  [get_cells {b_reg_reg[27]}]  \
  [get_cells {a_reg_reg[24]}]  \
  [get_cells {a_reg_reg[5]}]  \
  [get_cells {b_reg_reg[15]}]  \
  [get_cells {a_reg_reg[14]}]  \
  [get_cells {a_reg_reg[18]}]  \
  [get_cells {a_reg_reg[23]}]  \
  [get_cells {a_reg_reg[30]}]  \
  [get_cells {a_reg_reg[21]}]  \
  [get_cells {a_reg_reg[19]}]  \
  [get_cells {a_reg_reg[6]}]  \
  [get_cells {a_reg_reg[12]}]  \
  [get_cells {b_reg_reg[1]}]  \
  [get_cells {b_reg_reg[26]}]  \
  [get_cells {b_reg_reg[25]}]  \
  [get_cells {a_reg_reg[17]}]  \
  [get_cells {b_reg_reg[16]}]  \
  [get_cells {a_reg_reg[16]}]  \
  [get_cells {a_reg_reg[11]}]  \
  [get_cells {a_reg_reg[22]}]  \
  [get_cells {a_reg_reg[10]}]  \
  [get_cells {b_reg_reg[9]}]  \
  [get_cells {a_reg_reg[7]}]  \
  [get_cells {a_reg_reg[8]}]  \
  [get_cells {a_reg_reg[3]}]  \
  [get_cells {a_reg_reg[4]}]  \
  [get_cells {a_reg_reg[2]}]  \
  [get_cells {a_reg_reg[1]}] ]
group_path -name I2O -from [list \
  [get_ports iClk]  \
  [get_ports rst_n]  \
  [get_ports {a[31]}]  \
  [get_ports {a[30]}]  \
  [get_ports {a[29]}]  \
  [get_ports {a[28]}]  \
  [get_ports {a[27]}]  \
  [get_ports {a[26]}]  \
  [get_ports {a[25]}]  \
  [get_ports {a[24]}]  \
  [get_ports {a[23]}]  \
  [get_ports {a[22]}]  \
  [get_ports {a[21]}]  \
  [get_ports {a[20]}]  \
  [get_ports {a[19]}]  \
  [get_ports {a[18]}]  \
  [get_ports {a[17]}]  \
  [get_ports {a[16]}]  \
  [get_ports {a[15]}]  \
  [get_ports {a[14]}]  \
  [get_ports {a[13]}]  \
  [get_ports {a[12]}]  \
  [get_ports {a[11]}]  \
  [get_ports {a[10]}]  \
  [get_ports {a[9]}]  \
  [get_ports {a[8]}]  \
  [get_ports {a[7]}]  \
  [get_ports {a[6]}]  \
  [get_ports {a[5]}]  \
  [get_ports {a[4]}]  \
  [get_ports {a[3]}]  \
  [get_ports {a[2]}]  \
  [get_ports {a[1]}]  \
  [get_ports {a[0]}]  \
  [get_ports {b[31]}]  \
  [get_ports {b[30]}]  \
  [get_ports {b[29]}]  \
  [get_ports {b[28]}]  \
  [get_ports {b[27]}]  \
  [get_ports {b[26]}]  \
  [get_ports {b[25]}]  \
  [get_ports {b[24]}]  \
  [get_ports {b[23]}]  \
  [get_ports {b[22]}]  \
  [get_ports {b[21]}]  \
  [get_ports {b[20]}]  \
  [get_ports {b[19]}]  \
  [get_ports {b[18]}]  \
  [get_ports {b[17]}]  \
  [get_ports {b[16]}]  \
  [get_ports {b[15]}]  \
  [get_ports {b[14]}]  \
  [get_ports {b[13]}]  \
  [get_ports {b[12]}]  \
  [get_ports {b[11]}]  \
  [get_ports {b[10]}]  \
  [get_ports {b[9]}]  \
  [get_ports {b[8]}]  \
  [get_ports {b[7]}]  \
  [get_ports {b[6]}]  \
  [get_ports {b[5]}]  \
  [get_ports {b[4]}]  \
  [get_ports {b[3]}]  \
  [get_ports {b[2]}]  \
  [get_ports {b[1]}]  \
  [get_ports {b[0]}] ] -to [list \
  [get_ports {p[63]}]  \
  [get_ports {p[62]}]  \
  [get_ports {p[61]}]  \
  [get_ports {p[60]}]  \
  [get_ports {p[59]}]  \
  [get_ports {p[58]}]  \
  [get_ports {p[57]}]  \
  [get_ports {p[56]}]  \
  [get_ports {p[55]}]  \
  [get_ports {p[54]}]  \
  [get_ports {p[53]}]  \
  [get_ports {p[52]}]  \
  [get_ports {p[51]}]  \
  [get_ports {p[50]}]  \
  [get_ports {p[49]}]  \
  [get_ports {p[48]}]  \
  [get_ports {p[47]}]  \
  [get_ports {p[46]}]  \
  [get_ports {p[45]}]  \
  [get_ports {p[44]}]  \
  [get_ports {p[43]}]  \
  [get_ports {p[42]}]  \
  [get_ports {p[41]}]  \
  [get_ports {p[40]}]  \
  [get_ports {p[39]}]  \
  [get_ports {p[38]}]  \
  [get_ports {p[37]}]  \
  [get_ports {p[36]}]  \
  [get_ports {p[35]}]  \
  [get_ports {p[34]}]  \
  [get_ports {p[33]}]  \
  [get_ports {p[32]}]  \
  [get_ports {p[31]}]  \
  [get_ports {p[30]}]  \
  [get_ports {p[29]}]  \
  [get_ports {p[28]}]  \
  [get_ports {p[27]}]  \
  [get_ports {p[26]}]  \
  [get_ports {p[25]}]  \
  [get_ports {p[24]}]  \
  [get_ports {p[23]}]  \
  [get_ports {p[22]}]  \
  [get_ports {p[21]}]  \
  [get_ports {p[20]}]  \
  [get_ports {p[19]}]  \
  [get_ports {p[18]}]  \
  [get_ports {p[17]}]  \
  [get_ports {p[16]}]  \
  [get_ports {p[15]}]  \
  [get_ports {p[14]}]  \
  [get_ports {p[13]}]  \
  [get_ports {p[12]}]  \
  [get_ports {p[11]}]  \
  [get_ports {p[10]}]  \
  [get_ports {p[9]}]  \
  [get_ports {p[8]}]  \
  [get_ports {p[7]}]  \
  [get_ports {p[6]}]  \
  [get_ports {p[5]}]  \
  [get_ports {p[4]}]  \
  [get_ports {p[3]}]  \
  [get_ports {p[2]}]  \
  [get_ports {p[1]}]  \
  [get_ports {p[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports rst_n]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {a[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -min 0.5 [get_ports {b[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports rst_n]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {a[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -rise -max 0.6 [get_ports {b[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports rst_n]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {a[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -min 0.4 [get_ports {b[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports rst_n]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {a[0]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[31]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[30]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[29]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[28]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[27]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[26]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[25]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[24]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[23]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[22]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[21]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[20]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[19]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[18]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[17]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[16]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[15]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[14]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[13]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[12]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[11]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[10]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[9]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[8]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[7]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[6]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[5]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[4]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[3]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[2]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[1]}]
set_input_delay -clock [get_clocks CLK] -add_delay -fall -max 0.5 [get_ports {b[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[63]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[62]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[61]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[60]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[59]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[58]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[57]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[56]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[55]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[54]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[53]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[52]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[51]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[50]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[49]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[48]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[47]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[46]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[45]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[44]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[43]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[42]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[41]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[40]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[39]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[38]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[37]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[36]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[35]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[34]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[33]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[32]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -min 0.8 [get_ports {p[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[63]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[62]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[61]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[60]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[59]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[58]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[57]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[56]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[55]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[54]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[53]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[52]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[51]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[50]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[49]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[48]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[47]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[46]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[45]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[44]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[43]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[42]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[41]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[40]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[39]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[38]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[37]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[36]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[35]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[34]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[33]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[32]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -rise -max 4.4 [get_ports {p[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[63]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[62]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[61]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[60]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[59]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[58]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[57]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[56]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[55]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[54]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[53]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[52]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[51]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[50]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[49]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[48]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[47]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[46]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[45]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[44]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[43]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[42]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[41]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[40]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[39]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[38]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[37]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[36]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[35]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[34]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[33]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[32]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -min 2.1 [get_ports {p[0]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[63]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[62]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[61]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[60]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[59]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[58]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[57]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[56]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[55]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[54]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[53]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[52]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[51]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[50]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[49]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[48]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[47]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[46]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[45]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[44]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[43]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[42]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[41]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[40]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[39]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[38]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[37]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[36]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[35]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[34]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[33]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[32]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[31]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[30]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[29]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[28]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[27]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[26]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[25]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[24]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[23]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[22]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[21]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[20]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[19]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[18]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[17]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[16]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[15]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[14]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[13]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[12]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[11]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[10]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[9]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[8]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[7]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[6]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[5]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[4]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[3]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[2]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[1]}]
set_output_delay -clock [get_clocks CLK] -add_delay -fall -max 4.1 [get_ports {p[0]}]
set_max_fanout 1.000 [get_ports rst_n]
set_max_fanout 1.000 [get_ports {a[31]}]
set_max_fanout 1.000 [get_ports {a[30]}]
set_max_fanout 1.000 [get_ports {a[29]}]
set_max_fanout 1.000 [get_ports {a[28]}]
set_max_fanout 1.000 [get_ports {a[27]}]
set_max_fanout 1.000 [get_ports {a[26]}]
set_max_fanout 1.000 [get_ports {a[25]}]
set_max_fanout 1.000 [get_ports {a[24]}]
set_max_fanout 1.000 [get_ports {a[23]}]
set_max_fanout 1.000 [get_ports {a[22]}]
set_max_fanout 1.000 [get_ports {a[21]}]
set_max_fanout 1.000 [get_ports {a[20]}]
set_max_fanout 1.000 [get_ports {a[19]}]
set_max_fanout 1.000 [get_ports {a[18]}]
set_max_fanout 1.000 [get_ports {a[17]}]
set_max_fanout 1.000 [get_ports {a[16]}]
set_max_fanout 1.000 [get_ports {a[15]}]
set_max_fanout 1.000 [get_ports {a[14]}]
set_max_fanout 1.000 [get_ports {a[13]}]
set_max_fanout 1.000 [get_ports {a[12]}]
set_max_fanout 1.000 [get_ports {a[11]}]
set_max_fanout 1.000 [get_ports {a[10]}]
set_max_fanout 1.000 [get_ports {a[9]}]
set_max_fanout 1.000 [get_ports {a[8]}]
set_max_fanout 1.000 [get_ports {a[7]}]
set_max_fanout 1.000 [get_ports {a[6]}]
set_max_fanout 1.000 [get_ports {a[5]}]
set_max_fanout 1.000 [get_ports {a[4]}]
set_max_fanout 1.000 [get_ports {a[3]}]
set_max_fanout 1.000 [get_ports {a[2]}]
set_max_fanout 1.000 [get_ports {a[1]}]
set_max_fanout 1.000 [get_ports {a[0]}]
set_max_fanout 1.000 [get_ports {b[31]}]
set_max_fanout 1.000 [get_ports {b[30]}]
set_max_fanout 1.000 [get_ports {b[29]}]
set_max_fanout 1.000 [get_ports {b[28]}]
set_max_fanout 1.000 [get_ports {b[27]}]
set_max_fanout 1.000 [get_ports {b[26]}]
set_max_fanout 1.000 [get_ports {b[25]}]
set_max_fanout 1.000 [get_ports {b[24]}]
set_max_fanout 1.000 [get_ports {b[23]}]
set_max_fanout 1.000 [get_ports {b[22]}]
set_max_fanout 1.000 [get_ports {b[21]}]
set_max_fanout 1.000 [get_ports {b[20]}]
set_max_fanout 1.000 [get_ports {b[19]}]
set_max_fanout 1.000 [get_ports {b[18]}]
set_max_fanout 1.000 [get_ports {b[17]}]
set_max_fanout 1.000 [get_ports {b[16]}]
set_max_fanout 1.000 [get_ports {b[15]}]
set_max_fanout 1.000 [get_ports {b[14]}]
set_max_fanout 1.000 [get_ports {b[13]}]
set_max_fanout 1.000 [get_ports {b[12]}]
set_max_fanout 1.000 [get_ports {b[11]}]
set_max_fanout 1.000 [get_ports {b[10]}]
set_max_fanout 1.000 [get_ports {b[9]}]
set_max_fanout 1.000 [get_ports {b[8]}]
set_max_fanout 1.000 [get_ports {b[7]}]
set_max_fanout 1.000 [get_ports {b[6]}]
set_max_fanout 1.000 [get_ports {b[5]}]
set_max_fanout 1.000 [get_ports {b[4]}]
set_max_fanout 1.000 [get_ports {b[3]}]
set_max_fanout 1.000 [get_ports {b[2]}]
set_max_fanout 1.000 [get_ports {b[1]}]
set_max_fanout 1.000 [get_ports {b[0]}]
set_input_transition -min 0.5 [get_ports rst_n]
set_input_transition -max 1.0 [get_ports rst_n]
set_input_transition -min 0.5 [get_ports {a[31]}]
set_input_transition -max 1.0 [get_ports {a[31]}]
set_input_transition -min 0.5 [get_ports {a[30]}]
set_input_transition -max 1.0 [get_ports {a[30]}]
set_input_transition -min 0.5 [get_ports {a[29]}]
set_input_transition -max 1.0 [get_ports {a[29]}]
set_input_transition -min 0.5 [get_ports {a[28]}]
set_input_transition -max 1.0 [get_ports {a[28]}]
set_input_transition -min 0.5 [get_ports {a[27]}]
set_input_transition -max 1.0 [get_ports {a[27]}]
set_input_transition -min 0.5 [get_ports {a[26]}]
set_input_transition -max 1.0 [get_ports {a[26]}]
set_input_transition -min 0.5 [get_ports {a[25]}]
set_input_transition -max 1.0 [get_ports {a[25]}]
set_input_transition -min 0.5 [get_ports {a[24]}]
set_input_transition -max 1.0 [get_ports {a[24]}]
set_input_transition -min 0.5 [get_ports {a[23]}]
set_input_transition -max 1.0 [get_ports {a[23]}]
set_input_transition -min 0.5 [get_ports {a[22]}]
set_input_transition -max 1.0 [get_ports {a[22]}]
set_input_transition -min 0.5 [get_ports {a[21]}]
set_input_transition -max 1.0 [get_ports {a[21]}]
set_input_transition -min 0.5 [get_ports {a[20]}]
set_input_transition -max 1.0 [get_ports {a[20]}]
set_input_transition -min 0.5 [get_ports {a[19]}]
set_input_transition -max 1.0 [get_ports {a[19]}]
set_input_transition -min 0.5 [get_ports {a[18]}]
set_input_transition -max 1.0 [get_ports {a[18]}]
set_input_transition -min 0.5 [get_ports {a[17]}]
set_input_transition -max 1.0 [get_ports {a[17]}]
set_input_transition -min 0.5 [get_ports {a[16]}]
set_input_transition -max 1.0 [get_ports {a[16]}]
set_input_transition -min 0.5 [get_ports {a[15]}]
set_input_transition -max 1.0 [get_ports {a[15]}]
set_input_transition -min 0.5 [get_ports {a[14]}]
set_input_transition -max 1.0 [get_ports {a[14]}]
set_input_transition -min 0.5 [get_ports {a[13]}]
set_input_transition -max 1.0 [get_ports {a[13]}]
set_input_transition -min 0.5 [get_ports {a[12]}]
set_input_transition -max 1.0 [get_ports {a[12]}]
set_input_transition -min 0.5 [get_ports {a[11]}]
set_input_transition -max 1.0 [get_ports {a[11]}]
set_input_transition -min 0.5 [get_ports {a[10]}]
set_input_transition -max 1.0 [get_ports {a[10]}]
set_input_transition -min 0.5 [get_ports {a[9]}]
set_input_transition -max 1.0 [get_ports {a[9]}]
set_input_transition -min 0.5 [get_ports {a[8]}]
set_input_transition -max 1.0 [get_ports {a[8]}]
set_input_transition -min 0.5 [get_ports {a[7]}]
set_input_transition -max 1.0 [get_ports {a[7]}]
set_input_transition -min 0.5 [get_ports {a[6]}]
set_input_transition -max 1.0 [get_ports {a[6]}]
set_input_transition -min 0.5 [get_ports {a[5]}]
set_input_transition -max 1.0 [get_ports {a[5]}]
set_input_transition -min 0.5 [get_ports {a[4]}]
set_input_transition -max 1.0 [get_ports {a[4]}]
set_input_transition -min 0.5 [get_ports {a[3]}]
set_input_transition -max 1.0 [get_ports {a[3]}]
set_input_transition -min 0.5 [get_ports {a[2]}]
set_input_transition -max 1.0 [get_ports {a[2]}]
set_input_transition -min 0.5 [get_ports {a[1]}]
set_input_transition -max 1.0 [get_ports {a[1]}]
set_input_transition -min 0.5 [get_ports {a[0]}]
set_input_transition -max 1.0 [get_ports {a[0]}]
set_input_transition -min 0.5 [get_ports {b[31]}]
set_input_transition -max 1.0 [get_ports {b[31]}]
set_input_transition -min 0.5 [get_ports {b[30]}]
set_input_transition -max 1.0 [get_ports {b[30]}]
set_input_transition -min 0.5 [get_ports {b[29]}]
set_input_transition -max 1.0 [get_ports {b[29]}]
set_input_transition -min 0.5 [get_ports {b[28]}]
set_input_transition -max 1.0 [get_ports {b[28]}]
set_input_transition -min 0.5 [get_ports {b[27]}]
set_input_transition -max 1.0 [get_ports {b[27]}]
set_input_transition -min 0.5 [get_ports {b[26]}]
set_input_transition -max 1.0 [get_ports {b[26]}]
set_input_transition -min 0.5 [get_ports {b[25]}]
set_input_transition -max 1.0 [get_ports {b[25]}]
set_input_transition -min 0.5 [get_ports {b[24]}]
set_input_transition -max 1.0 [get_ports {b[24]}]
set_input_transition -min 0.5 [get_ports {b[23]}]
set_input_transition -max 1.0 [get_ports {b[23]}]
set_input_transition -min 0.5 [get_ports {b[22]}]
set_input_transition -max 1.0 [get_ports {b[22]}]
set_input_transition -min 0.5 [get_ports {b[21]}]
set_input_transition -max 1.0 [get_ports {b[21]}]
set_input_transition -min 0.5 [get_ports {b[20]}]
set_input_transition -max 1.0 [get_ports {b[20]}]
set_input_transition -min 0.5 [get_ports {b[19]}]
set_input_transition -max 1.0 [get_ports {b[19]}]
set_input_transition -min 0.5 [get_ports {b[18]}]
set_input_transition -max 1.0 [get_ports {b[18]}]
set_input_transition -min 0.5 [get_ports {b[17]}]
set_input_transition -max 1.0 [get_ports {b[17]}]
set_input_transition -min 0.5 [get_ports {b[16]}]
set_input_transition -max 1.0 [get_ports {b[16]}]
set_input_transition -min 0.5 [get_ports {b[15]}]
set_input_transition -max 1.0 [get_ports {b[15]}]
set_input_transition -min 0.5 [get_ports {b[14]}]
set_input_transition -max 1.0 [get_ports {b[14]}]
set_input_transition -min 0.5 [get_ports {b[13]}]
set_input_transition -max 1.0 [get_ports {b[13]}]
set_input_transition -min 0.5 [get_ports {b[12]}]
set_input_transition -max 1.0 [get_ports {b[12]}]
set_input_transition -min 0.5 [get_ports {b[11]}]
set_input_transition -max 1.0 [get_ports {b[11]}]
set_input_transition -min 0.5 [get_ports {b[10]}]
set_input_transition -max 1.0 [get_ports {b[10]}]
set_input_transition -min 0.5 [get_ports {b[9]}]
set_input_transition -max 1.0 [get_ports {b[9]}]
set_input_transition -min 0.5 [get_ports {b[8]}]
set_input_transition -max 1.0 [get_ports {b[8]}]
set_input_transition -min 0.5 [get_ports {b[7]}]
set_input_transition -max 1.0 [get_ports {b[7]}]
set_input_transition -min 0.5 [get_ports {b[6]}]
set_input_transition -max 1.0 [get_ports {b[6]}]
set_input_transition -min 0.5 [get_ports {b[5]}]
set_input_transition -max 1.0 [get_ports {b[5]}]
set_input_transition -min 0.5 [get_ports {b[4]}]
set_input_transition -max 1.0 [get_ports {b[4]}]
set_input_transition -min 0.5 [get_ports {b[3]}]
set_input_transition -max 1.0 [get_ports {b[3]}]
set_input_transition -min 0.5 [get_ports {b[2]}]
set_input_transition -max 1.0 [get_ports {b[2]}]
set_input_transition -min 0.5 [get_ports {b[1]}]
set_input_transition -max 1.0 [get_ports {b[1]}]
set_input_transition -min 0.5 [get_ports {b[0]}]
set_input_transition -max 1.0 [get_ports {b[0]}]
set_wire_load_mode "enclosed"
set_clock_latency -min 1.0 [get_clocks CLK]
set_clock_latency -max 2.0 [get_clocks CLK]
set_clock_uncertainty -setup 0.3 [get_clocks CLK]
set_clock_uncertainty -hold 0.3 [get_clocks CLK]
