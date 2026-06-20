CLASS zcl_lab_42_screen DEFINITION PUBLIC CREATE PUBLIC .

  PUBLIC SECTION.
    DATA lv_x TYPE i.
    DATA lv_y TYPE i.
    DATA screen_type TYPE string.

    EVENTS touch_screen EXPORTING VALUE(pos_horizontal) TYPE i
                                  VALUE(pos_vertical)   TYPE i.
    METHODS element_selected IMPORTING VALUE(iv_pos_horizontal) TYPE i
                                       VALUE(iv_pos_vertical)   TYPE i
                             RETURNING VALUE(result)            TYPE abap_bool.

    METHODS constructor IMPORTING iv_screen_type TYPE string..
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_42_screen IMPLEMENTATION.
  METHOD element_selected.

    IF iv_pos_horizontal > 100 OR iv_pos_vertical > 100.
      RAISE EVENT touch_screen
        EXPORTING
          pos_horizontal = iv_pos_horizontal
          pos_vertical   = iv_pos_vertical
        .
      result = abap_false.
    ELSE.
      result = abap_true.
    ENDIF.
  ENDMETHOD.

  METHOD constructor.
    screen_type = iv_screen_type.
  ENDMETHOD.

ENDCLASS.
