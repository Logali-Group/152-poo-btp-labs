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

    data: lo_object       type ref to object,
          lv_method       type string,
          lv_headquarters type string.

    lo_object = new zcl_lab_41_organization( ).
    lv_method = 'SET_HEADQUARTERS'.

    call method lo_object->(lv_method) exporting iv_headquarters = 'Spain'.
    lv_method = 'GET_HEADQUARTERS'.
    call method lo_object->(lv_method) receiving rv_headquarters = lv_headquarters.
    out->write( lv_headquarters ).



***************
*    data lo_budget type ref to zcl_lab_39_budget.
*
*    lo_budget = new zcl_lab_40_actual_budget(  ).
*
*    out->write( lo_budget->get_budget(  ) ).

***************
*  data: lo_price_1 type ref to zcl_lab_38_prod_price,
*        lo_price_2 type ref to zcl_lab_38_prod_price.
*
*   lo_price_1 = new #(  ).
*   lo_price_2 = lo_price_1.
*
*   lo_price_2->price = 27.
*
*   out->write( lo_price_1->price ).

***************
*    data(lo_screen) = new zcl_lab_37_screen(  ).
*    lo_screen->set_screen_type( 'AMOLED' ).
*
*    data(lo_phone) = new zcl_lab_36_phone( lo_screen ).
*
*    out->write( lo_phone->get_screen(  )->get_screen_type(  ) ).

***************
*    data(lo_student) = new zcl_lab_34_student(  ).
*    data(lo_college) = new zcl_lab_35_college( ).
*
*    lo_student->set_name( 'John Smith' ).
*    lo_college->enroll_student( lo_student ).
*
*    lo_college->mo_student->get_name( importing ev_name = data(lv_student_name) ).
*    out->write( lv_student_name ).

***************
*    data: lt_employees            type standard table of ref to zif_lab_04_employee,
*          lo_employee             type ref to zif_lab_04_employee,
*          lo_internal_employees   type ref to zcl_lab_32_internal_empl,
*          lo_expatriate_employees type ref to zcl_lab_33_expatriate_empl.
*
*    lo_internal_employees = new #(  ).
*    append lo_internal_employees to lt_employees.
*
*    lo_expatriate_employees = new #(  ).
*    append lo_expatriate_employees to lt_employees.
*
*    loop at lt_employees into lo_employee.
*      out->write( lo_employee->get_employees_count( ) ).
*    endloop.

***************
*    data: lt_organizations type standard table of ref to zcl_lab_29_organization,
*          lo_organization  type ref to zcl_lab_29_organization,
*          lo_org_germany   type ref to zcl_lab_30_org_germany,
*          lo_org_france    type ref to zcl_lab_31_org_france.
*
*    lo_org_germany = new #(  ).
*    append lo_org_germany to lt_organizations.
*
*    lo_org_france = new #(  ).
*    append lo_org_france to lt_organizations.
*
*    loop at lt_organizations into lo_organization.
*      out->write( lo_organization->get_location( ) ).
*    endloop.

***************
*     data(lo_logistics) = new zcl_lab_28_logistics(  ).
*
*     out->write( lo_logistics->input_products(  ) ).
*     out->write( lo_logistics->merchandise_output(  ) ).
*     out->write( lo_logistics->production_line(  ) ).

***************
*   data(lo_flights) = new zcl_lab_26_flights(  ).
*
*   lo_flights->set_conn_id( '0001' ).
*   out->write( lo_flights->get_conn_id(  ) ).
*
*   out->write( lo_flights->get_customer( '1' ) ).
*
*   out->write( lo_flights->get_airport( 'MAD' ) ).

***************
* Partner
*    data(go_partner) = new zcl_lab_24_partner(  ).
*    out->write( go_partner->get_company_capital(  ) ).
*
** Collaborator
*    data(go_collaborator) = new zcl_lab_25_collaborator(  ).
*    out->write( go_collaborator->get_capital(  ) ).

***************
* An instance of the class "ZCL_LAB_21_CLASSROOM"
* can only be created within the class itself
* or within one of its subclasses.
*     data(lo_classroom) = new zcl_lab_21_classroom(  ).

***************
*    data: go_animal type ref to zcl_lab_18_animal,
*          go_lion_1 type ref to zcl_lab_19_lion,
*          go_lion_2 type ref to zcl_lab_19_lion.
*
*    go_lion_1 = new #(  ).
*
*    go_animal = go_lion_1.
*
*    try.
*        go_lion_2 ?= go_animal.
*      catch cx_sy_move_cast_error.
*    endtry.
*
*    if go_lion_2 is bound.
*      out->write( go_lion_2->walks(  ) ).
*    endif.

***************
*    data(go_price) = new zcl_lab_15_flight_price(  ).
*    data(go_price_discount) = new zcl_lab_16_price_discount(  ).
*    data(gr_price_super_discount) = new zcl_lab_17_super_discount(  ).
*
*    select single from /dmo/flight
*           fields *
*           where carrier_id eq 'AA'
*             and connection_id eq '0018'
*           into @data(gs_flight).
*
*    go_price->add_price( is_flight =  gs_flight ).
*    out->write( |Usual price: { go_price->mt_flights[ 1 ]-price }| ).
*
*    go_price_discount->add_price( is_flight =  gs_flight ).
*    out->write( |Price dicount 10%: { go_price_discount->mt_flights[ 1 ]-price }| ).
*
*    gr_price_super_discount->add_price( is_flight =  gs_flight ).
*    out->write( |Price dicount 20%: { gr_price_super_discount->mt_flights[ 1 ]-price }| ).

***************
*    data(go_grid) = new zcl_lab_14_grid(
*      iv_view_type = 'Matrix'
*      iv_box       = 'Border-Box' ).

***************
*    data(go_linux) = new zcl_lab_12_linux(  ).
*
*    go_linux->get_architecture( importing ev_architecture = data(gv_architecture) ).
*
*    out->write( gv_architecture ).

***************
*    data(go_constructors) = new zcl_lab_10_instances(  ).
*
*    out->write( zcl_lab_10_instances=>log ).

****************
*    data(go_account) = new zcl_lab_09_account(  ).
*
*    go_account->set_iban( 'ES34 6578 9332 6544 8712' ).
*
*    go_account->get_iban( importing iban = data(lv_iban) ).
*
*    out->write( lv_iban ).
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
****************
*    data(go_flight) = new zcl_lab_05_flight(  ).
*
*    out->write( go_flight->check_flight( exporting iv_carrier_id   = 'AA'
*                                                   iv_connexion_id = '0018' ) ).
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
