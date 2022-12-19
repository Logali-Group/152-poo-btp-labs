class zcl_lab_45_chrome definition
  public
  final
  create public .

  public section.

    methods on_close_window for event close_window
        of zif_lab_05_browser.

    data log type string.

  protected section.
  private section.
endclass.

class zcl_lab_45_chrome implementation.

  method on_close_window.
    me->log = 'The window was closed'.
  endmethod.

endclass.
