@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agencias por pais'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_Agency
with parameters p_country_code: land1
 as select from zdmo_agency
{
    key agency_id as AgencyId,
    name as Name,
    street as Street,
    postal_code as PostalCode,
    city as City,
    country_code as CountryCode,
    phone_number as PhoneNumber,
    email_address as EmailAddress,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt
} where country_code = $parameters.p_country_code
