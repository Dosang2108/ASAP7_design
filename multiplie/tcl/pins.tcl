setPinAssignMode -pinEditInBatch true

# =========================================
# GET CORE BOUNDARY
# =========================================
set coreBox [lindex [dbGet top.fPlan.box] 0]
set x_min [lindex $coreBox 0]
set y_min [lindex $coreBox 1]
set x_max [lindex $coreBox 2]
set y_max [lindex $coreBox 3]

puts "CoreBBox: $coreBox"

# Offset tránh sát mép
set offset 5.0

# =========================================
# LEFT SIDE: iA* (S?a a* thành iA* cho kh?p Verilog)
# =========================================
set pins_a [dbGet top.terms.name iA*]
# THÊM ÐI?U KI?N CH?N L?I 0x0
if {$pins_a != "0x0" && [llength $pins_a] > 0} {
    set n [llength $pins_a]
    set step [expr ($y_max - $y_min - 2*$offset)/$n]
    set i 0
    foreach pin $pins_a {                   
        set y [expr $y_min + $offset + $i*$step]                             
        editPin -pin $pin -layer M3 -assign [list $x_min $y]
        incr i
    }                                                                         
} else {
    puts "WARNING: Không tìm th?y chân iA*"
}

# =========================================                    
# RIGHT SIDE: iB* (S?a b* thành iB* cho kh?p Verilog)
# =========================================                                                                        
set pins_b [dbGet top.terms.name iB*]                                                                        
if {$pins_b != "0x0" && [llength $pins_b] > 0} {                                                                           
    set n [llength $pins_b]
    set step [expr ($y_max - $y_min - 2*$offset)/$n]                                  
    set i 0                                                                                     
    foreach pin $pins_b {                                                                                      
        set y [expr $y_min + $offset + $i*$step]                                                                                                   
        editPin -pin $pin -layer M3 -assign [list $x_max $y]                                                                                  
        incr i                                                                                                                       
    }                                                                       
} else {
    puts "WARNING: Không tìm th?y chân iB*"
}                                                                                                       

# =========================================                    
# TOP SIDE: oS* (S?a oSum* thành oS*)
# =========================================
set pins_sum [dbGet top.terms.name oS*]                                                                                                   
if {$pins_sum != "0x0" && [llength $pins_sum] > 0} {
    set n [llength $pins_sum]
    set step [expr ($x_max - $x_min - 2*$offset)/$n]                                                                                                            
    set i 0                                                                                                                                    
    foreach pin $pins_sum {                                                                                                                           
        set x [expr $x_min + $offset + $i*$step]                                                                                                    
        editPin -pin $pin -layer M4 -assign [list $x $y_max]                                                                                                              
        incr i                                                                                                                                  
    }                                                                                                                
} else {
    puts "WARNING: not found signal oS*"
}                                                         

# =========================================                    
# BOTTOM SIDE: iClk                                                                        
# =========================================
set clk_pin [dbGet top.terms.name iClk]
if {$clk_pin != "0x0" && [llength $clk_pin] > 0} {                                                                                     
    set clk_x [expr ($x_min + $x_max)/2.0]                                                                                                        
    editPin -pin $clk_pin -layer M4 -assign [list $clk_x $y_min]                                                                    
} else {
    puts "WARNING: Không tìm th?y chân iClk"
}                                                                                                            

setPinAssignMode -pinEditInBatch false                                                                                                                    
puts ">>> Pin assignment DONE"
