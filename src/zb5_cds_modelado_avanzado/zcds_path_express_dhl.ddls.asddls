@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones Filtradas - Path Expression - cardinalidad'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZCDS_PATH_EXPRESS_DHL
  with parameters
    P_CONNECTION_ID : abap.char(10)
  as select from zdmo_booking
  association [0..*] to zdmo_flight as _Flight on zdmo_booking.connection_id = _Flight.connection_id
{
  key booking_id                                                             as BookingId,
      travel_id                                                              as TravelId,
      connection_id                                                          as ConnectionId,
      _Flight[1: connection_id = $parameters.P_CONNECTION_ID].seats_occupied as SeatsOccupied
}
