@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo RAP'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity Z_C_CUSTOMER_TRAVEL_DHL
  provider contract transactional_query
  as projection on Z_R_CUSTOMER_TRAVEL_DHL

{
  key CustomerUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
      @ObjectModel.text.element: [ 'Customername' ]

  key CustomerId,
  key FlightDate,
      Description,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      Price,
      CurrencyCode,
      OverallStatus,
      _AssociationCustomer.FirstName                  as Customername,
      _AssociationCustomer.LastName                   as LastName,
      //      _AssociationCustomer._Country._Text[1:Language=$session.system_language].CountryName as CountryName,
      _AssociationCustomer._Country._Text.CountryName as CustomerCountry : localized,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _AssociationCustomer
}
