@AbapCatalog.sqlViewName: 'ZCDSAIRDHL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS para AMDP'
@Metadata.ignorePropagatedAnnotations: true
define view zcds_tf_airport_user
  as select from ztf_airports_user(
                 pCity : 'Madrid') as Airport
  //pClient : $session.client )
    inner join   zdmo_customer     as Customer on Airport.city = Customer.city
{
  key Airport.airport_id,
      Airport.name,
      Airport.city,
      Airport.country_code,
      Customer.customer_id,
      Customer.first_name  as customer_name
}
