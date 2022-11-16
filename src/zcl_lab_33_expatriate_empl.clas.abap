class zcl_lab_33_expatriate_empl definition
  public
  final
  create public .

  public section.

    interfaces zif_lab_04_employee.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_33_EXPATRIATE_EMPL IMPLEMENTATION.


  method zif_lab_04_employee~get_employees_count.
    rv_count = 20.
  endmethod.
ENDCLASS.
