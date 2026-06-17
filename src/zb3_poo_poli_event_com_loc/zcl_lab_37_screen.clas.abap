CLASS zcl_lab_37_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_screen_type RETURNING value(r_result) TYPE string,
             set_screen_type IMPORTING i_screen_type TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen_type  TYPE string.
ENDCLASS.



CLASS zcl_lab_37_screen IMPLEMENTATION.
  METHOD get_screen_type.
    r_result = me->screen_type.
  ENDMETHOD.

  METHOD set_screen_type.
    me->screen_type = i_screen_type.
  ENDMETHOD.

ENDCLASS.
