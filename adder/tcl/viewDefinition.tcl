set LIB_PATH "../../Asap7/asap7/asap7sc7p5t_28/LIB/CCS"
set MY_LIBS [list \
    ${LIB_PATH}/asap7sc7p5t_SIMPLE_RVT_TT_ccs_211120.lib \
    ${LIB_PATH}/asap7sc7p5t_SEQ_RVT_TT_ccs_220123.lib \
    ${LIB_PATH}/asap7sc7p5t_OA_RVT_TT_ccs_211120.lib \
    ${LIB_PATH}/asap7sc7p5t_INVBUF_RVT_TT_ccs_220122.lib \
    ${LIB_PATH}/asap7sc7p5t_AO_RVT_TT_ccs_211120.lib \
]


create_library_set -name libset_typical -timing $MY_LIBS

create_rc_corner -name rccorner \
    -qx_tech_file  "../../Asap7/asap7/asap7sc7p5t_28/qrc/qrcTechFile_typ03_scaled4xV06" \
    -preRoute_res 1 -postRoute_res 1 -preRoute_cap 1 \
    -postRoute_cap 1 -postRoute_xcap 1 -preRoute_clkres 0 -preRoute_clkcap 0 -T 25

create_op_cond -name opcond -library_file [lindex $MY_LIBS 0] -P 1.0 -V 0.7 -T 25


create_delay_corner -name corner -library_set libset_typical \
    -opcond_library opcond -rc_corner rccorner


create_constraint_mode -name mode_normal -sdc_files ./outputs/synthesis.sdc

create_analysis_view -name tt -constraint_mode mode_normal -delay_corner corner
set_analysis_view -setup {tt} -hold {tt}