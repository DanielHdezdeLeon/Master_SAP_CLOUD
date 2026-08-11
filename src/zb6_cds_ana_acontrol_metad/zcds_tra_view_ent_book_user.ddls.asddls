@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Transient View Entity'
@Metadata.ignorePropagatedAnnotations: true
define transient view  entity ZCDS_TRA_VIEW_ENT_BOOK_USER
provider contract analytical_query
 as projection on ZCDS_AN_DATA_FLIGHT_DHL
{
@AnalyticsDetails.query.axis: #ROWS
    BookingId,
    @AnalyticsDetails.query.axis: #FREE
    TravelId,
    @AnalyticsDetails.query.axis: #COLUMNS
    CustomerId,
    @Semantics.amount.currencyCode: 'CurrCode'
    FlightPrice,
    virtual CurrCode : abap.cuky

}
