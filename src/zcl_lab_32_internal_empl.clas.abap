class zcl_lab_32_internal_empl definition
  public
  final
  create public .

  public section.

    interfaces zif_lab_04_employee.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_32_INTERNAL_EMPL IMPLEMENTATION.


  method zif_lab_04_employee~get_employees_count.
    rv_count = 10.
  endmethod.
ENDCLASS.
