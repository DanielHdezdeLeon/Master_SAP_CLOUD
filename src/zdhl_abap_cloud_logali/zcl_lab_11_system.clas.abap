CLASS zcl_lab_11_system DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64 BITS'.
    METHODS: get_architecture RETURNING value(r_result) TYPE string,
             set_architecture IMPORTING i_architecture TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system IMPLEMENTATION.
  METHOD get_architecture.
    r_result = me->architecture.
  ENDMETHOD.

  METHOD set_architecture.
    me->architecture = i_architecture.
  ENDMETHOD.

ENDCLASS.
