CLASS zcl_lab_41_organization DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_headquarters RETURNING value(rv_result) TYPE string,
             set_headquarters IMPORTING iv_headquarters TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
  DATA HEADQUARTERS type string.
ENDCLASS.



CLASS zcl_lab_41_organization IMPLEMENTATION.
  METHOD get_headquarters.
    rv_result = me->headquarters.
  ENDMETHOD.

  METHOD set_headquarters.
    me->headquarters = iv_headquarters.
  ENDMETHOD.

ENDCLASS.
