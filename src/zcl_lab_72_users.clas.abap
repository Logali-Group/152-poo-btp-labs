class zcl_lab_72_users definition inheriting from zcl_lab_70_observer
  public
  final
  create public .

  public section.
    data mv_notification type string.
    methods on_new_article redefinition.
  protected section.
  private section.
endclass.


class zcl_lab_72_users implementation.

  method on_new_article.
    me->mv_notification = |Notified users. Take a look at the new article..... { ev_title }|.
  endmethod.

endclass.
