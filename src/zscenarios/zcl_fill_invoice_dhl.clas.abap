CLASS zcl_fill_invoice_dhl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    METHODS: charge_data RETURNING VALUE(rv_status) TYPE string,
      delete_table IMPORTING iv_table_name TYPE string RETURNING VALUE(rv_status) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_FILL_INVOICE_DHL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_status) = delete_table( iv_table_name = 'ZCUS_ACCESS_DHL' ).
    out->write( |{ lv_status }| ).
    CLEAR lv_status.
    lv_status = charge_data( ).
    out->write( |{ lv_status }| ).
  ENDMETHOD.


  METHOD charge_data.

    DATA:
      lt_data TYPE STANDARD TABLE OF zcus_access_dhl,
      lv_user TYPE syuname.

    lv_user = cl_abap_context_info=>get_user_technical_name( ).

    lt_data = VALUE #(

      ( client = sy-mandt
        invoice_id = '0000000001'
        customer_name = 'CLIENTE 1'
        inv_amount = '100.00'
        currency = 'EUR'
        department = '01'
        created_by = lv_user
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000002'
        customer_name = 'CLIENTE 2'
        inv_amount = '200.00'
        currency = 'EUR'
        department = '01'
        created_by = lv_user
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000003'
        customer_name = 'CLIENTE 3'
        inv_amount = '300.00'
        currency = 'EUR'
        department = '02'
        created_by = lv_user
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000004'
        customer_name = 'CLIENTE 4'
        inv_amount = '400.00'
        currency = 'EUR'
        department = '02'
        created_by = lv_user
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000005'
        customer_name = 'CLIENTE 5'
        inv_amount = '500.00'
        currency = 'EUR'
        department = '03'
        created_by = lv_user
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000006'
        customer_name = 'CLIENTE 6'
        inv_amount = '600.00'
        currency = 'EUR'
        department = '03'
        created_by = 'TESTUSER'
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000007'
        customer_name = 'CLIENTE 7'
        inv_amount = '700.00'
        currency = 'EUR'
        department = '04'
        created_by = 'TESTUSER'
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000008'
        customer_name = 'CLIENTE 8'
        inv_amount = '800.00'
        currency = 'EUR'
        department = '04'
        created_by = 'TESTUSER'
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000009'
        customer_name = 'CLIENTE 9'
        inv_amount = '900.00'
        currency = 'EUR'
        department = '05'
        created_by = 'TESTUSER'
        create_date = cl_abap_context_info=>get_system_date( ) )

      ( client = sy-mandt
        invoice_id = '0000000010'
        customer_name = 'CLIENTE 10'
        inv_amount = '1000.00'
        currency = 'EUR'
        department = '05'
        created_by = 'TESTUSER'
        create_date = cl_abap_context_info=>get_system_date( ) )

    ).

    INSERT zcus_access_dhl FROM TABLE @lt_data.
    IF sy-subrc = 0.
      rv_status = 'Data inserted successfully.'.
    ELSE.
      rv_status = 'Error inserting data.'.
    ENDIF.

    COMMIT WORK.

  ENDMETHOD.


  METHOD delete_table.
    DELETE FROM (iv_table_name).
    IF sy-subrc = 0.
      rv_status = 'Data deleted successfully.'.
    ELSE.
      rv_status = 'Error deleting data.'.
    ENDIF.
  ENDMETHOD.
ENDCLASS.
