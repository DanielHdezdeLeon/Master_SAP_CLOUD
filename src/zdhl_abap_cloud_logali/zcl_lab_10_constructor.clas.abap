CLASS zcl_lab_10_constructor DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA log TYPE string.
    METHODS constructor IMPORTING iv_log TYPE string.
    CLASS-METHODS class_constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_10_constructor IMPLEMENTATION.
  METHOD constructor.
    log = |{ log }-->{ iv_log }|.
  ENDMETHOD.

  METHOD class_constructor.
    log = 'Prueba'.
  ENDMETHOD.

ENDCLASS.
