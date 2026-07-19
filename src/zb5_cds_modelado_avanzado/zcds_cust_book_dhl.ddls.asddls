@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociación - Parent Child'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CUST_BOOK_DHL
  as select from zdmo_booking

  association to parent ZCDS_CUSTOMER_ROOT_USER as _Customer on $projection.CustomerId = _Customer.CustomerId
{
  key booking_id  as BookingId,
      customer_id as CustomerId,
      travel_id   as TravelId,
      _Customer

}
