class zcl_lab_08_student definition
  public
  final
  create public .

  public section.

    data birth_date type zdate read-only.

    methods set_birth_date importing iv_birth_date type zdate.

  protected section.
  private section.
endclass.



class zcl_lab_08_student implementation.

  method set_birth_date.
    me->birth_date = iv_birth_date.
  endmethod.

endclass.
