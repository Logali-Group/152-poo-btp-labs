class zcl_lab_30_org_germany definition
  inheriting from zcl_lab_29_organization
  public
  final
  create public .

  public section.

    methods get_location redefinition.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_30_ORG_GERMANY IMPLEMENTATION.


  method get_location.
    rv_location = 'Location - Germany'.
  endmethod.
ENDCLASS.
