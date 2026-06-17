CLASS zcl_lab_13_view DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor IMPORTING iv_view_type  TYPE string,
             set_view_type IMPORTING iv_view_type TYPE string,
             set_box IMPORTING iv_box TYPE string,
             get_box RETURNING value(r_result) TYPE string,
             get_view_type RETURNING value(r_result) TYPE string.

  PROTECTED SECTION.
    DATA view_type TYPE string.
    DATA box  TYPE String.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_13_view IMPLEMENTATION.
  METHOD constructor.
    view_type = iv_view_type.
  ENDMETHOD.

  METHOD set_view_type.
    me->view_type = iv_view_type.
  ENDMETHOD.

  METHOD set_box.
    me->box = iv_box.
  ENDMETHOD.

  METHOD get_box.
    r_result = me->box.
  ENDMETHOD.

  METHOD get_view_type.
    r_result = me->view_type.
  ENDMETHOD.

ENDCLASS.
