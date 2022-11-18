class zcl_lab_50_work_zone definition
  public
  final
  create public
  global friends zcl_lab_51_wz_friend.

  public section.
    methods constructor.
  protected section.
  private section.

    data mo_helper type ref to lcl_helper.

    data ms_work_zone type ty_work_zone.
    methods set_work_zone importing is_work_zone type ty_work_zone.
endclass.



class zcl_lab_50_work_zone implementation.

  method set_work_zone.
    ms_work_zone-launchpad = is_work_zone-launchpad.
    ms_work_zone-dashboard = is_work_zone-dashboard.
    ms_work_zone-spaces = is_work_zone-spaces.
  endmethod.

  method constructor.
     mo_helper = new #(  ).
  endmethod.

endclass.
