*"* use this source file for your ABAP unit test classes
class ltcl_test_inj  definition final for testing
  duration short
  risk level harmless.

  public section.

    interfaces if_abap_db_writer partially implemented.

  private section.

    methods:
      get_travel_test for testing raising cx_static_check.

    class-methods class_setup.
    class-methods class_teardown.

    methods setup.
    methods teardown.

    data mo_cut type ref to zcl_lab_61_travel.
endclass.


class ltcl_test_inj  implementation.

  method get_travel_test.

    me->mo_cut->get_travel( importing es_travel = data(ls_travel) ).

    if cl_abap_unit_assert=>assert_equals(
      exporting act = |{ ls_travel-travel_id }-{ ls_travel-description }|
                exp = '00000027-Vacation to USA' ) eq abap_true.
      cl_abap_unit_assert=>fail( 'Get Travel process failed' ).
    endif.
  endmethod.

  method class_setup.

  endmethod.

  method class_teardown.

  endmethod.

  method setup.
    me->mo_cut = new zcl_lab_61_travel(  ).
    test-injection select_data.
      lv_travel_id = '00000027'.
      ls_travel-travel_id = lv_travel_id.
      ls_travel-description = 'Vacation to USA'.
    end-test-injection.
  endmethod.

  method teardown.
    clear me->mo_cut.
  endmethod.

  method if_abap_db_writer~get_statement_handle.

  endmethod.

endclass.
