@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Carrier'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
     serviceQuality: #X,
     sizeCategory: #S,
     dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION

define view entity ZCDS_Carrier
  as select from zdmo_carrier
{
      @Search.defaultSearchElement: true
      @Search.ranking: #MEDIUM
      @Search.fuzzinessThreshold: 0.9
  key carrier_id    as CarrierId,
      @Semantics.text: true
      name          as Name,
      currency_code as CurrencyCode
}
