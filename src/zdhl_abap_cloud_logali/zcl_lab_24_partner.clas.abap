CLASS zcl_lab_24_partner DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_company_capital RETURNING VALUE(rv_capital) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner IMPLEMENTATION.
  METHOD get_company_capital.
       DATA(lo_company) = new zcl_lab_23_company( ).
       rv_capital =  lo_company->capital.
  ENDMETHOD.

ENDCLASS.
