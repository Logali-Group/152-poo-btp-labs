class zcl_lab_65_factory definition
  public
  final
  create public .

  public section.

    methods create_file importing iv_file_type        type string
                        returning value(ro_file_type) type ref to zif_lab_06_file.
  protected section.
  private section.
endclass.


class zcl_lab_65_factory implementation.

  method create_file.

    case iv_file_type.
      when 'Work'.
        ro_file_type = new zcl_lab_63_work_file(  ).
      when 'Supply'.
        ro_file_type = new zcl_lab_64_supply_file(  ).
    endcase.

  endmethod.

endclass.
