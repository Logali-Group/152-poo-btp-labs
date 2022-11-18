class zcl_lab_41_organization definition
  public
  final
  create public .

  public section.
    methods set_headquarters importing iv_headquarters type string.
    methods get_headquarters returning value(rv_headquarters) type string.

  protected section.
  private section.
    data headquarters type string.
endclass.



class zcl_lab_41_organization implementation.

  method get_headquarters.
    rv_headquarters = me->headquarters.
  endmethod.

  method set_headquarters.
    me->headquarters = iv_headquarters.
  endmethod.

endclass.
