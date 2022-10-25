class zcl_lab_11_system definition
  public
  create public .

  public section.
    data architecture type string value '64BIT'.
    methods get_architecture exporting ev_architecture type string.

  protected section.
  private section.
endclass.

class zcl_lab_11_system implementation.

  method get_architecture.
    ev_architecture = me->architecture.
  endmethod.

endclass.
