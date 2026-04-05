set ASAP7_DIR "../../Asap7/asap7"
set LIB_PATH "${ASAP7_DIR}/asap7sc7p5t_28/LIB/NLDM"
set SRAM_LIB_PATH "${ASAP7_DIR}/asap7_sram_0p0/generated/LIB"

set STD_LIB  [glob ${LIB_PATH}/*_RVT_TT_*.lib]
set SRAM_LIB [glob ${SRAM_LIB_PATH}/srambank_256*.lib]

create_library_set -name libset_typical \
    -timing [list {*}$STD_LIB {*}$SRAM_LIB]

create_rc_corner -name rc_typical \
    -T 25

create_delay_corner -name delay_corner_typical \
    -library_set libset_typical \
    -rc_corner rc_typical

create_constraint_mode -name constraint_typical \
    -sdc_files {outputs/synthesis.sdc}

create_analysis_view -name view_typical \
    -constraint_mode constraint_typical \
    -delay_corner delay_corner_typical

set_analysis_view -setup {view_typical} -hold {view_typical}
