CLASS zcl_lab_34_student DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_name RETURNING value(rv_result) TYPE string,
             set_name IMPORTING iv_name TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA name TYPE string.
ENDCLASS.



CLASS zcl_lab_34_student IMPLEMENTATION.
  METHOD get_name.
    rv_result = me->name.
  ENDMETHOD.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

ENDCLASS.
