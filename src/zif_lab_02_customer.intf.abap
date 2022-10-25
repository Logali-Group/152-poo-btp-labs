interface zif_lab_02_customer
  public .

  types: begin of ty_cust_address,
           first_name  type string,
           last_name   type string,
         end of ty_cust_address.

  methods get_customer importing iv_customer_id     type string
                       returning value(rs_customer) type ty_cust_address.

endinterface.
