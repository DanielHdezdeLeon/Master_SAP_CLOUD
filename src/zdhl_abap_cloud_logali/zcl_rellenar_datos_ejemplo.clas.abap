CLASS zcl_rellenar_datos_ejemplo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rellenar_datos_ejemplo IMPLEMENTATION.



METHOD if_oo_adt_classrun~main.

  out->write( 'Insertando datos demo...' ).

  " Carrier
  DATA ls_carrier TYPE zflight_carrier.
  ls_carrier = VALUE #(
    carrid   = 'Z1'
    carrname = 'Demo Airline'
  ).

  INSERT zflight_carrier FROM @ls_carrier.

  " Connection
  DATA ls_conn TYPE zflight_conn.
  ls_conn = VALUE #(
    carrid   = 'Z1'
    connid   = '0001'
    cityfrom = 'MAD'
    cityto   = 'BCN'
  ).

  INSERT zflight_conn FROM @ls_conn.

  " Flight
  DATA ls_flight TYPE zflight_flight.
  ls_flight = VALUE #(
    carrid   = 'Z1'
    connid   = '0001'
    fldate   = cl_abap_context_info=>get_system_date( )
    price    = '120.00'
    currency = 'EUR'
  ).

  INSERT zflight_flight FROM @ls_flight.

  out->write( 'Datos creados correctamente ✅' ).


 DATA lt_clientes TYPE STANDARD TABLE OF zcustomer WITH EMPTY KEY.

    lt_clientes = VALUE #(
      (
        cliente_id = 'C000000001'
        nombre     = 'Daniel'
        apellido   = 'Hernandez'
        direccion  = 'Calle Mayor 1, Madrid'
      )
      (
        cliente_id = 'C000000002'
        nombre     = 'Laura'
        apellido   = 'Garcia'
        direccion  = 'Avenida Europa 15, Madrid'
      )
      (
        cliente_id = 'C000000003'
        nombre     = 'Carlos'
        apellido   = 'Lopez'
        direccion  = 'Calle Alcala 22, Madrid'
      )
      (
        cliente_id = 'C000000004'
        nombre     = 'Marta'
        apellido   = 'Sanchez'
        direccion  = 'Paseo Castellana 100, Madrid'
      )
      (
        cliente_id = 'C000000005'
        nombre     = 'Javier'
        apellido   = 'Martinez'
        direccion  = 'Calle Real 8, Torrejon de Ardoz'
      )
      (
        cliente_id = 'C000000006'
        nombre     = 'Ana'
        apellido   = 'Fernandez'
        direccion  = 'Calle Sol 14, Alcala de Henares'
      )
      (
        cliente_id = 'C000000007'
        nombre     = 'Pablo'
        apellido   = 'Ruiz'
        direccion  = 'Avenida Constitucion 25, Coslada'
      )
      (
        cliente_id = 'C000000008'
        nombre     = 'Sara'
        apellido   = 'Moreno'
        direccion  = 'Calle Luna 3, San Fernando de Henares'
      )
      (
        cliente_id = 'C000000009'
        nombre     = 'David'
        apellido   = 'Gomez'
        direccion  = 'Calle Norte 19, Madrid'
      )
      (
        cliente_id = 'C000000010'
        nombre     = 'Elena'
        apellido   = 'Diaz'
        direccion  = 'Avenida Central 45, Getafe'
      )
    ).

    MODIFY zcustomer FROM TABLE @lt_clientes.

    COMMIT WORK.

    out->write( |Registros insertados/actualizados: { sy-dbcnt }| ).

    DATA: ls_row TYPE ztaeropuertos.

    DO 10 TIMES.
      CLEAR ls_row.
      ls_row-client = sy-mandt.
      " id format AIR001, AIR002, ...
      ls_row-id_aeropuerto = |AIR{ sy-tabix WIDTH = 3 PAD = '0' }|.
      ls_row-nombre_aeropuerto = |Aeropuerto Ejemplo { sy-tabix }|.
      " Alterna países sólo como ejemplo
      ls_row-pais = COND #( WHEN sy-tabix MOD 2 = 0 THEN 'Spain' ELSE 'Mexico' ).
      ls_row-provincia = |Provincia { sy-tabix }|.
      ls_row-direccion = |Calle Falsa { sy-tabix }, 123|.
      " Intentar insertar
      INSERT ztaeropuertos FROM @ls_row.
      IF sy-subrc = 0.
        CONTINUE.
      ELSE.
        " Si falla (p.ej. por duplicado), hacer update o mensaje
        out->write( |Registro { ls_row-id_aeropuerto } no insertado (subrc={ sy-subrc }).| ).
      ENDIF.
    ENDDO.

    COMMIT WORK.


ENDMETHOD.


ENDCLASS.
