CLASS zcl_lab_33_expatriate_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_lab_04_employee .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_33_expatriate_empl IMPLEMENTATION.


  METHOD zif_lab_04_employee~get_employees_count.
    rv_count = 10.
  ENDMETHOD.
ENDCLASS.
