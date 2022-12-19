class zcl_lab_58_date_analyzer definition
  public
  final
  create public .

  public section.

    methods analyze_date raising zcx_lab_56_no_date.

    methods analyze_format importing io_previous type ref to cx_root
                           raising   zcx_lab_57_format_unknown.

  protected section.
  private section.
endclass.


class zcl_lab_58_date_analyzer implementation.

  method analyze_date.
    raise exception type zcx_lab_56_no_date.
  endmethod.

  method analyze_format.
    raise exception type zcx_lab_57_format_unknown
      exporting
*       textid   =
        previous = io_previous.
  endmethod.

endclass.
