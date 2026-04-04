set_units -time ns -capacitance pF

create_clock -name clk -period 2.0 [get_ports clk]

set_clock_uncertainty 0.1 [get_clocks clk]
set_clock_transition 0.05 [get_clocks clk]

set_input_delay  0.6 -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0.6 -clock clk [all_outputs]

set_max_transition 0.2 [current_design]
set_max_fanout 20 [current_design]
set_load 0.05 [all_outputs]
