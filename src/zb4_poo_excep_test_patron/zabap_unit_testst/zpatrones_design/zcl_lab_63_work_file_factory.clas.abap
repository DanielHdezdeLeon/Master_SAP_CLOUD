CLASS zcl_lab_63_work_file_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_06_file_factory .
    ALIASES   get_file_type FOR zif_lab_06_file_factory~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_63_work_file_factory IMPLEMENTATION.


  METHOD get_file_type.
    rv_file_type  = 'WORK FILE'.
  ENDMETHOD.
ENDCLASS.
