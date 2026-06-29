CLASS zcl_lab_73_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        iv_carrid TYPE zflight_flight-connid.
    METHODS: get_mo_flight RETURNING VALUE(r_result) TYPE zflight_flight,
      set_mo_flight IMPORTING iv_mo_flight TYPE zflight_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_flight TYPE zflight_flight.
    METHODS: get_price_flight IMPORTING iv_carrid TYPE zflight_flight-connid RETURNING VALUE(rv_flight) TYPE zflight_flight..
ENDCLASS.



CLASS zcl_lab_73_model IMPLEMENTATION.
  METHOD get_price_flight.
    SELECT SINGLE * FROM zflight_flight  WHERE carrid = @iv_carrid INTO @rv_flight.

  ENDMETHOD.
  METHOD constructor.
    mo_flight =  get_price_flight( iv_carrid = iv_carrid ).
  ENDMETHOD.

  METHOD get_mo_flight.
    r_result = me->mo_flight.
  ENDMETHOD.

  METHOD set_mo_flight.
    me->mo_flight = iv_mo_flight.
  ENDMETHOD.

ENDCLASS.
