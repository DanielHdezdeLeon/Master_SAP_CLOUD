CLASS zcl_lab_61_travel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_travel
      IMPORTING
        VALUE(iv_travel_id) TYPE zflight_flight-carrid
      RETURNING
        VALUE(rv_travel)    TYPE zflight_flight-price.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_61_travel IMPLEMENTATION.
  METHOD get_travel.


    DATA ls_flight TYPE zflight_flight.
    SELECT SINGLE price FROM zflight_flight WHERE carrid = @iv_travel_id INTO @rv_travel.

    TEST-SEAM select_data.


      SELECT SINGLE FROM zflight_flight FIELDS * WHERE carrid = @iv_travel_id INTO @ls_flight.


    END-TEST-SEAM.

    IF iv_travel_id EQ 'Z03'.
      SELECT SINGLE FROM zflight_flight FIELDS * WHERE carrid = @iv_travel_id INTO @ls_flight.
      rv_travel = ls_flight-price . .
    ENDIF.


  ENDMETHOD.

ENDCLASS.
