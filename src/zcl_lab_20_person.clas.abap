class zcl_lab_20_person definition
  public
  create public .

  public section.
    methods set_name final importing iv_name type string.
  protected section.
    data name type string.
  private section.
endclass.



class zcl_lab_20_person implementation.

  method set_name.
    me->name = iv_name.
  endmethod.

endclass.
