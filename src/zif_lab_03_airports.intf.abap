interface zif_lab_03_airports
  public .

    methods get_airport importing iv_airport_id type string
                        returning value(rs_airport) type /dmo/airport.

endinterface.
