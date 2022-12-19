class zcl_lab_64_supply_file definition
  public
  final
  create public .

  public section.

    interfaces zif_lab_06_file.

  protected section.
  private section.
endclass.


class zcl_lab_64_supply_file implementation.

  method zif_lab_06_file~get_file_type.
    rv_file_type = 'Supply File'.
  endmethod.

endclass.
