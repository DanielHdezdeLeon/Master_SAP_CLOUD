@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Acceso literal'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_AIRPORT_1_USER 
as select from zdmo_airport
{
    key airport_id as AirportId,
    name as Name,
    city as City,
    country_code as CountryCode,
    timezone_code as TimezoneCode,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
}
