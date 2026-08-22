@AbapCatalog.viewEnhancementCategory: [ #NONE ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Assocciation con TF'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_airport_amdp_Dhl
as select from zdmo_airport as Airport
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
