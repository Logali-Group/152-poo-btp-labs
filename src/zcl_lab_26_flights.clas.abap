class zcl_lab_26_flights definition
  public
  final
  create public .

  public section.
    interfaces zif_lab_01_flight.
    interfaces zif_lab_02_customer.

    aliases set_conn_id for zif_lab_01_flight~set_conn_id.
    aliases get_conn_id for zif_lab_01_flight~get_conn_id.
    aliases get_customer for zif_lab_02_customer~get_customer.
    aliases get_airport for zif_lab_03_airports~get_airport.

  protected section.
  private section.
endclass.


class zcl_lab_26_flights implementation.

  method set_conn_id.
    me->zif_lab_01_flight~conn_id = iv_comp_id.
  endmethod.

  method get_conn_id.
    rv_comp_id = me->zif_lab_01_flight~conn_id.
  endmethod.

  method get_customer.

    select single
           from /dmo/customer
           fields first_name, last_name
           where customer_id eq @iv_customer_id
           into @rs_customer.

  endmethod.

  method get_airport.

    select single
           from /dmo/airport
           fields *
           where airport_id eq @iv_airport_id
           into @rs_airport.

  endmethod.

endclass.

