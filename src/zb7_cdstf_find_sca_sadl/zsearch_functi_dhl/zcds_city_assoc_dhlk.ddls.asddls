@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Busqueda'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view entity ZCDS_CITY_ASSOC_DHLK as select from zdmo_customer
association [1..1] to ZCDS_CITY_TEXT_DHL as _City on $projection.City = _City.City
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    title as Title,
    street as Street,
    postal_code as PostalCode,
    @Search.defaultSearchElement: true
    @Search.ranking: #HIGH
    @Search.fuzzinessThreshold: 0.8
    @ObjectModel.text.association: '_City'
    @ObjectModel.foreignKey.association: '_City'
    city as City,
    country_code as CountryCode,
    phone_number as PhoneNumber,
    email_address as EmailAddress,
    _City
    
}
