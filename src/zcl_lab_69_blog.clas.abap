class zcl_lab_69_blog definition
  public
  final
  create public .

  public section.

     methods publish_article importing iv_title type string.
     methods get_article returning value(rv_title) type string.

     events new_article exporting value(ev_title) type string.

  protected section.
  private section.
    data mv_article_title type string.

endclass.


class zcl_lab_69_blog implementation.

  method publish_article.
     me->mv_article_title = iv_title.
     raise event new_article exporting ev_title = me->mv_article_title.
  endmethod.

  method get_article.
    rv_title = me->mv_article_title.
  endmethod.

endclass.
