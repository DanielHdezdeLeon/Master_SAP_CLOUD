@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interfacer restful'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_CUSTOMER_TRAVEL_DHL 
provider contract transactional_interface
as projection on Z_R_CUSTOMER_TRAVEL_DHL
{
    key CustomerUuid,
    key CustomerId,
    Description,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _AssociationCustomer
}
