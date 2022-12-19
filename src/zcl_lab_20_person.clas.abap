class zcl_lab_20_person definition
  public
  create public .

  public section.
    methods set_name final importing iv_name type string.
  protected section.
    data name type string.
  private section.
ENDCLASS.



CLASS ZCL_LAB_20_PERSON IMPLEMENTATION.


  method set_name.
    me->name = iv_name.
  endmethod.
ENDCLASS.
