class zcl_lab_02_products definition
  public
  final
  create public .

  public section.

    methods set_product       importing iv_product type matnr.
    methods set_creation_date importing iv_creation_date type zdate.


  protected section.
  private section.

    data product       type matnr.
    data creation_date type zdate.
endclass.



class zcl_lab_02_products implementation.

  method set_creation_date.
    me->creation_date = iv_creation_date.
  endmethod.

  method set_product.
    me->product = iv_product.
  endmethod.

endclass.
