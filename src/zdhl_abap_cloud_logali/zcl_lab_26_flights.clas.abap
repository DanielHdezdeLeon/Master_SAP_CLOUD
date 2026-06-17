CLASS zcl_lab_26_flights DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_lab_01_flight.
    INTERFACES zif_lab_02_customer.

    ALIASES get_com_id FOR zif_lab_01_flight~get_com_id.
    ALIASES set_com_id FOR zif_lab_01_flight~set_com_id.
    ALIASES get_customer FOR zif_lab_02_customer~get_customer.
    ALIASES get_airports FOR zif_lab_03_airports~get_airports.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights IMPLEMENTATION.
  METHOD zif_lab_01_flight~get_com_id.
    rv_com_id =  zif_lab_01_flight~comp_id.
  ENDMETHOD.

  METHOD zif_lab_01_flight~set_com_id.
    zif_lab_01_flight~comp_id = iv_com_id.
  ENDMETHOD.

  METHOD get_customer.
    SELECT SINGLE * FROM zcustomer WHERE cliente_id EQ @iv_customer INTO @DATA(ls_data).
    rv_personal_data-first_name =  ls_data-nombre.
    rv_personal_data-last_name =  ls_data-apellido.
  ENDMETHOD.

  METHOD get_airports.
    SELECT SINGLE * FROM ztaeropuertos WHERE id_aeropuerto EQ @iv_airport_id INTO @rv_aeropuerto.
  ENDMETHOD.

ENDCLASS.
