set LIB_PATH "../../Asap7/asap7/asap7sc7p5t_28/LIB/CCS"
set MY_LIB [glob ${LIB_PATH}/*_RVT_TT_ccs_*.lib]
create_library_set -name libset_typical \
    -timing $MY_LIB

create_rc_corner -name rcconner -preRoute_res 1 -postRoute_res 1 -preRoute_cap 1\
    -postRoute_cap 1 -postRoute_xcap 1 -preRoute_clkres 0 -preRoute_clkcap 0 -T 25

create_op_cond -name opcond -library_file  $MY_LIB -P 1 -V 0.7 -T 25


create_delay_corner -name corner -library_set libset \
-opcond_library opcond -rc_corner rccorner

create_constraint_mode -name mode_normal -sdc_files ./outputs/synthesis.sdc

create_analysis_view -name tt -constraint_mode mode_normal -delay_corner corner

set_analysis_view -setup {tt} -hold {tt}

