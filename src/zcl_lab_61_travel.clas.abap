class zcl_lab_61_travel definition
  public
  final
  create public .

  public section.

    methods get_travel exporting es_travel type /dmo/travel.

  protected section.
  private section.
endclass.


class zcl_lab_61_travel implementation.

  method get_travel.

    data: ls_travel    type /dmo/travel,
          lv_travel_id type /dmo/travel_id.

    lv_travel_id = '00000020'.

    select single from /dmo/travel
          fields *
          where travel_id eq @lv_travel_id
          into @es_travel.

    test-seam select_data.
      select single from /dmo/travel
             fields *
             where travel_id  eq @lv_travel_id
             into @ls_travel.
    end-test-seam.

    if lv_travel_id eq '00000027'.
      es_travel = corresponding #( ls_travel ).
    endif.

  endmethod.

endclass.
