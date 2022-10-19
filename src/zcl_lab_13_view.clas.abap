class zcl_lab_13_view definition
  public
  create public .

  public section.
    methods constructor importing iv_view_type type string.

  protected section.
    data view_type type string.
    data box       type string.
  private section.

endclass.


class zcl_lab_13_view implementation.

  method constructor.
    me->view_type = iv_view_type.
  endmethod.

endclass.