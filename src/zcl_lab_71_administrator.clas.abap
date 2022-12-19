class zcl_lab_71_administrator definition inheriting from zcl_lab_70_observer
  public
  final
  create public .

  public section.
    data mv_notification type string.
    methods on_new_article redefinition.

  protected section.
  private section.
endclass.


class zcl_lab_71_administrator implementation.

  method on_new_article.
     me->mv_notification = |Administrator notified: Check the article..... { ev_title }|.
  endmethod.

endclass.
