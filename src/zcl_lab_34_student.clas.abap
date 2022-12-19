class zcl_lab_34_student definition
  public
  final
  create public .

  public section.

    methods set_name importing iv_name type string.
    methods get_name exporting ev_name type string.

  protected section.
  private section.
    data name type string.

ENDCLASS.



CLASS ZCL_LAB_34_STUDENT IMPLEMENTATION.


  method set_name.
    me->name = iv_name.
  endmethod.


  method get_name.
    ev_name = me->name.
  endmethod.
ENDCLASS.
