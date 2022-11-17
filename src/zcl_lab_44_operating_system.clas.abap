class zcl_lab_44_operating_system definition
  public
  final
  create public .

  public section.

    interfaces zif_lab_05_browser.

    methods mouse_movement.

    data log type string.

  protected section.
  private section.
endclass.

class zcl_lab_44_operating_system implementation.

  method mouse_movement.
     raise event zif_lab_05_browser~close_window.
     me->log = |Event raised.....|.
  endmethod.

endclass.
