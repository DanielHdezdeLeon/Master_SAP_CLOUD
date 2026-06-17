CLASS zcl_lab_32_internal_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl IMPLEMENTATION.


  METHOD zif_lab_04_employee~get_employees_count.
    rv_count = 1250.
  ENDMETHOD.
ENDCLASS.
