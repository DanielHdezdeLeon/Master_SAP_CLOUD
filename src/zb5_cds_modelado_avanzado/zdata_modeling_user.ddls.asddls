@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS definitio'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType.serviceQuality: #B
@ObjectModel.usageType.sizeCategory: #S
@ObjectModel.usageType.dataClass: #MIXED

define view entity ZDATA_MODELING_USER
as select from zcustomer
{
//    key uuid       as Uuid,
    key cliente_id as ClienteId,
    nombre         as Nombre,
    apellido       as Apellido,
    direccion      as Direccion,
    cast( cliente_id as abap.char( 15 ) ) as ClienteIdInt8,
    1.2 as FloatingPointElement,
    fltp_to_dec( 1.2 as abap.dec( 4, 2 ) ) as FloatingPointElementDecimal
    
}                 
