@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zCDS_conversion
  as select from zdmo_booking
{
  key customer_id,
      currency_code,
      cast( total_price as abap.dec( 16, 4 ) ) as total_price

}
