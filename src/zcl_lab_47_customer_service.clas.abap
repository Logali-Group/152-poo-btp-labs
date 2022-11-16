class zcl_lab_47_customer_service definition
  public
  final
  create public .

  public section.

    class-methods on_new_call for event new_call
      of zcl_lab_46_mobile_operator
      importing ev_phone_number.

    class-data log type string.

  protected section.
  private section.
endclass.

class zcl_lab_47_customer_service implementation.

  method on_new_call.
     log = |Client....{ ev_phone_number }|.
  endmethod.

endclass.


