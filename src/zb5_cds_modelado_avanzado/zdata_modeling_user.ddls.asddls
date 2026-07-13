@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS definitio'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #MIXED

define view entity ZDATA_MODELING_USER
  as select from zdmo_customer
{

  key customer_id                            as CustomerId,
      cast( customer_id as abap.int8 )       as CustomerId8,
      fltp_to_dec( 1.2 as abap.dec( 4, 2 ) ) as FloatingPointElementDecimal,
      first_name                             as FirstName,
      last_name                              as LastName,
      title                                  as Title,
      street                                 as Street,
      postal_code                            as PostalCode,
      city                                   as City,
      case country_code
      when 'DE' then 'Germany'
      when 'ES' then 'ESPAÑA'
      when 'US' then 'United States'
      else 'Other country'
      end                                    as CountryCode,
      phone_number                           as PhoneNumber,
      email_address                          as EmailAddress,
      created_by                             as CreatedBy,
      case 
       when created_by < dats_add_days( $session.system_date, -30, 'NULL') then 'Old'
       when created_by >= dats_add_days( $session.system_date, -30, 'NULL' ) then 'New'
       else 'No parametrizado'end as CASE1,
      created_at                             as CreatedAt,
      last_changed_by                        as LastChangedBy,
      last_changed_at                        as LastChangedA


}
