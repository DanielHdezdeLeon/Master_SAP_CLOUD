@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones con Parámetros'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_PARAM_ASSOC_DHL
  with parameters
    p_carrier_id : abap.char(12)
  as select from zdmo_booking as Booking

  association [1..1] to zdmo_travel as _Travel
  //  on Booking.travel_id = _Travel.travel_id
  on _Travel.travel_id = $projection.TravelId
  association [1..1] to zdmo_agency as _Agency
  on _Agency.agency_id = $projection.AgencyId

{
  key Booking.booking_id    as BookingId,
  key travel_id             as TravelId,
  key _Travel.begin_date    as FlightDate,
      Booking.carrier_id    as CarrierId,
      Booking.connection_id as ConnectionId,
      _Travel.begin_date    as BeginDate,
      Booking.agency_id as AgencyId,
      _Travel.end_date      as EndDate,
      _Agency
      
     

}
where
  Booking.carrier_id = $parameters.p_carrier_id
