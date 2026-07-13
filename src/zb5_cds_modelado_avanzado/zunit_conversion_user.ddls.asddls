@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'UNIT_CONVERSION'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUNIT_CONVERSION_USER 
with parameters p_unit: abap.unit
as select from zdhl_quantity
{
  key product_id as ProductId,
  @Semantics.quantity.unitOfMeasure: 'OriginalUnit'
  quantity as OriginalQuantity,
  unit as OriginalUnit,
  @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
  unit_conversion( quantity => quantity, 
                   source_unit => unit, 
                   target_unit => $parameters.p_unit,
                   error_handling => 'SET_TO_NULL',
                   client   => $session.client ) as ConvertedQuantity,
                   
  $parameters.p_unit  as ConvertedUnit
}
