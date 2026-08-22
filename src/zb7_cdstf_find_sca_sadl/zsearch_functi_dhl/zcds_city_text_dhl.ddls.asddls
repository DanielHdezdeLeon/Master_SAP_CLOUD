@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'City Text'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'city'
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                      #CDS_MODELING_ASSOCIATION_TARGET,
                                      #CDS_MODELING_DATA_SOURCE,
                                      #LANGUAGE_DEPENDENT_TEXT ]
                                      
                                      
define view entity ZCDS_CITY_TEXT_DHL as select from zcity_texts_dhl
{
    key airport_id as AirportId,
    @Search.defaultSearchElement: true
    key city as City,
    city_text as CityText
}
