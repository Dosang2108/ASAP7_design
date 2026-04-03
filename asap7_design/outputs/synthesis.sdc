# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Fri Apr 03 16:24:03 +07 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design Adder32

create_clock -name "CLK" -period 10.0 -waveform {0.0 5.0} [get_ports iClk]
set_clock_transition -min 0.5 [get_clocks CLK]
set_clock_transition -max 1.0 [get_clocks CLK]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_clock_latency -min 1.0 [get_clocks CLK]
set_clock_latency -max 2.0 [get_clocks CLK]
set_clock_uncertainty -setup 0.3 [get_clocks CLK]
set_clock_uncertainty -hold 0.3 [get_clocks CLK]
