class zcl_lab_60_test_calc definition
  public
  final
  create public
  for testing
  duration short
  risk level harmless.

  public section.
   "! @testing zcl_lab_59_calculator
    methods sum_up_test for testing.

  protected section.
  private section.

    methods setup.
    methods teardown.

    data mo_cut type ref to zcl_lab_59_calculator.
endclass.


class zcl_lab_60_test_calc implementation.

  method setup.
    mo_cut = new #(  ).
  endmethod.

  method sum_up_test.

    "Given
    data(lv_number_1) = 2.
    data(lv_number_2) = 3.

    "When
    mo_cut->sum_up( exporting iv_num_1    = lv_number_1
                              iv_num_2    = lv_number_2
                    importing ev_result = data(lv_result) ).

    "Then
    cl_abap_unit_assert=>assert_equals(
      exporting
        act                  = lv_result
        exp                  = 5 ).

  endmethod.

  method teardown.
    clear mo_cut.
  endmethod.

endclass.
