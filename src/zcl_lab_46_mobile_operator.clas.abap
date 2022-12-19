class zcl_lab_46_mobile_operator definition
  public
  final
  create public .

  public section.

    class-events new_call exporting value(ev_phone_number) type string.
    class-methods assign_call.

  protected section.
  private section.
endclass.

class zcl_lab_46_mobile_operator implementation.

  method assign_call.
    raise event new_call exporting ev_phone_number = '+34 687 159 753'.
  endmethod.

endclass.


