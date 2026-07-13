@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Viajes por Pais de la agencia'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_TRAVEL_country 
with parameters p_country_code: land1
as select from zdmo_travel
association [1..1] to ZCDS_Agency as _Agency on $projection.AgencyId = _Agency.AgencyId
{
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    booking_fee as BookingFee,
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    _Agency( p_country_code: $parameters.p_country_code  ).Name as AgencyName
}
