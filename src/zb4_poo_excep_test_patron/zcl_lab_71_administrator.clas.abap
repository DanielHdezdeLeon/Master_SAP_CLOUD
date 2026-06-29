CLASS zcl_lab_71_administrator DEFINITION INHERITING FROM zcl_lab_70_observer
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA state_type TYPE string.
    METHODS: on_modificate_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_71_administrator IMPLEMENTATION.
  METHOD on_modificate_state.
    me->state_type = ev_new_state.
  ENDMETHOD.

ENDCLASS.
