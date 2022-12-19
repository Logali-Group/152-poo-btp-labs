class zcl_lab_40_actual_budget definition
  inheriting from zcl_lab_39_budget
  public
  final
  create public .

  public section.
    methods: get_budget redefinition.

  protected section.
  private section.
endclass.



class zcl_lab_40_actual_budget implementation.

  method get_budget.
    rv_budget = 'Actual Budget'.
  endmethod.

endclass.
