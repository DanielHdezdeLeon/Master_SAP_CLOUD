@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección – Contrato Transacc Interfaz'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUST_PROJ_USER
  provider contract transactional_interface
  as projection on ZCDS_CUSTOMER_ROOT_USER
{
  key CustomerId,
      FirstName,
      LastName,
      City,
      /* Associations */
      _Booking : redirected to composition child ZCDS_CHILD_PROJ_USER,
      _Agency
}
