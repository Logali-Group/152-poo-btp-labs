class zcl_lab_16_price_discount definition
  inheriting from zcl_lab_15_flight_price
  public
  final
  create public .

  public section.
    methods add_price redefinition.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_16_PRICE_DISCOUNT IMPLEMENTATION.


  method add_price.

    data(ls_sflight) = is_flight.
    ls_sflight-price = ls_sflight-price * 9 / 10.
    append ls_sflight to me->mt_flights.

  endmethod.
ENDCLASS.
