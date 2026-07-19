@EndUserText.label: 'Entidad personalizada - Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CUSTOM_DETAIL_DHL'
define custom entity ZCDS_CUSTOM_DETAIL_DHL
  // with parameters parameter_name : parameter_type
{
   key customer_id : abap.numc(6);
   phone_number    : abap.char(30);
   email_address   : abap.char(80);
}
