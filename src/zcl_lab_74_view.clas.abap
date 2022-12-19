class zcl_lab_74_view definition
  public
  final
  create public .

  public section.

    methods renderer_flights importing it_flights type /dmo/t_flight
                                       io_out     type ref to if_oo_adt_classrun_out.
  protected section.
  private section.
endclass.


class zcl_lab_74_view implementation.

  method renderer_flights.
    io_out->write( it_flights ).
  endmethod.

endclass.
