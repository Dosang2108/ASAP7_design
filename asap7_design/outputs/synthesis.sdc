# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Mon Mar 30 15:31:30 +07 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design Adder32

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
