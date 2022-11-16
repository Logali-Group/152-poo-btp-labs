class zcl_lab_29_organization definition
  public
*  final
  create public .

  public section.

     methods get_location returning value(rv_location) type string.
  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_29_ORGANIZATION IMPLEMENTATION.


  method get_location.
    rv_location = 'Main Location - Organization'.
  endmethod.
ENDCLASS.
