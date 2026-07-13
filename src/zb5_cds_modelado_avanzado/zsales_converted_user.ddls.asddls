@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversion moneda'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSALES_CONVERTED_USER as select from zdmo_booking
{
 key booking_id as BookingId,
 currency_code as CurrencyCode,
 @Semantics.amount.currencyCode: 'CurrencyCode'
 total_price as TotalPrice, 
 @Semantics.amount.currencyCode: 'TargetCurrency'
  currency_conversion( amount => total_price,
                       source_currency => currency_code, 
//                       target_currency => cast( 'USD' as abap.cuky ), 
                       target_currency =>abap.cuky'USD', 
                       exchange_rate_date => $session.system_date,
                       client             => $session.client,
                       error_handling     => 'SET_TO_NULL') as FLIGHT_PRICE_USD,
                       
  cast( 'USD' as abap.cuky ) as TargetCurrency
}
