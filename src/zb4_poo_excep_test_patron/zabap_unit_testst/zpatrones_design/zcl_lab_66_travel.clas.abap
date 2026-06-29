CLASS zcl_lab_66_travel DEFINITION ABSTRACT
  PUBLIC

  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS: get_itinerary RETURNING value(r_result) TYPE string_table.


  PROTECTED SECTION.
    DATA itinerary TYPE string_table.
    METHODS: transport_oneway ABSTRACT RETURNING VALUE(rv_transport_travel) TYPE string,
      day_one   ABSTRACT RETURNING VALUE(rv_schedule) TYPE string,
      day_two   ABSTRACT RETURNING VALUE(rv_schedule) TYPE string,
      day_three ABSTRACT RETURNING VALUE(rv_schedule) TYPE string,
      transport_return  ABSTRACT RETURNING VALUE(rv_return_travel) TYPE string,
      travel FINAL.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_66_travel IMPLEMENTATION.

  METHOD travel.

    APPEND INITIAL LINE TO itinerary ASSIGNING FIELD-SYMBOL(<fs_itinerary>).
    <fs_itinerary> = 'Planificacion Viaje'.
    APPEND |TRANSPORTE IDA:{ me->transport_oneway( ) }| TO itinerary.
    APPEND |DIA 1:{ me->day_one( ) }| TO itinerary.
    APPEND |DIA 2:{ me->day_two( ) }| TO itinerary.
    APPEND |DIA 3:{ me->day_three( ) }| TO itinerary.
    APPEND |TRANSPORTE Vuelta:{ me->transport_return( ) }| TO itinerary.

  ENDMETHOD.

  METHOD get_itinerary.
    r_result = me->itinerary.
  ENDMETHOD.

ENDCLASS.
