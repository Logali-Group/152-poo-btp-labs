class zcl_lab_51_wz_friend definition
  public
  final
  create public .

  public section.

    methods get_helper.

  protected section.
  private section.
endclass.


class zcl_lab_51_wz_friend implementation.

  method get_helper.
    data(lo_work_zone) = new zcl_lab_50_work_zone( ).
    data(ls_work_zone) = lo_work_zone->mo_helper->get_work_zone( ).
  endmethod.

endclass.
