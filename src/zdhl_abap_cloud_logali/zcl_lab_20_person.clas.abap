CLASS zcl_lab_20_person DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_name FINAL RETURNING VALUE(r_result) TYPE string,
             set_name FINAL IMPORTING i_name TYPE string .
  PROTECTED SECTION.
    DATA name TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_20_person IMPLEMENTATION.
  METHOD get_name.
    r_result = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = i_name.
  ENDMETHOD.

ENDCLASS.
