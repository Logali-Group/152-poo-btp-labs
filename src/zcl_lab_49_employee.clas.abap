class zcl_lab_49_employee definition
  public
  final
  create public .

  public section.

    data log type string.

    methods on_payroll_paid for event payroll_paid
        of zcl_lab_48_administrative_dep
        importing ev_log.

  protected section.
  private section.
endclass.

class zcl_lab_49_employee implementation.

  method on_payroll_paid.
     me->log = |Payroll paid for employee: { ev_log }|.
  endmethod.

endclass.
