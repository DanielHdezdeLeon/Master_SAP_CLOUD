@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agregación'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDATA_AGGREGATION_USER as select from zCDS_conversion
{
//    key booking_id as BookingId,
    customer_id as CustomerId,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    min( total_price ) as MinTotalPrice,
    max( total_price ) as MaxTotalPrice,
    sum( total_price ) as sumTotalPrice
//    avg( total_price as abap.numc( 16, 4 ) ) as AvgTotalPrice
    
} group by customer_id, 
           currency_code,
           total_price
