CLASS zcl_lab_44_operating_system DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_05_browser .
    ALIASES close_windows FOR zif_lab_05_browser~close_windows.
    METHODS mouse_movement RETURNING VALUE(rv_texto) TYPE string. .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_44_operating_system IMPLEMENTATION.


  METHOD mouse_movement.
    zif_lab_05_browser~log = |Movimiento: { cl_abap_context_info=>get_system_time( ) }|.
    zif_lab_05_browser~log = |Movimiento: { sy-uzeit }|.
    rv_texto = 'Mouse movement detected in the operating system class/Event raise.'.
*    RAISE EVENT zif_lab_05_browser~close_windows.
    RAISE EVENT close_windows.
  ENDMETHOD.

ENDCLASS.
