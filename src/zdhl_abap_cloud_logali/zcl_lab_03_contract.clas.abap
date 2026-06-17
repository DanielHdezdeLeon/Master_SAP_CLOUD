CLASS zcl_lab_03_contract DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA cntr_type TYPE c LENGTH 2.
    METHODS set_creation_date IMPORTING iv_creation_date TYPE zdate.
    METHODS get_creation_date RETURNING VALUE(rv_creation_date) TYPE zdate.
  PROTECTED SECTION.
    DATA creation_date TYPE zdate.
  PRIVATE SECTION.
    DATA client_id TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract IMPLEMENTATION.
  METHOD set_creation_date.
    creation_date = iv_creation_date.
  ENDMETHOD.

  METHOD get_creation_date.
    rv_creation_date = creation_date.
  ENDMETHOD.

ENDCLASS.
