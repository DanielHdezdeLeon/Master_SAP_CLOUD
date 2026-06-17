CLASS zcl_execution DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA send_date TYPE dats. "date type
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_execution IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: lo_invoices_a TYPE REF TO zcl_execution,
          lo_invoices_b TYPE REF TO zcl_execution.

    lo_invoices_a = NEW #( ).
    lo_invoices_b = NEW #( ).

    zcl_execution=>send_date = '20351127'.

    out->write( zcl_execution=>send_date ).
    out->write( zcl_execution=>send_date ).

  ENDMETHOD.
ENDCLASS.
