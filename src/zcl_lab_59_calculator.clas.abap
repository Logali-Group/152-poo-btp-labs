class zcl_lab_59_calculator definition
  public
  final
  create public .

  public section.

    methods sum_up importing iv_num_1  type i
                             iv_num_2  type i
                   exporting ev_result type i.

  protected section.
  private section.
endclass.


class zcl_lab_59_calculator implementation.

  method sum_up.
    ev_result = iv_num_1 + iv_num_2.
  endmethod.

endclass.
