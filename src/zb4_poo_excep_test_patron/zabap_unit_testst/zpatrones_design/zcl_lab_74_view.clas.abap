CLASS zcl_lab_74_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS display IMPORTING io_model TYPE REF TO zcl_lab_73_model io_out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_74_view IMPLEMENTATION.
  METHOD display.
    DATA(ls_flight) = io_model->get_mo_flight( ).
    io_out->write( |El precio del vuelo con connid { ls_flight-connid } es { ls_flight-price } $| ).
  ENDMETHOD.

ENDCLASS.
