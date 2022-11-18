class zcl_lab_43_navigation definition
  public
  final
  create public .

  public section.

    methods on_touch_screen for event touch_screen
            of zcl_lab_42_screen importing ev_pos_hor
                                           ev_pos_ver
                                           sender.

    data log type string.

  protected section.
  private section.
endclass.

class zcl_lab_43_navigation implementation.

  method on_touch_screen.
    me->log = |The screen { sender->screen_type } was touched at positions { ev_pos_hor }-{ ev_pos_ver }|.
  endmethod.

endclass.
