class zcl_lab_10_instances definition
  public
  final
  create public .

  public section.

    methods constructor.
    class-methods class_constructor.

    class-data log type string.

  protected section.
  private section.
ENDCLASS.



CLASS ZCL_LAB_10_INSTANCES IMPLEMENTATION.


  method class_constructor.
    log = |{ log }---Static constructor---|.
  endmethod.


  method constructor.
    log = |{ log }---Instance constructor---|.
  endmethod.
ENDCLASS.
