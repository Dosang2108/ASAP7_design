# define your clock's name here
set CLK iClk

# estimate worst case net delay across a chip
set netDelay 0.287

###############################################################
# CLOCK constraints 
###############################################################
create_clock $CLK -name CLK -period 10 -waveform {0 5}

# around typical cell transition
set_clock_transition -min 0.5 [all_clocks]
set_clock_transition -max 1.0 [all_clocks]

# around net delay from pin to core
set_clock_uncertainty $netDelay [all_clocks]

# temporary set like typical cell delay
# this value should be overrided later by set_propagated_clock
set_clock_latency -min 1.0 [all_clocks]
set_clock_latency -max 1.5 [all_clocks]

###############################################################
# Input constraints 
###############################################################
# around typical cell transition
set_input_transition -min 0.5 [remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_transition -max 1.0 [remove_from_collection [all_inputs] [get_ports $CLK]]

# IO rise/fall delay + net delay
set_input_delay -clock CLK -rise -min [expr 0.207+$netDelay] \
[remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -rise -max [expr 0.297+$netDelay] \
[remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -fall -min [expr 0.141+$netDelay] \
[remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -fall -max [expr 0.216+$netDelay] \
[remove_from_collection [all_inputs] [get_ports $CLK]]

# better be safe: set fanout of 1 for all inputs
set_max_fanout 1 [remove_from_collection \
[remove_from_collection [all_inputs] [all_outputs]] [get_ports $CLK]]

# load capacitance at IO pins
set_load 0.042 -pin_load [all_inputs]

###############################################################
# Output constraints 
###############################################################
# IO rise/fall delay + net delay
set_output_delay -clock CLK -rise -min [expr 0.515+$netDelay] [all_outputs]
set_output_delay -clock CLK -rise -max [expr 4.150+$netDelay] [all_outputs]
set_output_delay -clock CLK -fall -min [expr 1.837+$netDelay] [all_outputs]
set_output_delay -clock CLK -fall -max [expr 3.845+$netDelay] [all_outputs]

# load capacitance at IO pins
set_load 0.22 -pin_load [all_outputs]

