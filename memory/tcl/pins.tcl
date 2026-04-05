setPinAssignMode -pinEditInBatch true

set coreBox [lindex [dbGet top.fPlan.box] 0]
set x_min [lindex $coreBox 0]
set y_min [lindex $coreBox 1]
set x_max [lindex $coreBox 2]
set y_max [lindex $coreBox 3]

puts "CoreBBox: $coreBox"

set offset 5.0

set pins_left_raw [concat [dbGet top.terms.name s_axi_aw*] [dbGet top.terms.name s_axi_w*]]
set pins_left {}
foreach p $pins_left_raw { if {$p != "0x0"} { lappend pins_left $p } }

if {[llength $pins_left] > 0} {
    set n [llength $pins_left]
    set step [expr ($y_max - $y_min - 2*$offset)/$n]
    set i 0
    foreach pin $pins_left {
        set y [expr $y_min + $offset + $i*$step]
        editPin -pin $pin -layer M3 -assign [list $x_min $y]
        incr i
    }
} else {
    puts "WARNING: Not found the signal Write channel (s_axi_aw* ho?c s_axi_w*)"
}

set pins_right_raw [concat [dbGet top.terms.name s_axi_ar*] [dbGet top.terms.name s_axi_r*]]
set pins_right {}
foreach p $pins_right_raw { if {$p != "0x0"} { lappend pins_right $p } }

if {[llength $pins_right] > 0} {
    set n [llength $pins_right]
    set step [expr ($y_max - $y_min - 2*$offset)/$n]
    set i 0
    foreach pin $pins_right {
        set y [expr $y_min + $offset + $i*$step]
        editPin -pin $pin -layer M3 -assign [list $x_max $y]
        incr i
    }
} else {
    puts "WARNING: Not found signal Read channel (s_axi_ar* ho?c s_axi_r*)"
}

set pins_top_raw [dbGet top.terms.name s_axi_b*]
set pins_top {}
foreach p $pins_top_raw { if {$p != "0x0"} { lappend pins_top $p } }

if {[llength $pins_top] > 0} {
    set n [llength $pins_top]
    set step [expr ($x_max - $x_min - 2*$offset)/$n]
    set i 0
    foreach pin $pins_top {
        set x [expr $x_min + $offset + $i*$step]
        editPin -pin $pin -layer M4 -assign [list $x $y_max]
        incr i
    }
} else {
    puts "WARNING: No found signal Response channel (s_axi_b*)"
}

set pins_bot_raw [concat [dbGet top.terms.name clk] [dbGet top.terms.name rst_n]]
set pins_bottom {}
foreach p $pins_bot_raw { if {$p != "0x0"} { lappend pins_bottom $p } }

if {[llength $pins_bottom] > 0} {
    set n [llength $pins_bottom]
    set step [expr ($x_max - $x_min - 2*$offset)/($n + 1)]
    set i 1
    foreach pin $pins_bottom {
        set x [expr $x_min + $offset + $i*$step]
        editPin -pin $pin -layer M4 -assign [list $x $y_min]
        incr i
    }
} else {
    puts "WARNING: No found signal clk or rst_n"
}

setPinAssignMode -pinEditInBatch false
puts ">>> Pin assignment DONE"
