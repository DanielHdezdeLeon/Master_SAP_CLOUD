CLASS zcl_lab_64_supply_file_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_06_file_factory .
    ALIASES   get_file_type FOR zif_lab_06_file_factory~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_64_supply_file_factory IMPLEMENTATION.
  METHOD zif_lab_06_file_factory~get_file_type.
    rv_file_type  = 'Suply File'.
  ENDMETHOD.

ENDCLASS.
