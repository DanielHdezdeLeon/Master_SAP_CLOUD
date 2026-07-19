@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join Explícito'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_EXPLICIT_JOIN_USER as select from zdmo_customer
association [1..1] to zdmo_booking as _Booking on $projection.CustomerId = _Booking.customer_id
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    _Booking

}
