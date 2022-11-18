class zcl_lab_36_phone definition
  public
  final
  create public .

  public section.

    methods constructor importing io_screen type ref to zcl_lab_37_screen.

    methods get_screen returning value(ro_screen) type ref to zcl_lab_37_screen.

  protected section.
  private section.
    data mo_screen type ref to zcl_lab_37_screen.

endclass.

class zcl_lab_36_phone implementation.

  method constructor.
    me->mo_screen = io_screen.
  endmethod.

  method get_screen.
    ro_screen = me->mo_screen.
  endmethod.

endclass.
