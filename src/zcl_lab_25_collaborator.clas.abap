class zcl_lab_25_collaborator definition
  inheriting from zcl_lab_24_partner
  public
  final
  create public .

  public section.
    methods: get_capital returning value(rv_capital) type f.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_25_COLLABORATOR IMPLEMENTATION.


  method get_capital.
    data(lo_company) = new zcl_lab_23_company(  ).
    rv_capital = lo_company->capital.
  endmethod.
ENDCLASS.
