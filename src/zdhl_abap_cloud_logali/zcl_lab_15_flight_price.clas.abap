CLASS zcl_lab_15_flight_price DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA mt_flights  TYPE STANDARD TABLE OF zflight_flight.
    METHODS add_price IMPORTING iv_price TYPE zflight_flight .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price IMPLEMENTATION.
  METHOD add_price.

    APPEND iv_price TO mt_flights.

  ENDMETHOD.

ENDCLASS.
