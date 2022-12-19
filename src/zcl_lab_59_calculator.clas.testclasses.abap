*"* use this source file for your ABAP unit test classes
class ltcl_calculator definition final for testing
  duration short
  risk level harmless.

  private section.
    methods:
      sum_up_test for testing raising cx_static_check.

    methods setup.
    methods teardown.

    data mo_cut type ref to zcl_lab_59_calculator.
endclass.


class ltcl_calculator implementation.

  method sum_up_test.
    "Given
    data(lv_number_1) = 2.
    data(lv_number_2) = 3.
    "When
    mo_cut->sum_up( exporting iv_num_1    = lv_number_1
                              iv_num_2    = lv_number_2
                    importing ev_result = data(lv_result) ).
    "Then
    if  cl_abap_unit_assert=>assert_equals(
      exporting
        act                  = lv_result
        exp                  = 5 ).

      cl_abap_unit_assert=>fail( 'Sum Up process failed' ).

    endif.

  endmethod.

  method setup.
    mo_cut = new #(  ).
  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

endclass.
