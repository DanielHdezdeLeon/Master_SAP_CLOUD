@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPARAM_CDS_USER
  with parameters
    p_date_from : abap.dats,
    p_date_to   : abap.dats

  as select from zdmo_booking
{
  key booking_id  as BookingId,
      customer_id as CustomerId,
      agency_id   as AgencyId,
      carrier_id  as CarrierId,
      flight_date as FlightDate

}
where
  flight_date between $parameters.p_date_from and $parameters.p_date_to
