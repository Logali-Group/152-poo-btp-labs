class zcl_lab_18_animal definition
  public
  create public .

  public section.
    methods walks returning value(rv_action) type string.

  protected section.
  private section.
endclass.


class zcl_lab_18_animal implementation.

  method walks.
    rv_action = 'The animal walks'.
  endmethod.

endclass.
