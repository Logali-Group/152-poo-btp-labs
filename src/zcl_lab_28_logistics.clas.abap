class zcl_lab_28_logistics definition
  inheriting from zcl_lab_27_factory
  public
  final
  create public .

  public section.

    methods production_line redefinition.
    methods input_products redefinition.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_28_LOGISTICS IMPLEMENTATION.


  method input_products.
    rv_input = 'Input Products'.
  endmethod.


  method production_line.
    rv_production = 'Production Line'.
  endmethod.
ENDCLASS.
