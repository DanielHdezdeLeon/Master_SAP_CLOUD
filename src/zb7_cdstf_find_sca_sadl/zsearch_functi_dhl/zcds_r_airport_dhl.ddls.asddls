@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ayuda busqueda'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@ObjectModel.representativeKey: 'AirportId'
@ObjectModel.dataCategory: #VALUE_HELP
@Consumption.ranked: true
@VDM.viewType: #BASIC
define root view entity zcds_r_airport_DHL as select from zdmo_airport
association [1..1] to zcity_texts_dhl as _airport on $projection.AirportId = _airport.airport_id
{
    key airport_id as AirportId,
    name as Name,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Search.ranking: #HIGH
    city as City,
    country_code as CountryCode,
    _airport

  
}
