@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join Explícito'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_EXPLICIT_JOIN_DHL
  as select from zdmo_customer
  association [0..*] to ZCDS_BOOKING as _Booking on $projection.CustomerId = _Booking.CustomerId
{
  key customer_id          as CustomerId,
      _Booking[inner].BookingId  as BookingId,
      first_name           as FirstName,
      last_name            as LastName,
      _Booking[inner].BookingDate as BookingDate
}
