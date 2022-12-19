class zcl_lab_37_screen definition
  public
  final
  create public .

  public section.
     methods set_screen_type importing iv_screen_type type string.
     methods get_screen_type returning value(rv_screen_type) type string.

  protected section.
  private section.
    data screen_type type string.
endclass.


class zcl_lab_37_screen implementation.

  method get_screen_type.
    rv_screen_type = me->screen_type.
  endmethod.

  method set_screen_type.
    me->screen_type = iv_screen_type.
  endmethod.

endclass.
