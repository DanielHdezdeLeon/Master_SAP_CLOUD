CLASS zcl_lab_02_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA  product TYPE matnr.
    DATA creation_date TYPE zdate.

    METHODS: set_product IMPORTING iv_product TYPE matnr,
      get_product RETURNING VALUE(rv_product) TYPE matnr,
      set_creation_date IMPORTING iv_creation_date TYPE zdate,
      get_creation_date RETURNING VALUE(rv_creation_date) TYPE zdate.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_02_product IMPLEMENTATION.
  METHOD get_creation_date.
    rv_creation_date = creation_date.

  ENDMETHOD.

  METHOD get_product.
    rv_product = product.
  ENDMETHOD.

  METHOD set_creation_date.
    creation_date = iv_creation_date.
  ENDMETHOD.

  METHOD set_product.
    product = iv_product.
  ENDMETHOD.

ENDCLASS.
