class zcl_lab_70_observer definition abstract
  public
  create public .

  public section.

    methods on_new_article abstract
      for event new_article of zcl_lab_69_blog
      importing ev_title.

  protected section.
  private section.
endclass.

class zcl_lab_70_observer implementation.
endclass.
