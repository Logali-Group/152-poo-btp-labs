class zcl_lab_67_package_a definition inheriting from zcl_lab_66_travel
  public
  final
  create public .

  public section.

    methods transport_oneway redefinition.
    methods day_one redefinition.
    methods day_two redefinition.
    methods day_three redefinition.
    methods transport_return redefinition.

  protected section.
  private section.
endclass.


class zcl_lab_67_package_a implementation.

  method day_one.
    io_out->write( 'Flight - Departing' ).
  endmethod.

  method day_two.
    io_out->write( 'Visit Palace of Westminster' ).
  endmethod.

  method day_three.
    io_out->write( 'Visit St. Paul''s Cathedral'  ).
  endmethod.

  method transport_oneway.
    io_out->write( 'Visit Chinatown' ).
  endmethod.

  method transport_return.
    io_out->write( 'Flight - Returning' ).
  endmethod.

endclass.
