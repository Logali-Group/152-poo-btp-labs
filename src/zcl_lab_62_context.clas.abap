class zcl_lab_62_context definition
  public
  final
  create private.

  public section.

    data mv_time type zsyst_uzeit.
    methods constructor.

    class-methods get_instance returning value(ro_instance)
                                         type ref to zcl_lab_62_context.

  protected section.
  private section.
    class-data mo_instance type ref to zcl_lab_62_context.

endclass.

class zcl_lab_62_context implementation.

  method constructor.
    me->mv_time = cl_abap_context_info=>get_system_time(  ).
  endmethod.

  method get_instance.
    if mo_instance is not bound.
      mo_instance = new #(  ).
    endif.
    ro_instance = mo_instance.
  endmethod.

endclass.
