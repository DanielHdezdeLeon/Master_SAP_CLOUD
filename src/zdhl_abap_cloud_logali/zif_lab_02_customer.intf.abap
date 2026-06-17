INTERFACE zif_lab_02_customer
  PUBLIC .

  TYPES: BEGIN OF ty_cust_address,
           first_name TYPE string,
           last_name  TYPE string,
         END OF ty_cust_address .

  METHODS get_customer IMPORTING iv_customer             TYPE string
                       RETURNING VALUE(rv_personal_data) TYPE ty_cust_address.

ENDINTERFACE.
