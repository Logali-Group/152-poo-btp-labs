class zcl_lab_22_student definition
  inheriting from zcl_lab_21_classroom
  public
  final
  create public .

  public section.
    methods assign_student.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_22_STUDENT IMPLEMENTATION.


  method assign_student.
    data(lo_classroom) = new zcl_lab_21_classroom(  ).
  endmethod.
ENDCLASS.
