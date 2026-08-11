@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección – Contrato Transacc Interfaz'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CHILD_PROJ_USER
  as projection on ZCDS_CUST_BOOK_DHL
{
  key BookingId,
      CustomerId,
      TravelId,
      /* Associations */
      _Customer: redirected to parent ZCDS_CUST_PROJ_USER
}
