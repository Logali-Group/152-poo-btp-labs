class zcl_lab_48_administrative_dep definition
  public
  final
  create public .

  public section.

    data employee_id type string.

    events payroll_paid exporting value(ev_log) type string.

    methods notify_employee.

    methods constructor importing iv_employee_id type string.

  protected section.
  private section.
endclass.

class zcl_lab_48_administrative_dep implementation.

  method notify_employee.
    raise event payroll_paid exporting ev_log = me->employee_id.
  endmethod.

  method constructor.
    me->employee_id = iv_employee_id.
  endmethod.

endclass.
