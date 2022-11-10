class zcl_lab_18_animal definition
  public
  create public .

  public section.
    methods walks returning value(rv_action) type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_18_ANIMAL IMPLEMENTATION.


  method walks.
    rv_action = 'The animal walks'.
  endmethod.
ENDCLASS.
