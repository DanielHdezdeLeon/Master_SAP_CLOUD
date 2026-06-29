CLASS zcl_fill_zdmo_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_fill_zdmo_demo_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_agency   TYPE STANDARD TABLE OF zdmo_agency.
    DATA ls_agency   TYPE zdmo_agency.

    DATA lt_customer TYPE STANDARD TABLE OF zdmo_customer.
    DATA ls_customer TYPE zdmo_customer.

    DATA lt_flight   TYPE STANDARD TABLE OF zdmo_flight.
    DATA ls_flight   TYPE zdmo_flight.

    DATA lt_booking  TYPE STANDARD TABLE OF zdmo_booking.
    DATA ls_booking  TYPE zdmo_booking.

    DATA lv_now TYPE utclong.

    lv_now = utclong_current( ).

    "------------------------------------------------------------
    " Limpiar datos anteriores
    " Importante: primero tablas hijas, luego maestras
    "------------------------------------------------------------
    DELETE FROM zdmo_booking.
    DELETE FROM zdmo_flight.
    DELETE FROM zdmo_customer.
    DELETE FROM zdmo_agency.

    "------------------------------------------------------------
    " 1. Cargar agencias
    "------------------------------------------------------------

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00001'.
    ls_agency-name            = 'Global Travel Madrid'.
    ls_agency-street          = 'Calle Mayor 10'.
    ls_agency-postal_code     = '28013'.
    ls_agency-city            = 'Madrid'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34910000001'.
    ls_agency-email_address   = 'contact@globaltravel.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00002'.
    ls_agency-name            = 'Sun Trips Barcelona'.
    ls_agency-street          = 'Avenida Diagonal 100'.
    ls_agency-postal_code     = '08018'.
    ls_agency-city            = 'Barcelona'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34930000002'.
    ls_agency-email_address   = 'info@suntrips.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00003'.
    ls_agency-name            = 'Europe Business Trips'.
    ls_agency-street          = 'Calle Colon 25'.
    ls_agency-postal_code     = '46004'.
    ls_agency-city            = 'Valencia'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34960000003'.
    ls_agency-email_address   = 'contact@europebusiness.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00004'.
    ls_agency-name            = 'Andalucia Travel Services'.
    ls_agency-street          = 'Calle Sierpes 12'.
    ls_agency-postal_code     = '41004'.
    ls_agency-city            = 'Sevilla'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34950000004'.
    ls_agency-email_address   = 'info@andaluciatravel.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00005'.
    ls_agency-name            = 'North Spain Holidays'.
    ls_agency-street          = 'Gran Via 45'.
    ls_agency-postal_code     = '48011'.
    ls_agency-city            = 'Bilbao'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34940000005'.
    ls_agency-email_address   = 'sales@northspain.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00006'.
    ls_agency-name            = 'Mediterranean Flights'.
    ls_agency-street          = 'Calle Larios 8'.
    ls_agency-postal_code     = '29005'.
    ls_agency-city            = 'Malaga'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34950000006'.
    ls_agency-email_address   = 'booking@medflights.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00007'.
    ls_agency-name            = 'Iberia Corporate Travel'.
    ls_agency-street          = 'Paseo Independencia 20'.
    ls_agency-postal_code     = '50004'.
    ls_agency-city            = 'Zaragoza'.
    ls_agency-country_code    = 'ES'.
    ls_agency-phone_number    = '+34976000007'.
    ls_agency-email_address   = 'corporate@iberiatravel.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00008'.
    ls_agency-name            = 'Lisbon Travel Partner'.
    ls_agency-street          = 'Rua Augusta 77'.
    ls_agency-postal_code     = '1100-048'.
    ls_agency-city            = 'Lisbon'.
    ls_agency-country_code    = 'PT'.
    ls_agency-phone_number    = '+351210000008'.
    ls_agency-email_address   = 'hello@lisbontravel.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00009'.
    ls_agency-name            = 'Paris Air Services'.
    ls_agency-street          = 'Rue de Rivoli 99'.
    ls_agency-postal_code     = '75001'.
    ls_agency-city            = 'Paris'.
    ls_agency-country_code    = 'FR'.
    ls_agency-phone_number    = '+33100000009'.
    ls_agency-email_address   = 'contact@parisair.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    CLEAR ls_agency.
    ls_agency-client          = sy-mandt.
    ls_agency-agency_id       = 'A00010'.
    ls_agency-name            = 'Berlin Flight Center'.
    ls_agency-street          = 'Hauptstrasse 12'.
    ls_agency-postal_code     = '10115'.
    ls_agency-city            = 'Berlin'.
    ls_agency-country_code    = 'DE'.
    ls_agency-phone_number    = '+493000000010'.
    ls_agency-email_address   = 'service@berlinflight.example.com'.
    ls_agency-created_by      = sy-uname.
    ls_agency-created_at      = lv_now.
    ls_agency-last_changed_by = sy-uname.
    ls_agency-last_changed_at = lv_now.
    APPEND ls_agency TO lt_agency.

    INSERT zdmo_agency FROM TABLE @lt_agency.
    out->write( |Agencias insertadas: { sy-dbcnt }| ).

    "------------------------------------------------------------
    " 2. Cargar clientes
    "------------------------------------------------------------

    DO 30 TIMES.

      DATA(lv_customer_index) = sy-index.
      DATA(lv_customer_id)    = |{ lv_customer_index WIDTH = 6 PAD = '0' ALIGN = RIGHT }|.

      CLEAR ls_customer.

      ls_customer-client      = sy-mandt.
      ls_customer-customer_id = lv_customer_id.

      CASE lv_customer_index.
        WHEN 1.
          ls_customer-first_name    = 'Daniel'.
          ls_customer-last_name     = 'Hernandez'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Madrid'.
          ls_customer-postal_code   = '28013'.
        WHEN 2.
          ls_customer-first_name    = 'Laura'.
          ls_customer-last_name     = 'Garcia'.
          ls_customer-title         = 'Mrs.'.
          ls_customer-city          = 'Barcelona'.
          ls_customer-postal_code   = '08018'.
        WHEN 3.
          ls_customer-first_name    = 'Carlos'.
          ls_customer-last_name     = 'Lopez'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Valencia'.
          ls_customer-postal_code   = '46004'.
        WHEN 4.
          ls_customer-first_name    = 'Maria'.
          ls_customer-last_name     = 'Martinez'.
          ls_customer-title         = 'Mrs.'.
          ls_customer-city          = 'Sevilla'.
          ls_customer-postal_code   = '41004'.
        WHEN 5.
          ls_customer-first_name    = 'Ana'.
          ls_customer-last_name     = 'Sanchez'.
          ls_customer-title         = 'Ms.'.
          ls_customer-city          = 'Bilbao'.
          ls_customer-postal_code   = '48011'.
        WHEN 6.
          ls_customer-first_name    = 'Pedro'.
          ls_customer-last_name     = 'Perez'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Malaga'.
          ls_customer-postal_code   = '29005'.
        WHEN 7.
          ls_customer-first_name    = 'Lucia'.
          ls_customer-last_name     = 'Gomez'.
          ls_customer-title         = 'Ms.'.
          ls_customer-city          = 'Zaragoza'.
          ls_customer-postal_code   = '50004'.
        WHEN 8.
          ls_customer-first_name    = 'Javier'.
          ls_customer-last_name     = 'Fernandez'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Oviedo'.
          ls_customer-postal_code   = '33003'.
        WHEN 9.
          ls_customer-first_name    = 'Sofia'.
          ls_customer-last_name     = 'Ruiz'.
          ls_customer-title         = 'Ms.'.
          ls_customer-city          = 'San Sebastian'.
          ls_customer-postal_code   = '20004'.
        WHEN 10.
          ls_customer-first_name    = 'Miguel'.
          ls_customer-last_name     = 'Diaz'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Murcia'.
          ls_customer-postal_code   = '30008'.
        WHEN 11.
          ls_customer-first_name    = 'Elena'.
          ls_customer-last_name     = 'Moreno'.
          ls_customer-title         = 'Mrs.'.
          ls_customer-city          = 'Granada'.
          ls_customer-postal_code   = '18001'.
        WHEN 12.
          ls_customer-first_name    = 'David'.
          ls_customer-last_name     = 'Alvarez'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Alicante'.
          ls_customer-postal_code   = '03002'.
        WHEN 13.
          ls_customer-first_name    = 'Carmen'.
          ls_customer-last_name     = 'Romero'.
          ls_customer-title         = 'Mrs.'.
          ls_customer-city          = 'Logrono'.
          ls_customer-postal_code   = '26001'.
        WHEN 14.
          ls_customer-first_name    = 'Pablo'.
          ls_customer-last_name     = 'Navarro'.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Pamplona'.
          ls_customer-postal_code   = '31001'.
        WHEN 15.
          ls_customer-first_name    = 'Isabel'.
          ls_customer-last_name     = 'Torres'.
          ls_customer-title         = 'Mrs.'.
          ls_customer-city          = 'Leon'.
          ls_customer-postal_code   = '24003'.
        WHEN OTHERS.
          ls_customer-first_name    = |Customer{ lv_customer_index }|.
          ls_customer-last_name     = |Demo{ lv_customer_index }|.
          ls_customer-title         = 'Mr.'.
          ls_customer-city          = 'Madrid'.
          ls_customer-postal_code   = |28{ lv_customer_index WIDTH = 3 PAD = '0' ALIGN = RIGHT }|.
      ENDCASE.

      ls_customer-street          = |Calle Demo { lv_customer_index }|.
      ls_customer-country_code    = 'ES'.
      ls_customer-phone_number    = |+3460000{ lv_customer_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
      ls_customer-email_address   = |customer{ lv_customer_index }@example.com|.
      ls_customer-created_by      = sy-uname.
      ls_customer-created_at      = lv_now.
      ls_customer-last_changed_by = sy-uname.
      ls_customer-last_changed_at = lv_now.

      APPEND ls_customer TO lt_customer.

    ENDDO.

    INSERT zdmo_customer FROM TABLE @lt_customer.
    out->write( |Clientes insertados: { sy-dbcnt }| ).

    "------------------------------------------------------------
    " 3. Cargar vuelos
    "------------------------------------------------------------

    DO 20 TIMES.

      DATA(lv_flight_index) = sy-index.

      CLEAR ls_flight.

      ls_flight-client        = sy-mandt.

      CASE lv_flight_index MOD 5.
        WHEN 0.
          ls_flight-carrier_id    = 'LH'.
          ls_flight-airport_from  = 'MAD'.
          ls_flight-airport_to    = 'FRA'.
          ls_flight-currency_code = 'EUR'.
        WHEN 1.
          ls_flight-carrier_id    = 'IB'.
          ls_flight-airport_from  = 'MAD'.
          ls_flight-airport_to    = 'BCN'.
          ls_flight-currency_code = 'EUR'.
        WHEN 2.
          ls_flight-carrier_id    = 'BA'.
          ls_flight-airport_from  = 'MAD'.
          ls_flight-airport_to    = 'LHR'.
          ls_flight-currency_code = 'GBP'.
        WHEN 3.
          ls_flight-carrier_id    = 'AF'.
          ls_flight-airport_from  = 'MAD'.
          ls_flight-airport_to    = 'CDG'.
          ls_flight-currency_code = 'EUR'.
        WHEN 4.
          ls_flight-carrier_id    = 'TP'.
          ls_flight-airport_from  = 'MAD'.
          ls_flight-airport_to    = 'LIS'.
          ls_flight-currency_code = 'EUR'.
      ENDCASE.

      ls_flight-connection_id  = |{ lv_flight_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
      ls_flight-flight_date    = sy-datum + lv_flight_index.
      ls_flight-departure_time = '080000'.
      ls_flight-arrival_time   = '103000'.
      ls_flight-seats_max      = 180.
      ls_flight-seats_occupied = 50 + lv_flight_index.
      ls_flight-price          = 100 + lv_flight_index * 15.

      APPEND ls_flight TO lt_flight.

    ENDDO.

    INSERT zdmo_flight FROM TABLE @lt_flight.
    out->write( |Vuelos insertados: { sy-dbcnt }| ).

    "------------------------------------------------------------
    " 4. Cargar reservas
    "------------------------------------------------------------

    DO 50 TIMES.

      DATA(lv_booking_index)  = sy-index.
      DATA(lv_customer_ref)   = ( lv_booking_index MOD 30 ) + 1.
      DATA(lv_agency_ref)     = ( lv_booking_index MOD 10 ) + 1.
      DATA(lv_flight_ref)     = ( lv_booking_index MOD 20 ) + 1.

      CLEAR ls_booking.

      ls_booking-client        = sy-mandt.
      ls_booking-booking_id    = |{ lv_booking_index WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-customer_id   = |{ lv_customer_ref WIDTH = 6 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-agency_id     = |A{ lv_agency_ref WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-connection_id = |{ lv_flight_ref WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-flight_date   = sy-datum + lv_flight_ref.
      ls_booking-booking_date  = sy-datum.

      CASE lv_flight_ref MOD 5.
        WHEN 0.
          ls_booking-carrier_id    = 'LH'.
          ls_booking-currency_code = 'EUR'.
        WHEN 1.
          ls_booking-carrier_id    = 'IB'.
          ls_booking-currency_code = 'EUR'.
        WHEN 2.
          ls_booking-carrier_id    = 'BA'.
          ls_booking-currency_code = 'GBP'.
        WHEN 3.
          ls_booking-carrier_id    = 'AF'.
          ls_booking-currency_code = 'EUR'.
        WHEN 4.
          ls_booking-carrier_id    = 'TP'.
          ls_booking-currency_code = 'EUR'.
      ENDCASE.

      CASE lv_booking_index MOD 3.
        WHEN 0.
          ls_booking-booking_status = 'N'. " New
        WHEN 1.
          ls_booking-booking_status = 'B'. " Booked
        WHEN 2.
          ls_booking-booking_status = 'C'. " Cancelled
      ENDCASE.

      ls_booking-total_price      = 120 + lv_booking_index * 10.
      ls_booking-created_by       = sy-uname.
      ls_booking-created_at       = lv_now.
      ls_booking-last_changed_by  = sy-uname.
      ls_booking-last_changed_at  = lv_now.

      APPEND ls_booking TO lt_booking.

    ENDDO.

    INSERT zdmo_booking FROM TABLE @lt_booking.
    out->write( |Reservas insertadas: { sy-dbcnt }| ).

    COMMIT WORK.

    out->write( |Carga de datos finalizada correctamente.| ).

  ENDMETHOD.

ENDCLASS.
