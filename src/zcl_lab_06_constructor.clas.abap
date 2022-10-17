class zcl_lab_06_constructor definition
  public
  final
  create public .

  public section.

    methods constructor.
    class-methods class_constructor.

    class-data log type string.

  protected section.
  private section.
endclass.



class zcl_lab_06_constructor implementation.

  method class_constructor.
    log = |{ log }---Static constructor---|.
  endmethod.

  method constructor.
    log = |{ log }---Instance constructor---|.
  endmethod.

endclass.
