class zcl_lab_68_package_b definition inheriting from zcl_lab_66_travel
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


class zcl_lab_68_package_b implementation.

  method day_one.
    io_out->write( 'Bus - Departing' ).
  endmethod.

  method day_two.
    io_out->write( 'Visit National Museum of Anthropology' ).
  endmethod.

  method day_three.
    io_out->write( 'Visit the National Museum of Fine Arts' ).
  endmethod.

  method transport_oneway.
    io_out->write( 'Visit the Royal Palace Museum' ).
  endmethod.

  method transport_return.
    io_out->write( 'Bus - Returning' ).
  endmethod.

endclass.
