class zcl_lab_24_partner definition
  public
  create public .

  public section.
    methods: get_company_capital returning value(rv_capital) type f.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_24_PARTNER IMPLEMENTATION.


  method get_company_capital.
    data(lo_company) = new zcl_lab_23_company(  ).
    rv_capital = lo_company->capital.
  endmethod.
ENDCLASS.
