CLASS zcl_load_zdemo_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_load_zdemo_model IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lv_now TYPE utclong.

    DATA lt_customer TYPE STANDARD TABLE OF zdemo_customer.
    DATA ls_customer TYPE zdemo_customer.

    DATA lt_agency TYPE STANDARD TABLE OF zdemo_agenc.
    DATA ls_agency TYPE zdemo_agenc.

    DATA lt_travel TYPE STANDARD TABLE OF zdemo_travel.
    DATA ls_travel TYPE zdemo_travel.

    lv_now = utclong_current( ).

    out->write( 'Iniciando carga del modelo ZDEMO...' ).

    "------------------------------------------------------------
    " 1. Borrar datos anteriores
    "------------------------------------------------------------
    DELETE FROM zdemo_travel.
    DELETE FROM zdemo_agenc.
    DELETE FROM zdemo_customer.

    COMMIT WORK.

    out->write( 'Datos anteriores eliminados.' ).

    "------------------------------------------------------------
    " 2. Clientes
    "------------------------------------------------------------
    CLEAR ls_customer.
    ls_customer-client          = sy-mandt.
    ls_customer-customer_id     = '000001'.
    ls_customer-first_name      = 'Daniel'.
    ls_customer-last_name       = 'Hernandez'.
    ls_customer-title           = 'Sr.'.
    ls_customer-street          = 'Calle Mayor 1'.
    ls_customer-postal_code     = '28001'.
    ls_customer-city            = 'Madrid'.
    ls_customer-country_code    = 'ES'.
    ls_customer-phone_number    = '+34910000001'.
    ls_customer-email_address   = 'daniel.hernandez@example.com'.
    ls_customer-created_by      = sy-uname.
    ls_customer-created_at      = lv_now.
    ls_customer-last_changed_by = sy-uname.
    ls_customer-last_changed_at = lv_now.
    APPEND ls_customer TO lt_customer.

    CLEAR ls_customer.
    ls_customer-client          = sy-mandt.
    ls_customer-customer_id     = '000002'.
    ls_customer-first_name      = 'Maria'.
    ls_customer-last_name       = 'Garcia'.
    ls_customer-title           = 'Sra.'.
    ls_customer-street          = 'Gran Via 10'.
    ls_customer-postal_code     = '28013'.
    ls_customer-city            = 'Madrid'.
    ls_customer-country_code    = 'ES'.
    ls_customer-phone_number    = '+34910000002'.
    ls_customer-email_address   = 'maria.garcia@example.com'.
    ls_customer-created_by      = sy-uname.
    ls_customer-created_at      = lv_now.
    ls_customer-last_changed_by = sy-uname.
    ls_customer-last_changed_at = lv_now.
    APPEND ls_customer TO lt_customer.

    CLEAR ls_customer.
    ls_customer-client          = sy-mandt.
    ls_customer-customer_id     = '000003'.
    ls_customer-first_name      = 'Carlos'.
    ls_customer-last_name       = 'Lopez'.
    ls_customer-title           = 'Sr.'.
    ls_customer-street          = 'Avenida de America 25'.
    ls_customer-postal_code     = '28002'.
    ls_customer-city            = 'Madrid'.
    ls_customer-country_code    = 'ES'.
    ls_customer-phone_number    = '+34910000003'.
    ls_customer-email_address   = 'carlos.lopez@example.com'.
    ls_customer-created_by      = sy-uname.
    ls_customer-created_at      = lv_now.
    ls_customer-last_changed_by = sy-uname.
    ls_customer-last_changed_at = lv_now.
    APPEND ls_customer TO lt_customer.

    CLEAR ls_customer.
    ls_customer-client          = sy-mandt.
    ls_customer-customer_id     = '000004'.
    ls_customer-first_name      = 'Laura'.
    ls_customer-last_name       = 'Martinez'.
    ls_customer-title           = 'Sra.'.
    ls_customer-street          = 'Paseo de la Castellana 100'.
    ls_customer-postal_code     = '28046'.
    ls_customer-city            = 'Madrid'.
    ls_customer-country_code    = 'ES'.
    ls_customer-phone_number    = '+34910000004'.
    ls_customer-email_address   = 'laura.martinez@example.com'.
    ls_customer-created_by      = sy-uname.
    ls_customer-created_at      = lv_now.
    ls_customer-last_changed_by = sy-uname.
    ls_customer-last_changed_at = lv_now.
    APPEND ls_customer TO lt_customer.

    CLEAR ls_customer.
    ls_customer-client          = sy-mandt.
    ls_customer-customer_id     = '000005'.
    ls_customer-first_name      = 'Javier'.
    ls_customer-last_name       = 'Sanchez'.
    ls_customer-title           = 'Sr.'.
    ls_customer-street          = 'Calle Alcala 50'.
    ls_customer-postal_code     = '28014'.
    ls_customer-city            = 'Madrid'.
    ls_customer-country_code    = 'ES'.
    ls_customer-phone_number    = '+34910000005'.
    ls_customer-email_address   = 'javier.sanchez@example.com'.
    ls_customer-created_by      = sy-uname.
    ls_customer-created_at      = lv_now.
    ls_customer-last_changed_by = sy-uname.
    ls_customer-last_changed_at = lv_now.
    APPEND ls_customer TO lt_customer.

    INSERT zdemo_customer FROM TABLE @lt_customer.

    out->write( |Clientes insertados: { sy-dbcnt }| ).

    "------------------------------------------------------------
    " 3. Agencias
    "------------------------------------------------------------
    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00001'.
    ls_agency-name            = 'Madrid Travel Agency'.
    ls_agency-street          = 'Calle Serrano 15'.
    ls_agency-postal_code     = '28001'.
    ls_agency-city            = 'Madrid'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34912000001'.
    ls_agency-email_address   = 'info@madridtravel.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00002'.
    ls_agency-name            = 'Barcelona Holiday Tours'.
    ls_agency-street          = 'Passeig de Gracia 20'.
    ls_agency-postal_code     = '08007'.
    ls_agency-city            = 'Barcelona'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34932000002'.
    ls_agency-email_address   = 'info@barcelonaholiday.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00003'.
    ls_agency-name            = 'Europe Business Trips'.
    ls_agency-street          = 'Avenida Diagonal 100'.
    ls_agency-postal_code     = '08018'.
    ls_agency-city            = 'Barcelona'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34932000003'.
    ls_agency-email_address   = 'contact@europebusiness.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    INSERT zdemo_agenc FROM TABLE @lt_agency.

    out->write( |Agencias insertadas: { sy-dbcnt }| ).

    "------------------------------------------------------------
    " 4. Viajes
    "------------------------------------------------------------
    CLEAR ls_travel.
    ls_travel-client          = sy-mandt.
    ls_travel-travel_id       = '00000001'.
    ls_travel-agency_id       = 'A00001'.
    ls_travel-customer_id     = '000001'.
    ls_travel-begin_date      = '20260701'.
    ls_travel-end_date        = '20260710'.
    ls_travel-booking_fee     = '25.00'.
    ls_travel-total_price     = '1250.00'.
    ls_travel-currency_code   = 'EUR'.
    ls_travel-description     = 'Viaje demo Madrid - Roma'.
    ls_travel-status          = 'O'.
    ls_travel-created_by      = sy-uname.
    ls_travel-created_at      = lv_now.
    ls_travel-last_changed_by = sy-uname.
    ls_travel-last_changed_at = lv_now.
    APPEND ls_travel TO lt_travel.

    CLEAR ls_travel.
    ls_travel-client          = sy-mandt.
    ls_travel-travel_id       = '00000002'.
    ls_travel-agency_id       = 'A00001'.
    ls_travel-customer_id     = '000002'.
    ls_travel-begin_date      = '20260805'.
    ls_travel-end_date        = '20260812'.
    ls_travel-booking_fee     = '30.00'.
    ls_travel-total_price     = '1580.50'.
    ls_travel-currency_code   = 'EUR'.
    ls_travel-description     = 'Viaje demo Madrid - Paris'.
    ls_travel-status          = 'O'.
    ls_travel-created_by      = sy-uname.
    ls_travel-created_at      = lv_now.
    ls_travel-last_changed_by = sy-uname.
    ls_travel-last_changed_at = lv_now.
    APPEND ls_travel TO lt_travel.

    CLEAR ls_travel.
    ls_travel-client          = sy-mandt.
    ls_travel-travel_id       = '00000003'.
    ls_travel-agency_id       = 'A00002'.
    ls_travel-customer_id     = '000003'.
    ls_travel-begin_date      = '20260915'.
    ls_travel-end_date        = '20260922'.
    ls_travel-booking_fee     = '20.00'.
    ls_travel-total_price     = '980.00'.
    ls_travel-currency_code   = 'EUR'.
    ls_travel-description     = 'Viaje demo Barcelona - Lisboa'.
    ls_travel-status          = 'A'.
    ls_travel-created_by      = sy-uname.
    ls_travel-created_at      = lv_now.
    ls_travel-last_changed_by = sy-uname.
    ls_travel-last_changed_at = lv_now.
    APPEND ls_travel TO lt_travel.

    CLEAR ls_travel.
    ls_travel-client          = sy-mandt.
    ls_travel-travel_id       = '00000004'.
    ls_travel-agency_id       = 'A00003'.
    ls_travel-customer_id     = '000004'.
    ls_travel-begin_date      = '20261001'.
    ls_travel-end_date        = '20261008'.
    ls_travel-booking_fee     = '45.00'.
    ls_travel-total_price     = '2200.00'.
    ls_travel-currency_code   = 'EUR'.
    ls_travel-description     = 'Viaje de negocio Madrid - Berlin'.
    ls_travel-status          = 'O'.
    ls_travel-created_by      = sy-uname.
    ls_travel-created_at      = lv_now.
    ls_travel-last_changed_by = sy-uname.
    ls_travel-last_changed_at = lv_now.
    APPEND ls_travel TO lt_travel.

    CLEAR ls_travel.
    ls_travel-client          = sy-mandt.
    ls_travel-travel_id       = '00000005'.
    ls_travel-agency_id       = 'A00002'.
    ls_travel-customer_id     = '000005'.
    ls_travel-begin_date      = '20261110'.
    ls_travel-end_date        = '20261120'.
    ls_travel-booking_fee     = '35.00'.
    ls_travel-total_price     = '1750.75'.
    ls_travel-currency_code   = 'EUR'.
    ls_travel-description     = 'Viaje demo Barcelona - Londres'.
    ls_travel-status          = 'X'.
    ls_travel-created_by      = sy-uname.
    ls_travel-created_at      = lv_now.
    ls_travel-last_changed_by = sy-uname.
    ls_travel-last_changed_at = lv_now.
    APPEND ls_travel TO lt_travel.

    INSERT zdemo_travel FROM TABLE @lt_travel.

    out->write( |Viajes insertados: { sy-dbcnt }| ).

    COMMIT WORK.

    "------------------------------------------------------------
    " 5. Comprobación final
    "------------------------------------------------------------
    SELECT COUNT(*) FROM zdemo_customer INTO @DATA(lv_customers).
    SELECT COUNT(*) FROM zdemo_agenc   INTO @DATA(lv_agencies).
    SELECT COUNT(*) FROM zdemo_travel   INTO @DATA(lv_travels).

    out->write( '----------------------------------------' ).
    out->write( 'Carga finalizada correctamente.' ).
    out->write( |Clientes totales: { lv_customers }| ).
    out->write( |Agencias totales: { lv_agencies }| ).
    out->write( |Viajes totales: { lv_travels }| ).
    out->write( '----------------------------------------' ).

  ENDMETHOD.

ENDCLASS.
