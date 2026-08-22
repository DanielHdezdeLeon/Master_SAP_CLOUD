@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PROJECTION'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity zcds_proj_airpot_DHL
  provider contract transactional_query
  as projection on zcds_r_airport_DHL
{
  key AirportId,
      Name,
      @ObjectModel.text.element: [ 'CityText' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity: { name : 'zcity_texts_dhl', 
                                                     element: 'City' },
                                          useForValidation: true
//                                          additionalBinding: [{ localElement: 'Country'  }]
                                         }] 
      
       City,
      _airport.city_text as CityText,
      CountryCode,
      /* Associations */
      _airport
}
