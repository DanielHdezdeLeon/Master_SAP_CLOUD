@AbapCatalog.sqlViewName: 'ZCDS_FLIGHT_HERA'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo Jerárquico y entidad de jerarquía'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_FLIGHT_HIERA_DHL
  as select from zdmo_travel

  association [1..1] to ZCDS_FLIGHT_HIERA_DHL as _Agency on $projection.AgencyId = _Agency.customer_id
{
  key agency_id   as AgencyId,
      customer_id as CustomerId,
      _Agency

}
