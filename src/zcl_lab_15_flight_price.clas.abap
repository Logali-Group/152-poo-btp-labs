class zcl_lab_15_flight_price definition
  public
  create public .

  public section.
    data mt_flights type table of /dmo/flight.
    methods add_price importing is_flight type /dmo/flight.

  protected section.
  private section.
endclass.


class zcl_lab_15_flight_price implementation.

  method add_price.
    append is_flight to me->mt_flights.
  endmethod.

endclass.
