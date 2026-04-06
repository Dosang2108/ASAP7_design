if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name libset_typical\
   -timing\
    [list ${::IMEX::libVar}/mmmc/asap7sc7p5t_AO_RVT_TT_nldm_211120.lib\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_INVBUF_RVT_TT_nldm_220122.lib\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_OA_RVT_TT_nldm_211120.lib\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SEQ_RVT_TT_nldm_220123.lib\
    ${::IMEX::libVar}/mmmc/asap7sc7p5t_SIMPLE_RVT_TT_nldm_211120.lib\
    ${::IMEX::libVar}/mmmc/srambank_256x4x32_6t122.lib]
create_rc_corner -name rc_typical\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -temperature 25
create_timing_condition -name default_mapping_tc_0\
   -library_sets [list libset_typical]
create_delay_corner -name delay_corner_typical\
   -timing_condition {default_mapping_tc_0}\
   -rc_corner rc_typical
create_constraint_mode -name constraint_typical\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/constraint_typical/constraint_typical.sdc]
create_analysis_view -name view_typical -constraint_mode constraint_typical -delay_corner delay_corner_typical -latency_file ${::IMEX::dataVar}/mmmc/views/view_typical/latency.sdc
set_analysis_view -setup [list view_typical] -hold [list view_typical]
