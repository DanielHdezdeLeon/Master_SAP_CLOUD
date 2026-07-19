CLASS zcl_lab_01_execution_cds DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_execution_cds IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT FROM ZCDS_PARAM_ASSOC_DHL(  p_carrier_id = 'AF' ) as Booking
    Fields Booking~AgencyId,
           Booking~BookingId,
           Booking~TravelId,
           \_Agency-agency_id,
           \_Agency-name
     where AgencyId = 'A00003'
     INTO TABLE @DATA(lt_data).

   out->write( lt_data ).

  ENDMETHOD.
ENDCLASS.
