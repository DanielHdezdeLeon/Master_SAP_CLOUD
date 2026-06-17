CLASS zcl_lab_36_phone DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING ir_screen TYPE REF TO zcl_lab_37_screen.
    METHODS: get_go_screen RETURNING VALUE(r_result) TYPE REF TO zcl_lab_37_screen.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA go_screen TYPE REF TO zcl_lab_37_screen.
ENDCLASS.



CLASS zcl_lab_36_phone IMPLEMENTATION.
  METHOD constructor.
    me->go_screen = ir_screen.
  ENDMETHOD.

  METHOD get_go_screen.
    r_result = me->go_screen.
  ENDMETHOD.


ENDCLASS.
