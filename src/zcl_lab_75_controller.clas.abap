class zcl_lab_75_controller definition
  public
  final
  create public .

  public section.

    methods set_model importing io_modelo type ref to zcl_lab_73_model.
    methods get_model returning value(ro_model) type ref to zcl_lab_73_model.

    methods set_view importing io_view type ref to zcl_lab_74_view.
    methods get_view returning value(ro_view) type ref to zcl_lab_74_view.

  protected section.
  private section.
    data mo_model type ref to zcl_lab_73_model.
    data mo_view type ref to zcl_lab_74_view.

endclass.


class zcl_lab_75_controller implementation.

  method set_model.
    me->mo_model = io_modelo.
  endmethod.

  method get_model.
    ro_model = me->mo_model.
  endmethod.

  method set_view.
    me->mo_view = io_view.
  endmethod.

  method get_view.
    ro_view = me->mo_view.
  endmethod.

endclass.
