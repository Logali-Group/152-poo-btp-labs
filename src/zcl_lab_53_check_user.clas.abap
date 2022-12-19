class zcl_lab_53_check_user definition
  public
  final
  create public.

  public section.

    methods check_user importing iv_user type syuname
                       raising   zcx_lab_52_operations.

  protected section.
  private section.
endclass.

class zcl_lab_53_check_user implementation.

  method check_user.

    if sy-uname eq 'CB9980000130'.
      raise exception type zcx_lab_52_operations
        exporting
          textid = zcx_lab_52_operations=>no_access
*         previous =
          msgv1  = |{ sy-uname }|
*         msgv2  =
*         msgv3  =
*         msgv4  =
        .
    endif.

  endmethod.

endclass.
