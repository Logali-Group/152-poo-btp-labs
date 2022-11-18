interface zif_lab_01_flight
  public .

  interfaces zif_lab_03_airports.

  class-data comp_id type string.

  data conn_id type string.

  methods set_conn_id importing iv_comp_id type string.
  methods get_conn_id returning value(rv_comp_id) type string.

endinterface.
