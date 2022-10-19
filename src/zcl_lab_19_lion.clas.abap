class zcl_lab_19_lion definition
  inheriting from zcl_lab_18_animal
  public
  final
  create public .

  public section.
    methods walks redefinition.
  protected section.
  private section.
endclass.


class zcl_lab_19_lion implementation.

  method walks.
    rv_action = 'The lion walks'.
  endmethod.

endclass.
