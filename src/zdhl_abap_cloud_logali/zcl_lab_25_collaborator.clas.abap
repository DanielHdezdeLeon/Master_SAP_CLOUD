CLASS zcl_lab_25_collaborator DEFINITION INHERITING FROM zcl_lab_24_partner
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_collaborator IMPLEMENTATION.
  METHOD get_capital.
    DATA(lo_company) = NEW zcl_lab_23_company( ).
    rv_capital =  lo_company->capital.
  ENDMETHOD.

ENDCLASS.
