class zcl_lab_22_student definition
  inheriting from zcl_lab_21_classroom
  public
  final
  create public .

  public section.
    methods assign_student.
  protected section.
  private section.
endclass.



class zcl_lab_22_student implementation.

  method assign_student.
    data(lo_classroom) = new zcl_lab_21_classroom(  ).
  endmethod.

endclass.
