CLASS zcl_lab_54_bank DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA balance TYPE i VALUE 1000.
    DATA balance_save TYPE i VALUE 5000.
    METHODS: transfer_money IMPORTING iv_IBAN   TYPE string
                                      iv_amount TYPE i
                            EXPORTING cv_log    TYPE string
                            RAISING   zcx_lab_56_no_date
                                      RESUMABLE(zcx_lab_58_resumablee).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank IMPLEMENTATION.
  METHOD transfer_money.
    cv_log = |Check transfer con IBAN { iv_IBAN } and quantity { iv_amount }.{ cl_abap_char_utilities=>newline }|.

    IF iv_amount < 0.
      cv_log = |{ cv_log }Error: Amount cannot be negative.{ cl_abap_char_utilities=>newline }|.
      RAISE EXCEPTION TYPE zcx_lab_56_no_date
        EXPORTING
          textid = zcx_lab_56_no_date=>negative_amount.


    ELSEIF iv_amount > balance.
      IF iv_amount > balance_save.
        cv_log = |{ cv_log }Error: insuficcient money.{ cl_abap_char_utilities=>newline }|.
        RAISE EXCEPTION TYPE zcx_lab_56_no_date
          EXPORTING
            textid = zcx_lab_56_no_date=>insuficcient_balance.
      ELSE.
        cv_log = |{ cv_log }Error: insuficcient money in balance account¿Do yo get money from save_ammount?.{ cl_abap_char_utilities=>newline }|.
        RAISE RESUMABLE EXCEPTION TYPE zcx_lab_58_resumablee
          EXPORTING
            textid = zcx_lab_58_resumablee=>check_save_account.
      ENDIF.

    ENDIF.
    cv_log = |{ cv_log }Your withdrawal has been completed successfully.{ cl_abap_char_utilities=>newline }|.
  ENDMETHOD.

ENDCLASS.
