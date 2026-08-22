@EndUserText.label: 'Customer Value Help'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true

define view entity ZI_VH_CUSTOMER
  as select from zdmo_customer

  association [0..1] to I_Country as _Country on $projection.CountryCode = _Country.Country
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @UI.lineItem: [{ position: 10 }]
  key customer_id                                                     as CustomerId,

      @Search.defaultSearchElement: true
      @UI.lineItem: [{ position: 20 }]
      first_name                                                      as FirstName,

      @UI.lineItem: [{ position: 30 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      last_name                                                       as LastName,

      @UI.lineItem: [{ position: 40 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      city                                                            as City,

      country_code                                                    as CountryCode,

      @UI.lineItem: [{ position: 50 }]
      _Country._Text[1:Language=$session.system_language].CountryName as CountryName
}
