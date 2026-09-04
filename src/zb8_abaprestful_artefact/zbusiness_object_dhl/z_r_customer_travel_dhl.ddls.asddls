@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad Raíz (Root Entity),REST-RAP'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_CUSTOMER_TRAVEL_DHL
  as select from zcustomers_dhl
  //composition of target_data_source_name as _association_name
  association [0..1] to ZI_CUSTOMER as _AssociationCustomer on $projection.CustomerId = _AssociationCustomer.CustomerId
{
  key customer_uuid         as CustomerUuid,
  key customer_id           as CustomerId,
  key flight_date           as FlightDate,
      description           as Description,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      price                 as Price,
      @EndUserText.label : 'Currency Code'
      currency_code         as CurrencyCode,
      @EndUserText.label : 'Status'
      overall_status        as OverallStatus,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      //Local etag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //total etag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      _AssociationCustomer
}
