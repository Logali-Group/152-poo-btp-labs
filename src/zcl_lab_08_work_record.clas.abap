class zcl_lab_08_work_record definition
  public
  final
  create public .

  public section.
    class-methods open_new_record importing iv_date       type zdate
                                            iv_first_name type string
                                            iv_last_name  type string
                                            iv_surname    type string optional.


  protected section.
  private section.

    class-data date type zdate.
    class-data first_name type string.
    class-data last_name type string.
    class-data surname type string.

ENDCLASS.



CLASS ZCL_LAB_08_WORK_RECORD IMPLEMENTATION.


  method open_new_record.
    date = iv_date.
    first_name = iv_first_name.
    first_name = iv_first_name.
    last_name = iv_last_name.
    surname = iv_surname.
  endmethod.
ENDCLASS.
