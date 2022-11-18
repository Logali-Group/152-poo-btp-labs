class zcl_lab_05_flight definition
  public
  final
  create public .

  public section.

    methods check_flight importing iv_carrier_id    type string
                                   iv_connexion_id  type i
                         returning value(rv_result) type abap_bool.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_05_FLIGHT IMPLEMENTATION.


  method check_flight.

    select single from /dmo/flight
           fields carrier_id
           where carrier_id    eq @iv_carrier_id
             and connection_id eq @iv_connexion_id
           into @data(lv_comp_name).

    if sy-subrc eq 0.
      rv_result = abap_true.
    else.
      rv_result = abap_false.
    endif.

  endmethod.
ENDCLASS.
