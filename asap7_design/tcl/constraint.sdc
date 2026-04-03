set CLK iClk
set netDelay 0.287

create_clock $CLK -name CLK -period 1- -waveform {0 5}

set_clock_transition -min 0.5 [all_clocks]
set_clock_transition -max 1.0 [all_clocks]
set_clok_uncertainty $netDelay [all_clocks]

set_clock_latency -min 1.0 [all_clocks]
set_clock_latency -max 1.5 [all_clocks]
