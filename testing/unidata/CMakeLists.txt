
# cdutil tests

cdat_add_test(test_unidata_basic_functionalities
    "${PYTHON_EXECUTABLE}"
    ${cdat_SOURCE_DIR}/testing/unidata/test_udunits.py
    )
cdat_add_test(test_unidata_undunits2_functionalities
    "${PYTHON_EXECUTABLE}"
    ${cdat_SOURCE_DIR}/testing/unidata/test_udunits2_additions.py
    )
