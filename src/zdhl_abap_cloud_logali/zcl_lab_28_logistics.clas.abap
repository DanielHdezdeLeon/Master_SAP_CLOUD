CLASS zcl_lab_28_logistics DEFINITION INHERITING FROM zcl_lab_27_factory
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA logistica TYPE string VALUE 'logistica'.
    METHODS: production_line REDEFINITION,
      input_products REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_28_logistics IMPLEMENTATION.
  METHOD input_products.
    rv_input = 'INPUT_PRODUCTS'.
  ENDMETHOD.

  METHOD production_line.
    rv_production =  'PRODUCTION_LINE'.
  ENDMETHOD.

ENDCLASS.
