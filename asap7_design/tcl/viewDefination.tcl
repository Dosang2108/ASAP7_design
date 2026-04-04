set LIB_PATH "../../Asap7/asap7/asap7sc7p5t_28/LIB/NLDM"

create_library_set -name libset_typical \
    -timing [glob ${LIB_PATH}/*.lib]

create_rc_corner -name rc_typical -T 25
create_delay_corner -name delay_corner_typical \
	-library_set libset_typical \
        -rc_corner rc_typical

# Dam bao file .sdc nay co ton tai trong folder outputs
create_constraint_mode -name constraint_typical \
	-sdc_files {outputs/synthesis.sdc}

create_analysis_view -name view_typical \
	-constraint_mode constraint_typical \
	-delay_corner delay_corner_typical

set_analysis_view -setup {view_typical} -hold {view_typical}
