class zcl_lab_66_travel definition abstract
  public
  create public .

  public section.

    methods travel final
            importing io_out type ref to if_oo_adt_classrun_out.

    methods transport_oneway abstract
            importing io_out type ref to if_oo_adt_classrun_out.

    methods day_one abstract
            importing io_out type ref to if_oo_adt_classrun_out.

    methods day_two abstract
            importing io_out type ref to if_oo_adt_classrun_out.

    methods day_three abstract
            importing io_out type ref to if_oo_adt_classrun_out.

    methods transport_return abstract
            importing io_out type ref to if_oo_adt_classrun_out.

  protected section.
  private section.
endclass.

class zcl_lab_66_travel implementation.

  method travel.

    me->transport_oneway( io_out ).
    me->day_one( io_out ).
    me->day_two( io_out ).
    me->day_three( io_out ).
    me->transport_return( io_out ).

  endmethod.

endclass.
