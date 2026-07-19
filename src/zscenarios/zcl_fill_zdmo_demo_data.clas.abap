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
ENDCLASS.

CLASS zcl_fill_zdmo_demo_data IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    clear_tables( ).

    " Orden de carga segun las relaciones del modelo
    fill_agencies( ).
    fill_customers( ).
    fill_flights( ).
    fill_travels( ).
    fill_bookings( ).
    fill_quantities( ).

    COMMIT WORK.
    out->write( |Carga de datos finalizada correctamente.| ).
  ENDMETHOD.

  METHOD clear_tables.
    " Primero se eliminan las tablas dependientes
    DELETE FROM zdmo_booking.
    DELETE FROM zdmo_travel.
    DELETE FROM zdmo_flight.
    DELETE FROM zdmo_customer.
    DELETE FROM zdmo_agency.
    DELETE FROM zdhl_quantity.
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
        WHEN 1.  ls_travel-description = 'Viaje Madrid - Barcelona'.
        WHEN 2.  ls_travel-description = 'Viaje Barcelona - Paris'.
        WHEN 3.
          ls_travel-description = 'Viaje Valencia - Londres'.
          ls_travel-currency_code = 'GBP'.
        WHEN 4.  ls_travel-description = 'Viaje Sevilla - Lisboa'.
        WHEN 5.  ls_travel-description = 'Viaje Bilbao - Berlin'.
        WHEN 6.  ls_travel-description = 'Viaje Malaga - Roma'.
        WHEN 7.  ls_travel-description = 'Viaje Zaragoza - Frankfurt'.
        WHEN 8.  ls_travel-description = 'Viaje Lisboa - Madrid'.
        WHEN 9.  ls_travel-description = 'Viaje Paris - Barcelona'.
        WHEN 10. ls_travel-description = 'Viaje Berlin - Madrid'.
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
        WHEN 0. ls_booking-booking_status = 'N'.
        WHEN 1. ls_booking-booking_status = 'B'.
        WHEN 2. ls_booking-booking_status = 'C'.
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

ENDCLASS.





*CLASS zcl_fill_zdmo_demo_data DEFINITION
*  PUBLIC
*  FINAL
*  CREATE PUBLIC.
*
*  PUBLIC SECTION.
*
*    INTERFACES if_oo_adt_classrun.
*
*  PRIVATE SECTION.
*
*    METHODS fill_agencies.
*    METHODS fill_customers.
*    METHODS fill_flights.
*    METHODS fill_bookings.
*    METHODS fill_quantities.
*    METHODS fill_travels.
*    METHODS clear_tables.
*
*ENDCLASS.
*
*CLASS zcl_fill_zdmo_demo_data IMPLEMENTATION.
*
*  METHOD if_oo_adt_classrun~main.
*
*    clear_tables( ).
*    fill_agencies( ).
*    fill_customers( ).
*    fill_flights( ).
*    fill_bookings( ).
*    fill_quantities( ).
*    fill_travels( ).
*
*    COMMIT WORK.
*
*    out->write( |Carga de datos finalizada correctamente.| ).
*
*  ENDMETHOD.
*
*  METHOD clear_tables.
*
*    DELETE FROM zdmo_booking.
*    DELETE FROM zdmo_travel.
*    DELETE FROM zdmo_flight.
*    DELETE FROM zdmo_customer.
*    DELETE FROM zdmo_agency.
*    DELETE FROM zdhl_quantity.
*
*  ENDMETHOD.
*
*  METHOD fill_quantities.
*
*    DATA lt_quantity TYPE TABLE OF zdhl_quantity.
*
*    lt_quantity = VALUE #(
*      ( client = sy-mandt product_id = 'PROD000001' quantity = 1    unit = 'KM' )
*      ( client = sy-mandt product_id = 'PROD000002' quantity = 5    unit = 'KM' )
*      ( client = sy-mandt product_id = 'PROD000003' quantity = 10   unit = 'KM' )
*      ( client = sy-mandt product_id = 'PROD000004' quantity = 50   unit = 'KM' )
*      ( client = sy-mandt product_id = 'PROD000005' quantity = 100  unit = 'KM' )
*    ).
*
*    INSERT zdhl_quantity FROM TABLE @lt_quantity.
*
*  ENDMETHOD.
*
*  METHOD fill_agencies.
*
*    DATA lt_agency TYPE STANDARD TABLE OF zdmo_agency.
*    DATA ls_agency TYPE zdmo_agency.
*    DATA lv_now    TYPE utclong.
*
*    lv_now = utclong_current( ).
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00001'.
*    ls_agency-name            = 'Global Travel Madrid'.
*    ls_agency-street          = 'Calle Mayor 10'.
*    ls_agency-postal_code     = '28013'.
*    ls_agency-city            = 'Madrid'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34910000001'.
*    ls_agency-email_address   = 'contact@globaltravel.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00002'.
*    ls_agency-name            = 'Sun Trips Barcelona'.
*    ls_agency-street          = 'Avenida Diagonal 100'.
*    ls_agency-postal_code     = '08018'.
*    ls_agency-city            = 'Barcelona'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34930000002'.
*    ls_agency-email_address   = 'info@suntrips.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00003'.
*    ls_agency-name            = 'Europe Business Trips'.
*    ls_agency-street          = 'Calle Colon 25'.
*    ls_agency-postal_code     = '46004'.
*    ls_agency-city            = 'Milan'.
*    ls_agency-country_code    = 'IT'.
*    ls_agency-phone_number    = '+34960000003'.
*    ls_agency-email_address   = 'contact@europebusiness.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00004'.
*    ls_agency-name            = 'Andalucia Travel Services'.
*    ls_agency-street          = 'Calle Sierpes 12'.
*    ls_agency-postal_code     = '41004'.
*    ls_agency-city            = 'Sevilla'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34950000004'.
*    ls_agency-email_address   = 'info@andaluciatravel.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00005'.
*    ls_agency-name            = 'North Spain Holidays'.
*    ls_agency-street          = 'Gran Via 45'.
*    ls_agency-postal_code     = '48011'.
*    ls_agency-city            = 'Bilbao'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34940000005'.
*    ls_agency-email_address   = 'sales@northspain.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00006'.
*    ls_agency-name            = 'Mediterranean Flights'.
*    ls_agency-street          = 'Calle Larios 8'.
*    ls_agency-postal_code     = '29005'.
*    ls_agency-city            = 'Malaga'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34950000006'.
*    ls_agency-email_address   = 'booking@medflights.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00007'.
*    ls_agency-name            = 'Iberia Corporate Travel'.
*    ls_agency-street          = 'Paseo Independencia 20'.
*    ls_agency-postal_code     = '50004'.
*    ls_agency-city            = 'Zaragoza'.
*    ls_agency-country_code    = 'ES'.
*    ls_agency-phone_number    = '+34976000007'.
*    ls_agency-email_address   = 'corporate@iberiatravel.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00008'.
*    ls_agency-name            = 'Lisbon Travel Partner'.
*    ls_agency-street          = 'Rua Augusta 77'.
*    ls_agency-postal_code     = '1100-048'.
*    ls_agency-city            = 'Lisbon'.
*    ls_agency-country_code    = 'PT'.
*    ls_agency-phone_number    = '+351210000008'.
*    ls_agency-email_address   = 'hello@lisbontravel.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00009'.
*    ls_agency-name            = 'Paris Air Services'.
*    ls_agency-street          = 'Rue de Rivoli 99'.
*    ls_agency-postal_code     = '75001'.
*    ls_agency-city            = 'Paris'.
*    ls_agency-country_code    = 'FR'.
*    ls_agency-phone_number    = '+33100000009'.
*    ls_agency-email_address   = 'contact@parisair.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    CLEAR ls_agency.
*    ls_agency-client          = sy-mandt.
*    ls_agency-agency_id       = 'A00010'.
*    ls_agency-name            = 'Berlin Flight Center'.
*    ls_agency-street          = 'Hauptstrasse 12'.
*    ls_agency-postal_code     = '10115'.
*    ls_agency-city            = 'Berlin'.
*    ls_agency-country_code    = 'DE'.
*    ls_agency-phone_number    = '+493000000010'.
*    ls_agency-email_address   = 'service@berlinflight.example.com'.
*    ls_agency-created_by      = sy-uname.
*    ls_agency-created_at      = lv_now.
*    ls_agency-last_changed_by = sy-uname.
*    ls_agency-last_changed_at = lv_now.
*    APPEND ls_agency TO lt_agency.
*
*    INSERT zdmo_agency FROM TABLE @lt_agency.
*
*  ENDMETHOD.
*
*  METHOD fill_customers.
*
*    DATA lt_customer TYPE STANDARD TABLE OF zdmo_customer.
*    DATA ls_customer TYPE zdmo_customer.
*    DATA lv_now      TYPE utclong.
*
*    lv_now = utclong_current( ).
*
*    DO 30 TIMES.
*
*      DATA(lv_customer_index) = sy-index.
*      DATA(lv_customer_id)    = |{ lv_customer_index WIDTH = 6 PAD = '0' ALIGN = RIGHT }|.
*
*      CLEAR ls_customer.
*
*      ls_customer-client      = sy-mandt.
*      ls_customer-customer_id = lv_customer_id.
*
*      CASE lv_customer_index.
*        WHEN 1.
*          ls_customer-first_name    = 'Daniel'.
*          ls_customer-last_name     = 'Hernandez'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Madrid'.
*          ls_customer-postal_code   = '28013'.
*          ls_customer-country_code  = 'DE'.
*
*        WHEN 2.
*          ls_customer-first_name    = 'Laura'.
*          ls_customer-last_name     = 'Garcia'.
*          ls_customer-title         = 'Mrs.'.
*          ls_customer-city          = 'Barcelona'.
*          ls_customer-postal_code   = '08018'.
*          ls_customer-country_code  = 'ES'.
*
*        WHEN 3.
*          ls_customer-first_name    = 'Carlos'.
*          ls_customer-last_name     = 'Lopez'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Valencia'.
*          ls_customer-postal_code   = '46004'.
*          ls_customer-country_code  = 'ES'.
*
*        WHEN 4.
*          ls_customer-first_name    = 'Maria'.
*          ls_customer-last_name     = 'Martinez'.
*          ls_customer-title         = 'Mrs.'.
*          ls_customer-city          = 'Sevilla'.
*          ls_customer-postal_code   = '41004'.
*          ls_customer-country_code  = 'FR'.
*
*        WHEN 5.
*          ls_customer-first_name    = 'Ana'.
*          ls_customer-last_name     = 'Sanchez'.
*          ls_customer-title         = 'Ms.'.
*          ls_customer-city          = 'Bilbao'.
*          ls_customer-postal_code   = '48011'.
*          ls_customer-country_code  = 'DE'.
*
*        WHEN 6.
*          ls_customer-first_name    = 'Pedro'.
*          ls_customer-last_name     = 'Perez'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Malaga'.
*          ls_customer-postal_code   = '29005'.
*          ls_customer-country_code  = 'FR'.
*
*        WHEN 7.
*          ls_customer-first_name    = 'Lucia'.
*          ls_customer-last_name     = 'Gomez'.
*          ls_customer-title         = 'Ms.'.
*          ls_customer-city          = 'Zaragoza'.
*          ls_customer-postal_code   = '50004'.
*
*        WHEN 8.
*          ls_customer-first_name    = 'Javier'.
*          ls_customer-last_name     = 'Fernandez'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Oviedo'.
*          ls_customer-postal_code   = '33003'.
*
*        WHEN 9.
*          ls_customer-first_name    = 'Sofia'.
*          ls_customer-last_name     = 'Ruiz'.
*          ls_customer-title         = 'Ms.'.
*          ls_customer-city          = 'San Sebastian'.
*          ls_customer-postal_code   = '20004'.
*
*        WHEN 10.
*          ls_customer-first_name    = 'Miguel'.
*          ls_customer-last_name     = 'Diaz'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Murcia'.
*          ls_customer-postal_code   = '30008'.
*
*        WHEN 11.
*          ls_customer-first_name    = 'Elena'.
*          ls_customer-last_name     = 'Moreno'.
*          ls_customer-title         = 'Mrs.'.
*          ls_customer-city          = 'Granada'.
*          ls_customer-postal_code   = '18001'.
*
*        WHEN 12.
*          ls_customer-first_name    = 'David'.
*          ls_customer-last_name     = 'Alvarez'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Alicante'.
*          ls_customer-postal_code   = '03002'.
*
*        WHEN 13.
*          ls_customer-first_name    = 'Carmen'.
*          ls_customer-last_name     = 'Romero'.
*          ls_customer-title         = 'Mrs.'.
*          ls_customer-city          = 'Logrono'.
*          ls_customer-postal_code   = '26001'.
*
*        WHEN 14.
*          ls_customer-first_name    = 'Pablo'.
*          ls_customer-last_name     = 'Navarro'.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Pamplona'.
*          ls_customer-postal_code   = '31001'.
*
*        WHEN 15.
*          ls_customer-first_name    = 'Isabel'.
*          ls_customer-last_name     = 'Torres'.
*          ls_customer-title         = 'Mrs.'.
*          ls_customer-city          = 'Leon'.
*          ls_customer-postal_code   = '24003'.
*          ls_customer-country_code  = 'ES'.
*
*        WHEN OTHERS.
*          ls_customer-first_name    = |Customer{ lv_customer_index }|.
*          ls_customer-last_name     = |Demo{ lv_customer_index }|.
*          ls_customer-title         = 'Mr.'.
*          ls_customer-city          = 'Madrid'.
*          ls_customer-country_code  = 'DE'.
*          ls_customer-postal_code   = |28{ lv_customer_index WIDTH = 3 PAD = '0' ALIGN = RIGHT }|.
*
*      ENDCASE.
*
*      ls_customer-street = |Calle Demo { lv_customer_index }|.
*
*      IF ls_customer-country_code IS INITIAL.
*        ls_customer-country_code = 'ES'.
*      ENDIF.
*
*      ls_customer-phone_number    = |+3460000{ lv_customer_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
*      ls_customer-email_address   = |customer{ lv_customer_index }@example.com|.
*      ls_customer-created_by      = sy-uname.
*      ls_customer-created_at      = lv_now.
*      ls_customer-last_changed_by = sy-uname.
*      ls_customer-last_changed_at = lv_now.
*
*      APPEND ls_customer TO lt_customer.
*
*    ENDDO.
*
*    INSERT zdmo_customer FROM TABLE @lt_customer.
*
*  ENDMETHOD.
*
*  METHOD fill_flights.
*
*    DATA lt_flight TYPE STANDARD TABLE OF zdmo_flight.
*    DATA ls_flight TYPE zdmo_flight.
*
*    DO 20 TIMES.
*
*      DATA(lv_flight_index) = sy-index.
*
*      CLEAR ls_flight.
*
*      ls_flight-client = sy-mandt.
*
*      CASE lv_flight_index MOD 5.
*        WHEN 0.
*          ls_flight-carrier_id    = 'LH'.
*          ls_flight-airport_from  = 'MAD'.
*          ls_flight-airport_to    = 'FRA'.
*          ls_flight-currency_code = 'EUR'.
*
*        WHEN 1.
*          ls_flight-carrier_id    = 'IB'.
*          ls_flight-airport_from  = 'MAD'.
*          ls_flight-airport_to    = 'BCN'.
*          ls_flight-currency_code = 'EUR'.
*
*        WHEN 2.
*          ls_flight-carrier_id    = 'BA'.
*          ls_flight-airport_from  = 'MAD'.
*          ls_flight-airport_to    = 'LHR'.
*          ls_flight-currency_code = 'GBP'.
*
*        WHEN 3.
*          ls_flight-carrier_id    = 'AF'.
*          ls_flight-airport_from  = 'MAD'.
*          ls_flight-airport_to    = 'CDG'.
*          ls_flight-currency_code = 'EUR'.
*
*        WHEN 4.
*          ls_flight-carrier_id    = 'TP'.
*          ls_flight-airport_from  = 'MAD'.
*          ls_flight-airport_to    = 'LIS'.
*          ls_flight-currency_code = 'EUR'.
*      ENDCASE.
*
*      ls_flight-connection_id  = |{ lv_flight_index WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
*      ls_flight-flight_date    = sy-datum + lv_flight_index.
*      ls_flight-departure_time = '080000'.
*      ls_flight-arrival_time   = '103000'.
*      ls_flight-seats_max      = 180.
*      ls_flight-seats_occupied = 50 + lv_flight_index.
*      ls_flight-price          = 100 + lv_flight_index * 15.
*
*      APPEND ls_flight TO lt_flight.
*
*    ENDDO.
*
*    INSERT zdmo_flight FROM TABLE @lt_flight.
*
*  ENDMETHOD.
*
*  METHOD fill_bookings.
*
*    DATA lt_booking TYPE STANDARD TABLE OF zdmo_booking.
*    DATA ls_booking TYPE zdmo_booking.
*    DATA lv_now     TYPE utclong.
*
*    lv_now = utclong_current( ).
*
*    DO 50 TIMES.
*
*      DATA(lv_booking_index) = sy-index.
*      DATA(lv_customer_ref)  = ( lv_booking_index MOD 30 ) + 1.
*      DATA(lv_agency_ref)    = ( lv_booking_index MOD 10 ) + 1.
*      DATA(lv_flight_ref)    = ( lv_booking_index MOD 20 ) + 1.
*      DATA(lv_travel_ref)    = ( lv_booking_index MOD 3 ) + 1.
*
*      CLEAR ls_booking.
*
*      ls_booking-client      = sy-mandt.
*      ls_booking-booking_id  = |{ lv_booking_index WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.
*
*      ls_booking-travel_id   = |{ lv_travel_ref WIDTH = 8 PAD = '0' ALIGN = RIGHT }|.
*
*      ls_booking-customer_id = |{ lv_customer_ref WIDTH = 6 PAD = '0' ALIGN = RIGHT }|.
*      ls_booking-agency_id   = |A{ lv_agency_ref WIDTH = 5 PAD = '0' ALIGN = RIGHT }|.
*
*      ls_booking-connection_id = |{ lv_flight_ref WIDTH = 4 PAD = '0' ALIGN = RIGHT }|.
*      ls_booking-flight_date   = sy-datum + lv_flight_ref.
*      ls_booking-booking_date  = sy-datum.
*
*      CASE lv_flight_ref MOD 5.
*
*        WHEN 0.
*          ls_booking-carrier_id    = 'LH'.
*          ls_booking-currency_code = 'EUR'.
*
*        WHEN 1.
*          ls_booking-carrier_id    = 'IB'.
*          ls_booking-currency_code = 'EUR'.
*
*        WHEN 2.
*          ls_booking-carrier_id    = 'BA'.
*          ls_booking-currency_code = 'GBP'.
*
*        WHEN 3.
*          ls_booking-carrier_id    = 'AF'.
*          ls_booking-currency_code = 'EUR'.
*
*        WHEN 4.
*          ls_booking-carrier_id    = 'TP'.
*          ls_booking-currency_code = 'EUR'.
*
*      ENDCASE.
*
*      CASE lv_booking_index MOD 3.
*
*        WHEN 0.
*          ls_booking-booking_status = 'N'.
*
*        WHEN 1.
*          ls_booking-booking_status = 'B'.
*
*        WHEN 2.
*          ls_booking-booking_status = 'C'.
*
*      ENDCASE.
*
*      ls_booking-flight_price       = 100 + lv_booking_index * 5.
*      ls_booking-booking_supplement = 20.
*      ls_booking-total_price        =
*        ls_booking-flight_price +
*        ls_booking-booking_supplement.
*
*      ls_booking-created_by       = sy-uname.
*      ls_booking-created_at       = lv_now.
*      ls_booking-last_changed_by  = sy-uname.
*      ls_booking-last_changed_at  = lv_now.
*      ls_booking-local_last_changed_at = lv_now.
*
*      APPEND ls_booking TO lt_booking.
*
*    ENDDO.
*
*    INSERT zdmo_booking FROM TABLE @lt_booking.
*
*  ENDMETHOD.
*  METHOD fill_travels.
*
*    DATA lt_travel TYPE STANDARD TABLE OF zdmo_travel.
*    DATA lv_now    TYPE utclong.
*
*    lv_now = utclong_current( ).
*
*    lt_travel = VALUE #(
*
*      ( client                 = sy-mandt
*        travel_id              = '00000001'
*        agency_id              = 'A00001'
*        customer_id            = 'A00001'
*        begin_date             = sy-datum
*        end_date               = sy-datum + 7
*        booking_fee            = '50.00'
*        total_price            = '1200.00'
*        currency_code          = 'EUR'
*        description            = 'Viaje a Madrid'
*        overall_status         = 'O'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*
*      ( client                 = sy-mandt
*        travel_id              = '00000002'
*        agency_id              = 'A00002'
*        customer_id            = 'A00002'
*        begin_date             = sy-datum + 10
*        end_date               = sy-datum + 15
*        booking_fee            = '25.00'
*        total_price            = '850.00'
*        currency_code          = 'EUR'
*        description            = 'Viaje a Barcelona'
*        overall_status         = 'A'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*
*      ( client                 = sy-mandt
*        travel_id              = '00000003'
*        agency_id              = 'A00003'
*        customer_id            = 'A00001'
*        begin_date             = sy-datum + 20
*        end_date               = sy-datum + 30
*        booking_fee            = '75.00'
*        total_price            = '2400.00'
*        currency_code          = 'USD'
*        description            = 'Viaje a Nueva York'
*        overall_status         = 'O'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*
*       ( client                 = sy-mandt
*        travel_id              = '00000004'
*        agency_id              = 'A00003'
*        customer_id            = 'A00004'
*        begin_date             = sy-datum + 25
*        end_date               = sy-datum + 35
*        booking_fee            = '75.00'
*        total_price            = '2400.00'
*        currency_code          = 'USD'
*        description            = 'Viaje a Nueva York'
*        overall_status         = 'O'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*      ( client                 = sy-mandt
*        travel_id              = '00000005'
*        agency_id              = 'A00002'
*        customer_id            = 'A00001'
*        begin_date             = sy-datum + 40
*        end_date               = sy-datum + 40
*        booking_fee            = '75.00'
*        total_price            = '2400.00'
*        currency_code          = 'USD'
*        description            = 'Viaje a Nueva York'
*        overall_status         = 'O'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*
*              ( client                 = sy-mandt
*        travel_id              = '00000006'
*        agency_id              = 'A00002'
*        customer_id            = 'A00003'
*        begin_date             = sy-datum + 50
*        end_date               = sy-datum + 50
*        booking_fee            = '75.00'
*        total_price            = '2400.00'
*        currency_code          = 'USD'
*        description            = 'Viaje a Nueva York'
*        overall_status         = 'O'
*        created_by             = sy-uname
*        created_at             = lv_now
*        last_changed_by        = sy-uname
*        last_changed_at        = lv_now
*        local_last_changed_at  = lv_now )
*
*
*    ).
*
*    INSERT zdmo_travel FROM TABLE @lt_travel.
*
*  ENDMETHOD.
*ENDCLASS.
