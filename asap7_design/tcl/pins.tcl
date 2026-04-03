 setPinAssignMode -pinEditInBatch true
#
# # =========================================
# # GET CORE BOUNDARY (FIX nested list)
# # =========================================
set coreBox [lindex [dbGet top.fPlan.box] 0]
#
set x_min [lindex $coreBox 0]
set y_min [lindex $coreBox 1]
set x_max [lindex $coreBox 2]
set y_max [lindex $coreBox 3]
#
puts "CoreBBox: $coreBox"
#
# # Offset tránh sát mép
set offset 5.0
#
# # =========================================
# # LEFT SIDE: a*
# # =========================================
set pins_a [dbGet top.terms.name a*]
set n [llength $pins_a]
#
if {$n > 0} {
     set step [expr ($y_max - $y_min - 2*$offset)/$n]
     set i 0
	foreach pin $pins_a {                   
		set y [expr $y_min + $offset + $i*$step]                             
		editPin -pin $pin \
			-layer M3 \                                                         
			-assign [list $x_min $y]
	        incr i
         }                                                                         
}             
# =========================================                    
# RIGHT SIDE: b*                                                                         
# =========================================                                                                        
set pins_b [dbGet top.terms.name b*]                                                                        
set n [llength $pins_b]                                                    
if {$n > 0} {                                                                           
	set step [expr ($y_max - $y_min - 2*$offset)/$n]                                  
	set i 0                                                                                     
	foreach pin $pins_b {                                                                                      
		set y [expr $y_min + $offset + $i*$step]                                                                                                   
		editPin -pin $pin \                                                                                                                     
			-layer M3 \                                                                                                                      
			-assign [list $x_max $y]                                                                                  
		incr i                                                                                                                       
	}                                                                       
}                                                                                                         
set pins_sum [dbGet top.terms.name sum*]                                                                                                   
set n [llength $pins_sum]                                                                                                             
if {$n > 0} {
set step [expr ($x_max - $x_min - 2*$offset)/$n]                                                                                                            
set i 0                                                                                                                                    
foreach pin $pins_sum {                                                                                                                           
set x [expr $x_min + $offset + $i*$step]                                                                                                    
editPin -pin $pin \                                                                                                       
	-layer M4 \                                                                                    
	-assign [list $x $y_max]                                                                                                              
incr i                                                                                                                                  
}                                                                                                                
}                                                               
set clk_pin [dbGet top.terms.name iClk]
if {[llength $clk_pin] > 0} {                                                                                     
set clk_x [expr ($x_min + $x_max)/2.0]                                                                                                        
editPin -pin $clk_pin \                                                                                                                              
	-layer M4 \
        -assign [list $clk_x $y_min]                                                                    
}                                                                                                            
setPinAssignMode -pinEditInBatch false                                                                                                                    
puts ">>> Pin assignment DONE"














































