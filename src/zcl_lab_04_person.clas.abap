class zcl_lab_04_person definition
  public
  final
  create public .

  public section.

    methods set_age importing iv_age type i.
    methods get_age exporting ev_age type i.

  protected section.

  private section.
     data age type i.

endclass.


class zcl_lab_04_person implementation.

  method get_age.
    ev_age = me->age.
  endmethod.

  method set_age.
    me->age = iv_age.
  endmethod.

endclass.
