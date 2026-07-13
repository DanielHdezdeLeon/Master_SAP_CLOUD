@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Publicación de Asociaciones'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_PUBLIC_ASSOC_USER
  //with parameters p_country_code : land1
  as select from zdmo_travel as TRAVEL
  association [1..1] to zdmo_agency   as _Agency   on $projection.AgencyId = _Agency.agency_id
  association [1..1] to zdmo_customer as _Customer on $projection.CustomerId = _Customer.customer_id
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      booking_fee   as BookingFee,
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      description   as Description,
      _Agency,
      _Customer
}
// where _Agency.country_code = p_country_code
