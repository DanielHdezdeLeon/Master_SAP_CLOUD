CLASS zcl_lab_58_date_analyzer DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS analyze_date
      IMPORTING iv_date TYPE d io_previus TYPE REF TO cx_root OPTIONAL
       RETURNING VALUE(rv_date) TYPE string
      RAISING   zcx_lab_56_no_date.
    METHODS analyze_format
      IMPORTING iv_format TYPE string io_previus TYPE REF TO cx_root OPTIONAL
      RETURNING VALUE(rv_format) TYPE string
      RAISING   zcx_lab_57_format_unknown.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer IMPLEMENTATION.
  METHOD analyze_date.
    IF iv_date EQ sy-datum.
      rv_date = 'Correcto'.
    ELSE.
      RAISE EXCEPTION TYPE zcx_lab_56_no_date EXPORTING previous = io_previus.
    ENDIF.
  ENDMETHOD.

  METHOD analyze_format.
      IF iv_format EQ 'AAAMMDD'.
      rv_format = 'Correcto'.
    ELSE.
       RAISE EXCEPTION TYPE zcx_lab_57_format_unknown EXPORTING previous = io_previus.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
