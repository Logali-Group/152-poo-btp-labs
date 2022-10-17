class zcl_lab_03_contract definition
  public
  final
  create public .

  public section.

    data cntr_type type c length 2.
    methods set_creation_date importing iv_creation_date type zdate.

  protected section.
    data creation_date type zdate.

  private section.
    data client type string.

endclass.



class zcl_lab_03_contract implementation.
  method set_creation_date.
     me->creation_date = iv_creation_date.
  endmethod.
endclass.
