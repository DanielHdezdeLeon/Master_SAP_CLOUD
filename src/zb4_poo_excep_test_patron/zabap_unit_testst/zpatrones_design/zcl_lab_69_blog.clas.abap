CLASS zcl_lab_69_blog DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    EVENTS modificate_state EXPORTING VALUE(ev_new_state) TYPE string.
    METHODS: get_current_state RETURNING VALUE(r_result) TYPE string,
      set_current_state IMPORTING i_current_state TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA current_state TYPE string.
ENDCLASS.



CLASS zcl_lab_69_blog IMPLEMENTATION.
  METHOD get_current_state.
    r_result = me->current_state.
  ENDMETHOD.

  METHOD set_current_state.
    me->current_state = i_current_state.
    RAISE EVENT modificate_state EXPORTING ev_new_state = me->current_state.
  ENDMETHOD.

ENDCLASS.
