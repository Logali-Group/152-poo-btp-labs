class zcl_lab_14_grid definition
  inheriting from zcl_lab_13_view
  public
  final
  create public .

  public section.
    methods constructor importing iv_view_type type string
                                  iv_box       type string.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_14_GRID IMPLEMENTATION.


  method constructor.
    super->constructor( iv_view_type = iv_view_type ).
    me->box = iv_box.
  endmethod.
ENDCLASS.
