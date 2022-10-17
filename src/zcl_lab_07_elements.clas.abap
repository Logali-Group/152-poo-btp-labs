class zcl_lab_07_elements definition
  public
  final
  create public .

  public section.

    constants: lc_light_speed   type string value '3,00 · 108 m/s',
               lc_permeability  type string value '4p · 10-7  H/m',
               lc_permittivity  type string value '8,85 · 10-12 F/m',
               lc_mass_electron type string value '9,1091 · 10-31  kg'.

    types: begin of ty_elem_objects,
             class     type string,
             instance  type string,
             reference type string,
           end of ty_elem_objects.

    data ms_object type ty_elem_objects.

    methods set_object importing is_object type ty_elem_objects.

  protected section.
  private section.
endclass.



class zcl_lab_07_elements implementation.

  method set_object.
    me->ms_object = is_object.
  endmethod.

endclass.


