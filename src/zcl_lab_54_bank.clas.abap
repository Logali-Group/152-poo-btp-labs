class zcl_lab_54_bank definition
  public
  final
  create public .

  public section.
    methods transfer importing iv_iban type string
                     raising   resumable(zcx_lab_55_auth_iban).
  protected section.
  private section.
endclass.

class zcl_lab_54_bank implementation.

  method transfer.

    if iv_iban eq 'ES95 4329 8765 4321'.
      raise resumable exception type zcx_lab_55_auth_iban.
    else.
      raise exception type zcx_lab_55_auth_iban.
    endif.

  endmethod.

endclass.
