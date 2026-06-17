CLASS zcl_lab_14_grid DEFINITION INHERITING FROM zcl_lab_13_view
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_view_type TYPE string
                                  iv_box       TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_14_grid IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).

    box = iv_box.

  ENDMETHOD.

ENDCLASS.
