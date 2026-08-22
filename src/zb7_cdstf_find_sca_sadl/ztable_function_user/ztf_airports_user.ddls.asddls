@EndUserText.label: 'Table function'
@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.algorithm: #SESSION_VARIABLE
@ClientHandling.clientSafe: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
define table function ztf_airports_user
  with parameters
    pCity   : abap.char(50)
//    @Environment.systemField: #CLIENT
//    pClient : abap.clnt
returns
{
  client       : abap.clnt;
  airport_id   : abap.char(5);
  name         : abap.char(100);
  city         : abap.char(50);
  country_code : land1;

}
implemented by method
  zcl_amdp_airport_dhl=>get_flights;