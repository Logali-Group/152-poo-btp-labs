class zcl_lab_27_factory definition
  abstract
  public
*  final
  create public .

  public section.

    methods merchandise_output returning value(rv_merchandise) type string.
    methods production_line abstract returning value(rv_production) type string.
    methods input_products abstract returning value(rv_input) type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_27_FACTORY IMPLEMENTATION.


  method merchandise_output.
    rv_merchandise = 'Merchandise Output'.
  endmethod.
ENDCLASS.
