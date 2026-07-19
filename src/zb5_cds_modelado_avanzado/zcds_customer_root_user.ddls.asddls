@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad raíz – Define Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUSTOMER_ROOT_USER as select from zdmo_customer
composition [1..*] of ZCDS_CUST_BOOK_DHL as _Booking 
association [1..1] to zdmo_agency as _Agency on $projection.CustomerId = _Agency.agency_id
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    city as City,
    _Booking,
    _Agency 
    
}
