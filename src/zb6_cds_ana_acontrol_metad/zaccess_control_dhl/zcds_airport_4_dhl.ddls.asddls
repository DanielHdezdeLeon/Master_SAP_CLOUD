@AbapCatalog.sqlViewName: 'ZCDSAIRPORT4DHL'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Aeropuertos'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_AIRPORT_4_DHL as select from zdmo_airport
{
    key airport_id as AirportId,
    name as Name,
    city as City,
    country_code as CountryCode,
    timezone_code as TimezoneCode,
cast('01'as zde_flight_type_user ) as FlightType
}
