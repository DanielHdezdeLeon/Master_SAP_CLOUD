CLASS zcl_lab_04_person DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_age RETURNING VALUE(rv_age) TYPE i,
      set_age IMPORTING iv_age TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA age TYPE i.
ENDCLASS.



CLASS zcl_lab_04_person IMPLEMENTATION.
  METHOD get_age.
    rv_age = age.
  ENDMETHOD.

  METHOD set_age.
    age = iv_age.
  ENDMETHOD.

ENDCLASS.
