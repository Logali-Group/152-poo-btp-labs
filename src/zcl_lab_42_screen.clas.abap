class zcl_lab_42_screen definition
  public
  final
  create public .

  public section.

    data screen_type type string.

    events touch_screen exporting value(ev_pos_hor) type i
                                  value(ev_pos_ver) type i.

    methods constructor importing iv_screen_type type string.
    methods element_selected.

  protected section.
  private section.
endclass.


class zcl_lab_42_screen implementation.

  method element_selected.

    raise event touch_screen exporting ev_pos_hor = 2
                                       ev_pos_ver = 8.

  endmethod.

  method constructor.
    me->screen_type = iv_screen_type.
  endmethod.

endclass.
