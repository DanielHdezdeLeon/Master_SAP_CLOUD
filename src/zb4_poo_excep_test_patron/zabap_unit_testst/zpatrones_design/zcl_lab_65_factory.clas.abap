CLASS zcl_lab_65_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CONSTANTS: gc_work   TYPE string VALUE 'WORK FILE',
               gc_supply TYPE string VALUE 'SUPPLY FILE'.
    METHODS create_file IMPORTING iv_type TYPE string RETURNING VALUE(ro_file) TYPE REF TO zif_lab_06_file_factory.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_65_factory IMPLEMENTATION.
  METHOD create_file.

    CASE iv_type.

      WHEN gc_work.
        ro_file = NEW zcl_lab_63_work_file_factory( ).
      WHEN gc_supply.
        ro_file = NEW zcl_lab_64_supply_file_factory( ).
    ENDCASE.

  ENDMETHOD.

ENDCLASS.
