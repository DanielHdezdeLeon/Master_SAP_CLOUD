@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'VDM – Virtual Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
     serviceQuality: #X,
     sizeCategory: #S,
     dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #CUBE

define view entity ZCDS_VDM_FLIGHT_USER
  as select from zdmo_flight as Flight
  association [0..*] to ZCDS_Carrier as _Carrier on $projection.CarrierId = _Carrier.CarrierId

{
      @ObjectModel.foreignKey.association: '_Carrier'
      @Search.defaultSearchElement: true
//      @ObjectModel.text.association: '_Carrier'
  key Flight.carrier_id     as CarrierId,
  key Flight.connection_id  as ConnectionId,
  key Flight.flight_date    as FlightDate,
      Flight.airport_from   as AirportFrom,
      Flight.airport_to     as AirportTo,
      Flight.departure_time as DepartureTime,
      Flight.arrival_time   as ArrivalTime,
      @DefaultAggregation: #SUM
      Flight.seats_max      as SeatsMax,
      @DefaultAggregation: #SUM
      Flight.seats_occupied as SeatsOccupied,
      Flight.currency_code  as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @DefaultAggregation: #SUM
      Flight.price          as Price,
      _Carrier
}
