@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorías de datos analíticos'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.usageType:{
     serviceQuality: #X,
     sizeCategory: #S,
     dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #CUBE

define view entity ZCDS_AN_DATA_FLIGHT_DHL
  as select from zdmo_booking

  association [0..*] to ZCDS_VDM_FLIGHT_USER as _Flight on  $projection.CarrierId    = _Flight.CarrierId
                                                        and $projection.ConnectionId = _Flight.ConnectionId

{
  key booking_id            as BookingId,
      travel_id             as TravelId,
      customer_id           as CustomerId,
      agency_id             as AgencyId,
      carrier_id            as CarrierId,
      @Search.defaultSearchElement: true
      connection_id         as ConnectionId,
      flight_date           as FlightDate,
      booking_date          as BookingDate,
      booking_status        as BookingStatus,
      currency_code         as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @DefaultAggregation: #SUM
      flight_price          as FlightPrice,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @DefaultAggregation: #SUM
      booking_supplement    as BookingSupplement,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @DefaultAggregation: #SUM
      total_price           as TotalPrice,
      @DefaultAggregation: #NONE
      created_by            as CreatedBy,
      @DefaultAggregation: #NONE
      last_changed_by       as LastChangedBy,
      _Flight
}
