class zcl_lab_73_model definition
  public
  final
  create public .

  public section.

    methods set_flight_model importing iv_carrier_id type /dmo/carrier_id.
    methods get_flight_model returning value(rt_flights) type /dmo/t_flight.

  protected section.
  private section.

    data mt_flights type /dmo/t_flight.

endclass.


class zcl_lab_73_model implementation.

  method set_flight_model.

    select from /dmo/flight
           fields *
           where carrier_id eq @iv_carrier_id
           into table @me->mt_flights.

  endmethod.

  method get_flight_model.

    rt_flights = me->mt_flights.

  endmethod.

endclass.
