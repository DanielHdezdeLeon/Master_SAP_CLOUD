CLASS zcl_lab_01c_execution DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    CLASS-METHODS insert_test_data.
    CLASS-METHODS check_connection RETURNING VALUE(rv_status) TYPE string
                                   RAISING
                                             cx_web_message_error..

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01c_execution IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.



    DATA(go_model) = NEW zcl_lab_73_model( iv_carrid = 'Z03' ).

    DATA(go_view) = NEW zcl_lab_74_view( ).

    DATA(go_controller) = NEW zcl_lab_75_controller( ).
    go_controller->set_model( go_model ).
    go_controller->set_view( go_view ).
    go_controller->get_view( )->display(
      EXPORTING
        io_model = go_model
        io_out   = out
    ).




*
*    DATA(go_users) = NEW zcl_lab_72_users( ).
*    DATA(go_admin) = NEW zcl_lab_71_administrator( ).
*    DATA(go_blog) =  NEW zcl_lab_69_blog( ).
*
*
*    SET HANDLER go_users->on_modificate_state FOR go_blog.
*    SET HANDLER go_admin->on_modificate_state FOR go_blog.
*
*    go_blog->set_current_state( i_current_state = 'NEW Publish' ).
*
*    out->write( go_admin->state_type ).
*    out->write( go_admin->state_type ).
*
*    go_blog->set_current_state( i_current_state = 'Modified Publish' ).
*
*    out->write( go_admin->state_type ).
*    out->write( go_admin->state_type ).

*
*    DATA(go_travela) =  NEW zcl_lab_67_package_a(  ).
*    DATA(go_travelb) =  NEW zcl_lab_68_package_b(  ).
*
*    out->write( go_travela->get_itinerary( ) ).
*
*    out->write( cl_abap_char_utilities=>newline ).
*
*    out->write( go_travelb->get_itinerary( ) ).
*
**    DATA go_file TYPE REF TO zif_lab_06_file_factory.
*    DATA(go_file_factory) = NEW zcl_lab_65_factory( ).
*
*
*    go_file =  go_file_factory->create_file(
*       EXPORTING
*         iv_type = go_file_factory->gc_supply
*     ).
*
*    out->write( go_file->get_file_type( ) ).
*
*    go_file =  go_file_factory->create_file(
*     EXPORTING
*       iv_type = go_file_factory->gc_work
*   ).
*
*    out->write( go_file->get_file_type( ) ).

*    DATA go_sinleton1 TYPE REF TO zcl_lab_62_context_singleton.
*    DATA go_sinleton2 TYPE REF TO zcl_lab_62_context_singleton.
*
*    go_sinleton1 = zcl_lab_62_context_singleton=>get_instance( ).
*    out->write( go_sinleton1->get_mv_time( ) ).
*    WAIT UP TO 2 SECONDS.
*    go_sinleton2 = zcl_lab_62_context_singleton=>get_instance( ).
*    out->write( go_sinleton2->get_mv_time( ) ).

*    out->write( zcl_lab_01c_execution=>check_connection( ) ).


*    DATA(go_travel) = NEW zcl_lab_61_travel( ).
*
*
*    out->write( go_travel->get_travel(
*      EXPORTING
*        iv_travel_id = 'Z01'
*
*    ) ).




*    zcl_lab_01c_execution=>insert_test_data( ).




*    DATA(go_anlayzer) = NEW zcl_lab_58_date_analyzer( ).
*
*
*    TRY.
*        TRY.
*            out->write( go_anlayzer->analyze_date(
*              EXPORTING
*                iv_date    = '20240505'
*            ) ).
*          CATCH zcx_lab_56_no_date INTO DATA(lx_nodate).
*          DATA(lv_text) =  lx_nodate->get_text( ).
*            go_anlayzer->analyze_format(
*              EXPORTING
*                iv_format  = 'YYYYMMDD'
*                io_previus = lx_nodate ).
**                CATCH zcx_lab_57_format_unknown.
*        ENDTRY.
*      CATCH zcx_lab_57_format_unknown INTO DATA(lx_format_unknown).
*        out->write( lx_format_unknown->get_text( ) ).
*    ENDTRY.
*    DATA(go_bank_accoun) = NEW zcl_lab_54_bank( ).
*    DATA gt_quantity TYPE STANDARD TABLE OF i.
*
*    gt_quantity = VALUE #(
*      ( 500 )
*      ( -1500 )
*      ( 2500 )
*      ( 10000 )
*    ).
*
*    LOOP AT gt_quantity INTO DATA(ls_quantity).
*      DATA(go_bank_accoun) = NEW zcl_lab_54_bank( ).
*      TRY.
*          go_bank_accoun->transfer_money(
*               EXPORTING
*                 iv_iban   = 'ES95 4329 8765 4321'
*                 iv_amount = ls_quantity
*               IMPORTING
*               cv_log = DATA(lv_text) ).
*        CATCH               zcx_lab_56_no_date INTO DATA(lx_nodate).
*
*          out->write( lx_nodate->get_text( ) ).
*        CATCH BEFORE UNWIND zcx_lab_58_resumablee INTO DATA(lx_resumable).
*          lv_text = |{ lv_text }{ lx_resumable->get_text( ) }{ cl_abap_char_utilities=>newline }|.
*          RESUME.
*      ENDTRY.
*
*          out->write( lv_text ).
*          FREE go_bank_accoun.
*        ENDLOOP.
*
*

*    CATCH               zcx_lab_56_no_date.
*    CATCH BEFORE UNWIND zcx_lab_58_resumablee.
*    CATCH               zcx_lab_56_no_date.
*    CATCH BEFORE UNWIND zcx_lab_58_resumablee.



*    DATA lv_num1 TYPE i VALUE 10.
*    DATA lv_num2 TYPE i VALUE 0.
*    DATA(go_check) = NEW zcl_lab_53_check_user( ).
*    TRY.
**        DATA(lv_result) = lv_num1 / lv_num2.
*        TRY.
*            DATA(lv_exist) = go_check->check_user( sy-uname ).
**
**      CATCH cx_sy_zerodivide INTO DATA(lx_arithmetic).
**        out->write( lx_arithmetic->get_text( ) ).
**        lv_num2 = 2.
**        RETRY.
*          CLEANUP.
*            out->write( 'Cleanup code executed' ).
*        ENDTRY.
*
*      CATCH zcx_lab_52_operations INTO DATA(lx_check_user).
**        out->write( lx_check_user->get_text( ) ).
*    ENDTRY.
*    IF go_check->user_exist = abap_true.
*      out->write( |User exists, resultado| ).
*    ELSE.
*      out->write( 'User does not exist'  ).
*    ENDIF.
  ENDMETHOD.





  METHOD check_connection.




    TRY.
        DATA(lo_dest2) =
          cl_http_destination_provider=>create_by_comm_arrangement(
            comm_scenario = 'Z_S4_SCENARIO'
            service_id    = 'Z_S4_BP_REST'
          ).
        rv_status = |correcto|.
      CATCH cx_http_dest_provider_error INTO DATA(lx_provider).
        rv_status = |Error provider: { lx_provider->get_text( ) }|.
        EXIT.
    ENDTRY.
    EXIT.


    TRY.

        DATA(lo_dest) =
          cl_http_destination_provider=>create_by_destination(
            i_destination = 'UNprmiseS4basic'
          ).

        DATA(lo_client) =
          cl_web_http_client_manager=>create_by_http_destination(
            lo_dest
          ).

        DATA(lo_request) = lo_client->get_http_request( ).

        lo_request->set_uri_path(
          '/sap/opu/odata/sap/API_BUSINESS_PARTNER/$metadata'
        ).

        DATA(lo_response) =
          lo_client->execute(
            if_web_http_client=>get
          ).

        DATA(lv_status) = lo_response->get_status( )-code.
        DATA(lv_body)   = lo_response->get_text( ).

        rv_status = |Status: { lv_status } { cl_abap_char_utilities=>newline }{ lv_body }|.

      CATCH cx_http_dest_provider_error INTO DATA(lx_dest).
        rv_status = |Error destino HTTP: { lx_dest->get_text( ) }|.

      CATCH cx_web_http_client_error INTO DATA(lx_client).
        rv_status = |Error cliente HTTP: { lx_client->get_text( ) }|.

    ENDTRY.

  ENDMETHOD.


  METHOD insert_test_data.

    INSERT zflight_flight FROM TABLE @( VALUE #(
      ( client = sy-mandt carrid = 'Z01' connid = '0001' fldate = '20260701' price = '120.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z02' connid = '0002' fldate = '20260702' price = '130.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z03' connid = '0003' fldate = '20260703' price = '140.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z04' connid = '0004' fldate = '20260704' price = '150.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z05' connid = '0005' fldate = '20260705' price = '160.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z06' connid = '0006' fldate = '20260706' price = '170.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z07' connid = '0007' fldate = '20260707' price = '180.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z08' connid = '0008' fldate = '20260708' price = '190.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z09' connid = '0009' fldate = '20260709' price = '200.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z10' connid = '0010' fldate = '20260710' price = '210.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z11' connid = '0011' fldate = '20260711' price = '220.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z12' connid = '0012' fldate = '20260712' price = '230.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z13' connid = '0013' fldate = '20260713' price = '240.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z14' connid = '0014' fldate = '20260714' price = '250.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z15' connid = '0015' fldate = '20260715' price = '260.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z16' connid = '0016' fldate = '20260716' price = '270.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z17' connid = '0017' fldate = '20260717' price = '280.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z18' connid = '0018' fldate = '20260718' price = '290.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z19' connid = '0019' fldate = '20260719' price = '300.00' currency = 'EUR' )
      ( client = sy-mandt carrid = 'Z20' connid = '0020' fldate = '20260720' price = '310.00' currency = 'EUR' )
    ) ).

    IF sy-subrc = 0.
      COMMIT WORK.
    ENDIF.

  ENDMETHOD.




ENDCLASS.
