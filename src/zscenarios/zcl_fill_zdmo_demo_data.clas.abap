CLASS zcl_fill_zdmo_demo_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PRIVATE SECTION.
    METHODS clear_tables.
    METHODS fill_agencies.
    METHODS fill_customers.
    METHODS fill_flights.
    METHODS fill_travels.
    METHODS fill_bookings.
    METHODS fill_quantities.
    METHODS fill_carriers.
    METHODS fill_airports.
    METHODS fill_city_texts.
    METHODS load_customers.
ENDCLASS.



CLASS ZCL_FILL_ZDMO_DEMO_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    clear_tables( ).

    " Orden de carga segun las relaciones del modelo
    fill_agencies( ).
    fill_customers( ).
    fill_flights( ).
    fill_travels( ).
    fill_bookings( ).
    fill_quantities( ).
    fill_carriers( ).
    fill_airports( ).
    fill_city_texts( ).
    load_customers( ).
    COMMIT WORK.
    out->write( |Carga de datos finalizada correctamente.| ).
  ENDMETHOD.


  METHOD fill_agencies.
    DATA lv_now TYPE utclong.
    lv_now = utclong_current( ).

    DATA lt_agency TYPE STANDARD TABLE OF zdmo_agency WITH EMPTY KEY.

    lt_agency = VALUE #(
          ( client = sy-mandt agency_id = 'A00001' name = 'Global Travel Madrid'
            street = 'Calle Mayor 10' postal_code = '28013' city = 'Madrid'
            country_code = 'ES' phone_number = '+34910000001'
            email_address = 'contact@globaltravel.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00002' name = 'Sun Trips Barcelona'
            street = 'Avenida Diagonal 100' postal_code = '08018' city = 'Barcelona'
            country_code = 'ES' phone_number = '+34930000002'
            email_address = 'info@suntrips.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00003' name = 'Europe Business Trips'
            street = 'Calle Colon 25' postal_code = '46004' city = 'Valencia'
            country_code = 'ES' phone_number = '+34960000003'
            email_address = 'contact@europebusiness.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00004' name = 'Andalucia Travel Services'
            street = 'Calle Sierpes 12' postal_code = '41004' city = 'Sevilla'
            country_code = 'ES' phone_number = '+34950000004'
            email_address = 'info@andaluciatravel.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00005' name = 'North Spain Holidays'
            street = 'Gran Via 45' postal_code = '48011' city = 'Bilbao'
            country_code = 'ES' phone_number = '+34940000005'
            email_address = 'sales@northspain.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00006' name = 'Mediterranean Flights'
            street = 'Calle Larios 8' postal_code = '29005' city = 'Malaga'
            country_code = 'ES' phone_number = '+34950000006'
            email_address = 'booking@medflights.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00007' name = 'Iberia Corporate Travel'
            street = 'Paseo Independencia 20' postal_code = '50004' city = 'Zaragoza'
            country_code = 'ES' phone_number = '+34976000007'
            email_address = 'corporate@iberiatravel.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00008' name = 'Lisbon Travel Partner'
            street = 'Rua Augusta 77' postal_code = '1100-048' city = 'Lisboa'
            country_code = 'PT' phone_number = '+351210000008'
            email_address = 'hello@lisbontravel.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00009' name = 'Paris Air Services'
            street = 'Rue de Rivoli 99' postal_code = '75001' city = 'Paris'
            country_code = 'FR' phone_number = '+33100000009'
            email_address = 'contact@parisair.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now )

          ( client = sy-mandt agency_id = 'A00010' name = 'Berlin Flight Center'
            street = 'Hauptstrasse 12' postal_code = '10115' city = 'Berlin'
            country_code = 'DE' phone_number = '+493000000010'
            email_address = 'service@berlinflight.example.com'
            created_by = sy-uname created_at = lv_now
            last_changed_by = sy-uname last_changed_at = lv_now ) ).

    INSERT zdmo_agency FROM TABLE @lt_agency.
  ENDMETHOD.


  METHOD fill_bookings.
    DATA lt_booking TYPE STANDARD TABLE OF zdmo_booking.
    DATA ls_booking TYPE zdmo_booking.
    DATA lv_now     TYPE utclong.

    lv_now = utclong_current( ).

    DO 50 TIMES.
      DATA(lv_booking_index) = sy-index.
      DATA(lv_travel_ref) = ( ( lv_booking_index - 1 ) MOD 10 ) + 1.
      DATA(lv_booking_cycle) = ( lv_booking_index - 1 ) DIV 10.
      DATA(lv_flight_ref) = lv_travel_ref.

      " Alterna entre las dos fechas disponibles para la misma ruta
      IF lv_booking_cycle MOD 2 = 1.
        lv_flight_ref = lv_travel_ref + 10.
      ENDIF.

      CLEAR ls_booking.
      ls_booking-client = sy-mandt.
      ls_booking-booking_id = |{ lv_booking_index WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-travel_id = |{ lv_travel_ref WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.

      " Agency y Customer coinciden siempre con el Travel padre
      ls_booking-agency_id = |A{ lv_travel_ref WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-customer_id = |A{ lv_travel_ref WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.

      ls_booking-connection_id = |{ lv_flight_ref WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
      ls_booking-flight_date = sy-datum + lv_travel_ref.
      IF lv_flight_ref > 10.
        ls_booking-flight_date = ls_booking-flight_date + 5.
      ENDIF.
      ls_booking-booking_date = sy-datum.

      CASE lv_travel_ref.
        WHEN 1.
          ls_booking-carrier_id = 'IB'.
          ls_booking-currency_code = 'EUR'.
        WHEN 2.
          ls_booking-carrier_id = 'AF'.
          ls_booking-currency_code = 'EUR'.
        WHEN 3.
          ls_booking-carrier_id = 'BA'.
          ls_booking-currency_code = 'GBP'.
        WHEN 4.
          ls_booking-carrier_id = 'TP'.
          ls_booking-currency_code = 'EUR'.
        WHEN 5.
          ls_booking-carrier_id = 'LH'.
          ls_booking-currency_code = 'EUR'.
        WHEN 6.
          ls_booking-carrier_id = 'AZ'.
          ls_booking-currency_code = 'EUR'.
        WHEN 7.
          ls_booking-carrier_id = 'LH'.
          ls_booking-currency_code = 'EUR'.
        WHEN 8.
          ls_booking-carrier_id = 'TP'.
          ls_booking-currency_code = 'EUR'.
        WHEN 9.
          ls_booking-carrier_id = 'AF'.
          ls_booking-currency_code = 'EUR'.
        WHEN 10.
          ls_booking-carrier_id = 'LH'.
          ls_booking-currency_code = 'EUR'.
      ENDCASE.

      CASE lv_booking_index MOD 3.
        WHEN 0.
          ls_booking-booking_status = 'N'.
        WHEN 1.
          ls_booking-booking_status = 'B'.
        WHEN 2.
          ls_booking-booking_status = 'C'.
      ENDCASE.

      " El precio coincide con el vuelo referenciado
      ls_booking-flight_price = 100 + ( lv_flight_ref * 15 ).
      ls_booking-booking_supplement = 20.
      ls_booking-total_price = ls_booking-flight_price + ls_booking-booking_supplement.
      ls_booking-created_by = sy-uname.
      ls_booking-created_at = lv_now.
      ls_booking-last_changed_by = sy-uname.
      ls_booking-last_changed_at = lv_now.
      ls_booking-local_last_changed_at = lv_now.

      APPEND ls_booking TO lt_booking.
    ENDDO.

    INSERT zdmo_booking FROM TABLE @lt_booking.
  ENDMETHOD.


  METHOD fill_flights.
    DATA lt_flight TYPE STANDARD TABLE OF zdmo_flight.
    DATA ls_flight TYPE zdmo_flight.

    DO 20 TIMES.
      DATA(lv_flight_index) = sy-index.
      DATA(lv_route_index) = ( ( lv_flight_index - 1 ) MOD 10 ) + 1.
      DATA(lv_cycle) = ( lv_flight_index - 1 ) DIV 10.

      CLEAR ls_flight.
      ls_flight-client = sy-mandt.
      ls_flight-connection_id = |{ lv_flight_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.

      CASE lv_route_index.
        WHEN 1.
          ls_flight-carrier_id = 'IB'.
          ls_flight-airport_from = 'MAD'.
          ls_flight-airport_to = 'BCN'.
          ls_flight-currency_code = 'EUR'.
        WHEN 2.
          ls_flight-carrier_id = 'AF'.
          ls_flight-airport_from = 'BCN'.
          ls_flight-airport_to = 'CDG'.
          ls_flight-currency_code = 'EUR'.
        WHEN 3.
          ls_flight-carrier_id = 'BA'.
          ls_flight-airport_from = 'VLC'.
          ls_flight-airport_to = 'LHR'.
          ls_flight-currency_code = 'GBP'.
        WHEN 4.
          ls_flight-carrier_id = 'TP'.
          ls_flight-airport_from = 'SVQ'.
          ls_flight-airport_to = 'LIS'.
          ls_flight-currency_code = 'EUR'.
        WHEN 5.
          ls_flight-carrier_id = 'LH'.
          ls_flight-airport_from = 'BIO'.
          ls_flight-airport_to = 'BER'.
          ls_flight-currency_code = 'EUR'.
        WHEN 6.
          ls_flight-carrier_id = 'AZ'.
          ls_flight-airport_from = 'AGP'.
          ls_flight-airport_to = 'FCO'.
          ls_flight-currency_code = 'EUR'.
        WHEN 7.
          ls_flight-carrier_id = 'LH'.
          ls_flight-airport_from = 'ZAZ'.
          ls_flight-airport_to = 'FRA'.
          ls_flight-currency_code = 'EUR'.
        WHEN 8.
          ls_flight-carrier_id = 'TP'.
          ls_flight-airport_from = 'LIS'.
          ls_flight-airport_to = 'MAD'.
          ls_flight-currency_code = 'EUR'.
        WHEN 9.
          ls_flight-carrier_id = 'AF'.
          ls_flight-airport_from = 'CDG'.
          ls_flight-airport_to = 'BCN'.
          ls_flight-currency_code = 'EUR'.
        WHEN 10.
          ls_flight-carrier_id = 'LH'.
          ls_flight-airport_from = 'BER'.
          ls_flight-airport_to = 'MAD'.
          ls_flight-currency_code = 'EUR'.
      ENDCASE.

      ls_flight-flight_date = sy-datum + lv_route_index + ( lv_cycle * 5 ).
      ls_flight-departure_time = '080000'.
      ls_flight-arrival_time = '103000'.
      ls_flight-seats_max = 180.
      ls_flight-seats_occupied = 50 + lv_flight_index.
      ls_flight-price = 100 + ( lv_flight_index * 15 ).

      APPEND ls_flight TO lt_flight.
    ENDDO.

    INSERT zdmo_flight FROM TABLE @lt_flight.
  ENDMETHOD.


  METHOD fill_quantities.
    DATA lt_quantity TYPE TABLE OF zdhl_quantity.
    lt_quantity  = VALUE #(
      ( client = sy-mandt product_id = 'PROD000001' quantity = 1   unit = 'KM' )
      ( client = sy-mandt product_id = 'PROD000002' quantity = 5   unit = 'KM' )
      ( client = sy-mandt product_id = 'PROD000003' quantity = 10  unit = 'KM' )
      ( client = sy-mandt product_id = 'PROD000004' quantity = 50  unit = 'KM' )
      ( client = sy-mandt product_id = 'PROD000005' quantity = 100 unit = 'KM' ) ).

    INSERT zdhl_quantity FROM TABLE @lt_quantity.
  ENDMETHOD.


  METHOD fill_airports.

    DATA lt_airports TYPE STANDARD TABLE OF zdmo_airport.

    GET TIME STAMP FIELD DATA(lv_timestamp).

    lt_airports = VALUE #(

      ( airport_id = 'MAD'
        name = 'Adolfo Suarez Madrid-Barajas'
        city = 'Madrid'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'BCN'
        name = 'Josep Tarradellas Barcelona-El Prat'
        city = 'Barcelona'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'CDG'
        name = 'Charles de Gaulle'
        city = 'Paris'
        country_code = 'FR'
        timezone_code = 'Europe/Paris'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'VLC'
        name = 'Valencia Airport'
        city = 'Valencia'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'LHR'
        name = 'Heathrow Airport'
        city = 'London'
        country_code = 'GB'
        timezone_code = 'Europe/London'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'SVQ'
        name = 'Seville Airport'
        city = 'Sevilla'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'LIS'
        name = 'Humberto Delgado Airport'
        city = 'Lisbon'
        country_code = 'PT'
        timezone_code = 'Europe/Lisbon'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'BIO'
        name = 'Bilbao Airport'
        city = 'Bilbao'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'BER'
        name = 'Berlin Brandenburg'
        city = 'Berlin'
        country_code = 'DE'
        timezone_code = 'Europe/Berlin'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'AGP'
        name = 'Malaga Airport'
        city = 'Malaga'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'FCO'
        name = 'Leonardo da Vinci Fiumicino'
        city = 'Rome'
        country_code = 'IT'
        timezone_code = 'Europe/Rome'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'ZAZ'
        name = 'Zaragoza Airport'
        city = 'Zaragoza'
        country_code = 'ES'
        timezone_code = 'Europe/Madrid'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

      ( airport_id = 'FRA'
        name = 'Frankfurt Airport'
        city = 'Frankfurt'
        country_code = 'DE'
        timezone_code = 'Europe/Berlin'
        created_by = sy-uname
        created_at = lv_timestamp
        last_changed_by = sy-uname
        last_changed_at = lv_timestamp )

    ).

    MODIFY zdmo_airport FROM TABLE @lt_airports.

    COMMIT WORK.

  ENDMETHOD.


  METHOD fill_customers.
    DATA lt_customer TYPE STANDARD TABLE OF zdmo_customer.
    DATA ls_customer TYPE zdmo_customer.
    DATA lv_now      TYPE utclong.

    lv_now = utclong_current( ).

    DO 30 TIMES.
      DATA(lv_customer_index) = sy-index.

      CLEAR ls_customer.
      ls_customer-client       = sy-mandt.
      ls_customer-customer_id  = |{ lv_customer_index WIDTH = 6 PAD = '0' ALIGN = RIGHT }|.
      ls_customer-country_code = 'ES'.

      CASE lv_customer_index.
        WHEN 1.
          ls_customer-first_name = 'Daniel'.
          ls_customer-last_name = 'Hernandez'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Madrid'.
          ls_customer-postal_code = '28013'.
        WHEN 2.
          ls_customer-first_name = 'Laura'.
          ls_customer-last_name = 'Garcia'.
          ls_customer-title = 'Mrs.'.
          ls_customer-city = 'Barcelona'.
          ls_customer-postal_code = '08018'.
        WHEN 3.
          ls_customer-first_name = 'Carlos'.
          ls_customer-last_name = 'Lopez'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Valencia'.
          ls_customer-postal_code = '46004'.
        WHEN 4.
          ls_customer-first_name = 'Maria'.
          ls_customer-last_name = 'Martinez'.
          ls_customer-title = 'Mrs.'.
          ls_customer-city = 'Sevilla'.
          ls_customer-postal_code = '41004'.
        WHEN 5.
          ls_customer-first_name = 'Ana'.
          ls_customer-last_name = 'Sanchez'.
          ls_customer-title = 'Ms.'.
          ls_customer-city = 'Bilbao'.
          ls_customer-postal_code = '48011'.
        WHEN 6.
          ls_customer-first_name = 'Pedro'.
          ls_customer-last_name = 'Perez'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Malaga'.
          ls_customer-postal_code = '29005'.
        WHEN 7.
          ls_customer-first_name = 'Lucia'.
          ls_customer-last_name = 'Gomez'.
          ls_customer-title = 'Ms.'.
          ls_customer-city = 'Zaragoza'.
          ls_customer-postal_code = '50004'.
        WHEN 8.
          ls_customer-first_name = 'Javier'.
          ls_customer-last_name = 'Fernandez'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Oviedo'.
          ls_customer-postal_code = '33003'.
        WHEN 9.
          ls_customer-first_name = 'Sofia'.
          ls_customer-last_name = 'Ruiz'.
          ls_customer-title = 'Ms.'.
          ls_customer-city = 'San Sebastian'.
          ls_customer-postal_code = '20004'.
        WHEN 10.
          ls_customer-first_name = 'Miguel'.
          ls_customer-last_name = 'Diaz'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Murcia'.
          ls_customer-postal_code = '30008'.
        WHEN 11.
          ls_customer-first_name = 'Elena'.
          ls_customer-last_name = 'Moreno'.
          ls_customer-title = 'Mrs.'.
          ls_customer-city = 'Granada'.
          ls_customer-postal_code = '18001'.
        WHEN 12.
          ls_customer-first_name = 'David'.
          ls_customer-last_name = 'Alvarez'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Alicante'.
          ls_customer-postal_code = '03002'.
        WHEN 13.
          ls_customer-first_name = 'Carmen'.
          ls_customer-last_name = 'Romero'.
          ls_customer-title = 'Mrs.'.
          ls_customer-city = 'Logrono'.
          ls_customer-postal_code = '26001'.
        WHEN 14.
          ls_customer-first_name = 'Pablo'.
          ls_customer-last_name = 'Navarro'.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Pamplona'.
          ls_customer-postal_code = '31001'.
        WHEN 15.
          ls_customer-first_name = 'Isabel'.
          ls_customer-last_name = 'Torres'.
          ls_customer-title = 'Mrs.'.
          ls_customer-city = 'Leon'.
          ls_customer-postal_code = '24003'.
        WHEN OTHERS.
          ls_customer-first_name = |Customer{ lv_customer_index }|.
          ls_customer-last_name = |Demo{ lv_customer_index }|.
          ls_customer-title = 'Mr.'.
          ls_customer-city = 'Madrid'.
          ls_customer-postal_code = |28{ lv_customer_index WIDTH = 3 PAD = '0' ALIGN = RIGHT }|.
      ENDCASE.

      ls_customer-street = |Calle Demo { lv_customer_index }|.
      ls_customer-phone_number = |+3460000{ lv_customer_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
      ls_customer-email_address = |customer{ lv_customer_index }@example.com|.
      ls_customer-created_by = sy-uname.
      ls_customer-created_at = lv_now.
      ls_customer-last_changed_by = sy-uname.
      ls_customer-last_changed_at = lv_now.

      APPEND ls_customer TO lt_customer.
    ENDDO.

    INSERT zdmo_customer FROM TABLE @lt_customer.
  ENDMETHOD.


  METHOD fill_travels.
    DATA lt_travel TYPE STANDARD TABLE OF zdmo_travel.
    DATA ls_travel TYPE zdmo_travel.
    DATA lv_now    TYPE utclong.

    lv_now = utclong_current( ).

    DO 10 TIMES.
      DATA(lv_travel_index) = sy-index.

      CLEAR ls_travel.
      ls_travel-client = sy-mandt.
      ls_travel-travel_id = |{ lv_travel_index WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.
      ls_travel-agency_id = |A{ lv_travel_index WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.
      ls_travel-customer_id = |A{ lv_travel_index WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.
      ls_travel-begin_date = sy-datum + lv_travel_index.
      ls_travel-end_date = sy-datum + lv_travel_index + 7.
      ls_travel-booking_fee = '50.00'.
      ls_travel-total_price = 950 + ( 75 * lv_travel_index ).
      ls_travel-currency_code = 'EUR'.


      CASE sy-tabix.
        WHEN 2 OR 9.
          ls_travel-customer_id = 'A00001'.
        WHEN 3 OR 8.
          ls_travel-customer_id = 'A00002'.
        WHEN 4 OR 7.
          ls_travel-customer_id = 'A00003'.
        WHEN 5 OR 6.
          ls_travel-customer_id = 'A00004'.
      ENDCASE.


      CASE lv_travel_index.
        WHEN 1.
          ls_travel-description = 'Viaje Madrid - Barcelona'.
        WHEN 2.
          ls_travel-description = 'Viaje Barcelona - Paris'.
        WHEN 3.
          ls_travel-description = 'Viaje Valencia - Londres'.
          ls_travel-currency_code = 'GBP'.
        WHEN 4.
          ls_travel-description = 'Viaje Sevilla - Lisboa'.
        WHEN 5.
          ls_travel-description = 'Viaje Bilbao - Berlin'.
        WHEN 6.
          ls_travel-description = 'Viaje Malaga - Roma'.
        WHEN 7.
          ls_travel-description = 'Viaje Zaragoza - Frankfurt'.
        WHEN 8.
          ls_travel-description = 'Viaje Lisboa - Madrid'.
        WHEN 9.
          ls_travel-description = 'Viaje Paris - Barcelona'.
        WHEN 10.
          ls_travel-description = 'Viaje Berlin - Madrid'.
      ENDCASE.

      IF lv_travel_index MOD 3 = 0.
        ls_travel-overall_status = 'A'.
      ELSE.
        ls_travel-overall_status = 'O'.
      ENDIF.

      ls_travel-created_by = sy-uname.
      ls_travel-created_at = lv_now.
      ls_travel-last_changed_by = sy-uname.
      ls_travel-last_changed_at = lv_now.
      ls_travel-local_last_changed_at = lv_now.

      APPEND ls_travel TO lt_travel.
    ENDDO.

    INSERT zdmo_travel FROM TABLE @lt_travel.
  ENDMETHOD.


  METHOD fill_city_texts.

    INSERT zcity_texts_dhl
      FROM (
        SELECT DISTINCT
               airport_id,
               city,
               name AS city_text
          FROM zdmo_airport
      ).

    COMMIT WORK.

  ENDMETHOD.

METHOD load_customers.

  CONSTANTS:
    lc_status_open     TYPE zcustomers_dhl-overall_status VALUE 'O',
    lc_status_accepted TYPE zcustomers_dhl-overall_status VALUE 'A',
    lc_status_rejected TYPE zcustomers_dhl-overall_status VALUE 'X'.

  DATA:
    lt_source TYPE TABLE OF zdmo_customer,
    lt_target TYPE TABLE OF zcustomers_dhl.

  TYPES:
    ty_currency TYPE c LENGTH 5.

  DATA:
    lt_statuses   TYPE STANDARD TABLE OF zcustomers_dhl-overall_status,
    lt_currencies TYPE STANDARD TABLE OF ty_currency,
    lt_prices     TYPE STANDARD TABLE OF zcustomers_dhl-price.

  " Estados posibles
  lt_statuses = VALUE #(
    ( lc_status_open )
    ( lc_status_accepted )
    ( lc_status_rejected )
  ).

  " Monedas posibles
  lt_currencies = VALUE #(
    ( 'EUR' )
    ( 'USD' )
    ( 'GBP' )
    ( 'JPY' )
  ).

  " Importes posibles
lt_prices = VALUE #(
  ( CONV zcustomers_dhl-price( '99.99' ) )
  ( CONV zcustomers_dhl-price( '150.50' ) )
  ( CONV zcustomers_dhl-price( '299.99' ) )
  ( CONV zcustomers_dhl-price( '450.00' ) )
  ( CONV zcustomers_dhl-price( '999.99' ) )
).

  SELECT *
    FROM zdmo_customer
    INTO TABLE @lt_source.

  LOOP AT lt_source ASSIGNING FIELD-SYMBOL(<ls_source>).

    GET TIME STAMP FIELD DATA(lv_timestamp).

    DATA(lv_index) = sy-tabix.

    TRY.

        APPEND VALUE #(

          client            = sy-mandt
          customer_uuid     = cl_system_uuid=>create_uuid_x16_static( )
          customer_id       = <ls_source>-customer_id

          "Fechas diferentes
          flight_date       = sy-datum - ( lv_index MOD 30 )

          description       = |{ <ls_source>-first_name } { <ls_source>-last_name }|

          "Rotación de importes
          price = lt_prices[
                    ( ( lv_index - 1 )
                    MOD lines( lt_prices ) ) + 1 ]

          "Rotación de monedas
          currency_code = lt_currencies[
                            ( ( lv_index - 1 )
                            MOD lines( lt_currencies ) ) + 1 ]

          "Rotación de estados
          overall_status = lt_statuses[
                             ( ( lv_index - 1 )
                             MOD lines( lt_statuses ) ) + 1 ]

          local_created_by      = sy-uname
          local_created_at      = lv_timestamp
          local_last_changed_by = sy-uname
          local_last_changed_at = lv_timestamp
          last_changed_at       = lv_timestamp

        ) TO lt_target.

      CATCH cx_uuid_error.
        CONTINUE.
    ENDTRY.

  ENDLOOP.

  INSERT zcustomers_dhl
    FROM TABLE @lt_target
    ACCEPTING DUPLICATE KEYS.

  COMMIT WORK.

ENDMETHOD.


  METHOD clear_tables.
    " Primero se eliminan las tablas dependientes
    DELETE FROM zdmo_booking.
    DELETE FROM zdmo_travel.
    DELETE FROM zdmo_flight.
    DELETE FROM zdmo_customer.
    DELETE FROM zdmo_agency.
    DELETE FROM zdhl_quantity.
    DELETE FROM zdmo_carrier.
    DELETE FROM zdmo_airport.
    DELETE FROM zcity_texts_dhl.
    DELETE FROM zcustomers_dhl.
  ENDMETHOD.


  METHOD fill_carriers.
    DATA lt_table TYPE STANDARD TABLE OF zdmo_carrier.
    lt_table = VALUE #(
      ( carrier_id = 'AB' name = 'Air Berlin'       currency_code = 'EUR' url = 'https://www.airberlin.com' )
      ( carrier_id = 'TP' name = 'TAP Air USA'      currency_code = 'USD' url = 'https://www.flytap.com' )
      ( carrier_id = 'US' name = 'Air USA'          currency_code = 'USD' url = 'https://www.flyUS.com' )
      ( carrier_id = 'LH' name = 'Lufthansa'        currency_code = 'EUR' url = 'https://www.lufthansa.com' )
      ( carrier_id = 'IB' name = 'Iberia'           currency_code = 'EUR' url = 'https://www.iberia.com' )
      ( carrier_id = 'BA' name = 'British Airways'  currency_code = 'GBP' url = 'https://www.britishairways.com' )
      ( carrier_id = 'AZ' name = 'ITA Airways'      currency_code = 'EUR' url = 'https://www.ita-airways.com' )
      ( carrier_id = 'AF' name = 'Air France'       currency_code = 'EUR' url = 'https://www.airfrance.com' )
    ).


    INSERT zdmo_carrier FROM TABLE @lt_table.

    COMMIT WORK.

  ENDMETHOD.
ENDCLASS.
