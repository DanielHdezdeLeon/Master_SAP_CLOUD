@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Inner Join'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_JOIN_DHL as select from zdmo_booking as Booking 
                                     inner join zdmo_travel as Travel
                                             on Booking.travel_id = Travel.travel_id

{
    key Booking.booking_id as BookingId,
    key Travel.begin_date as FlightDate,
    Booking.currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Booking.flight_price as FlightPrice
   
}
