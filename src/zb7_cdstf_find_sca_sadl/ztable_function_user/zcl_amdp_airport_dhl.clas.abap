CLASS zcl_amdp_airport_dhl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_amdp_marker_hdb.
    INTERFACES if_oo_adt_classrun.
    CLASS-METHODS: get_flights FOR TABLE FUNCTION ztf_airports_user.


    TYPES: BEGIN OF ty_data,
             customer_id  TYPE i,
             first_name   TYPE c LENGTH 40,
             last_name    TYPE c LENGTH 40,
             street       TYPE c LENGTH 40,
             city         TYPE c LENGTH 50,
             country      TYPE land1,
             airport_name TYPE c LENGTH 100,
           END OF ty_data.


    TYPES ty_data_t TYPE STANDARD TABLE OF ty_data.
    CLASS-METHODS: get_airports AMDP OPTIONS CDS SESSION CLIENT DEPENDENT
      IMPORTING VALUE(iv_country) TYPE  Zland1
      EXPORTING VALUE(et_return)  TYPE ty_data_t.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_AMDP_AIRPORT_DHL IMPLEMENTATION.


  METHOD get_flights BY DATABASE FUNCTION FOR HDB
                     LANGUAGE SQLSCRIPT
                     OPTIONS READ-ONLY
                     USING zdmo_airport.

    RETURN Select mandt as client, airport_id, name, city, country_code
      from  zdmo_airport AS airports
      where airports.city = :pCity
        AND airports.mandt = session_context( 'CDS_CLIENT' )
        order by airports.city desc;

  endmethod.


  METHOD get_airports BY DATABASE PROCEDURE FOR HDB
                      LANGUAGE SQLSCRIPT
                      OPTIONS READ-ONLY
                      USING Zdmo_customer  zcds_airport_amdp_Dhl.

    et_return = select TOP 10
                           c.customer_id,
                           c.first_name,
                           c.last_name,
                           c.street,
                           c.city,
                           c.country_code as country,
                           a.name as airport_name
                from Zdmo_customer as c
                inner join zcds_airport_amdp_Dhl as a
                on c.city = a.city
                where a.countrycode = :iv_country
*                  AND c.mandt = session_context( 'CDS_CLIENT' )
*                  AND a.mandt = session_context( 'CDS_CLIENT' )
                ORDER BY c.city desc;

  endmethod.


  METHOD if_oo_adt_classrun~main.
        get_airports( EXPORTING iv_country = 'ES' IMPORTING et_return = DATA(lt_return) ).
        out->write( lt_return ).
  ENDMETHOD.
ENDCLASS.
