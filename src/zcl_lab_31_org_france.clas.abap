class zcl_lab_31_org_france definition
  inheriting from zcl_lab_29_organization
  public
  final
  create public .

  public section.

   methods get_location redefinition.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_31_ORG_FRANCE IMPLEMENTATION.


  method get_location.
    rv_location = 'Location - France'.
  endmethod.
ENDCLASS.
