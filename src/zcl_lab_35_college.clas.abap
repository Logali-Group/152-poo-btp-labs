class zcl_lab_35_college definition
  public
  final
  create public .

  public section.

    data mo_student type ref to zcl_lab_34_student.

    methods enroll_student importing io_student type ref to zcl_lab_34_student.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_35_COLLEGE IMPLEMENTATION.


  method enroll_student.
    me->mo_student = io_student.
  endmethod.
ENDCLASS.
