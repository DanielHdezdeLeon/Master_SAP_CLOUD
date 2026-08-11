@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Metadata extension'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zcds_customer_meta_DHL
with parameters p_City: abap.char(40)
  as select from zdmo_customer
{
  key customer_id     as CustomerId,
      first_name      as FirstName,
      last_name       as LastName,
      title           as Title,
      street          as Street,
      postal_code     as PostalCode,
      city            as City,
      country_code    as CountryCode,
      phone_number    as PhoneNumber,
      email_address   as EmailAddress,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt
} where city = $parameters.p_City
