class zcl_lab_01_ejec definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun.

  protected section.
  private section.
endclass.

class zcl_lab_01_ejec implementation.

  method if_oo_adt_classrun~main.

    data(go_account) = new zcl_lab_09_account(  ).

    go_account->set_iban( 'ES34 6578 9332 6544 8712' ).

    go_account->get_iban( importing iban = data(lv_iban) ).

    out->write( lv_iban ).
*
****************
*    zcl_lab_08_work_record=>open_new_record( exporting iv_date       = cl_abap_context_info=>get_system_date( )
*                                                    iv_first_name = 'John'
*                                                    iv_last_name  = 'Smith' ).
*
*
****************
*    data(go_student) = new zcl_lab_07_student(  ).
*
*    go_student->set_birth_date( '19911127' ).
*
*    out->write( go_student->birth_date ).
*
*
****************
*    data(go_elements) = new zcl_lab_06_elements(  ).
*
*    data gs_object type zcl_lab_06_elements=>ty_elem_objects.
*
*    gs_object-class = 'ABAP_CLASS'.
*    gs_object-instance = 'INSTANCE 123'.
*    gs_object-reference = 'GO_ELEMENTS'.
*
*    go_elements->set_object( is_object = gs_object ).
*
*    out->write( go_elements->ms_object ).
*    out->write( zcl_lab_06_elements=>lc_light_speed ).
*    out->write( zcl_lab_06_elements=>lc_permeability ).
*    out->write( zcl_lab_06_elements=>lc_permittivity ).
*    out->write( zcl_lab_06_elements=>lc_mass_electron ).
*
*
*
****************
*    data go_person type ref to zcl_lab_04_person.
*
*    go_person = new #(  ).
*
*    go_person->set_age( 28 ).
*    go_person->get_age( importing ev_age = data(gv_age) ).
*
*    out->write( |My age is { gv_age }.| ).

  endmethod.

endclass.
