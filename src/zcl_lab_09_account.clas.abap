class zcl_lab_09_account definition
  public
  final
  create public .

  public section.
    methods set_iban importing iban type string.
    methods get_iban exporting iban type string.

  protected section.
  private section.
    data iban type string.

endclass.



class zcl_lab_09_account implementation.
  method get_iban.
    iban = me->iban.
  endmethod.

  method set_iban.
    me->iban = iban.
  endmethod.

endclass.
