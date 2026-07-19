CLASS zcl_custom_detail_dhl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_custom_detail_dhl IMPLEMENTATION.
  METHOD if_rap_query_provider~select.

    DATA lt_result TYPE TABLE OF zcds_custom_detail_dhl.
    TRY.
        IF io_request->is_data_requested( ) = abap_true.
          DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
          DATA(lv_skip) = io_request->get_paging( )->get_offset( ).

          SELECT FROM zdmo_customer FIELDS * ORDER BY customer_id
                     INTO CORRESPONDING FIELDS OF TABLE @lt_result
                     OFFSET @lv_skip
                     UP TO @lv_top ROWS.

          IF sy-subrc EQ 0.
            io_response->set_total_number_of_records( lines( lt_result ) ).
            io_response->set_data( lt_result ).
          ENDIF.

        ENDIF.
      CATCH cx_rap_query_response_set_twic INTO DATA(lx_rap_query_response).
        DATA(lv_message) = lx_rap_query_response->get_text( ).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
