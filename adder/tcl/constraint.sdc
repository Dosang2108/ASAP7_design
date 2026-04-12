set CLK iClk

set netDelay 70

###############################################################
# CLOCK constraints 
###############################################################

create_clock [get_ports $CLK] -name CLK -period 1000 -waveform {0 500}

set_clock_transition -min 50 [all_clocks]
set_clock_transition -max 100 [all_clocks]

set_clock_uncertainty 200 [all_clocks]

set_clock_latency -min 500 [all_clocks]
set_clock_latency -max 500 [all_clocks]

###############################################################
# Input constraints 
###############################################################
set_input_transition -min 50 [remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_transition -max 100 [remove_from_collection [all_inputs] [get_ports $CLK]]

set_input_delay -clock CLK -rise -min [expr 100+$netDelay] [remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -rise -max [expr 250+$netDelay] [remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -fall -min [expr 100+$netDelay] [remove_from_collection [all_inputs] [get_ports $CLK]]
set_input_delay -clock CLK -fall -max [expr 250+$netDelay] [remove_from_collection [all_inputs] [get_ports $CLK]]

set_max_fanout 20 [remove_from_collection \
[remove_from_collection [all_inputs] [all_outputs]] [get_ports $CLK]]

set_load 2.3 -pin_load [all_inputs]

###############################################################
# Output constraints 
###############################################################
set_output_delay -clock CLK -rise -min [expr 150+$netDelay] [all_outputs]
set_output_delay -clock CLK -rise -max [expr 300+$netDelay] [all_outputs]
set_output_delay -clock CLK -fall -min [expr 150+$netDelay] [all_outputs]
set_output_delay -clock CLK -fall -max [expr 300+$netDelay] [all_outputs]

set_load 2.3 -pin_load [all_outputs]
