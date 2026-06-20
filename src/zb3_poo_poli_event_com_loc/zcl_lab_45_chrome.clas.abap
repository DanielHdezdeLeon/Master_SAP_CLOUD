CLASS zcl_lab_45_chrome DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS on_close_windows FOR EVENT close_windows OF zif_lab_05_browser IMPORTING sender.
    METHODS: get_log RETURNING VALUE(r_result) TYPE string,
      set_log IMPORTING i_log TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA log TYPE string.
ENDCLASS.



CLASS zcl_lab_45_chrome IMPLEMENTATION.
  METHOD on_close_windows.
    log  = sender->log.
  ENDMETHOD.

    METHOD get_log.
      r_result = me->log.
    ENDMETHOD.

    METHOD set_log.
      me->log = i_log.
    ENDMETHOD.

ENDCLASS.
