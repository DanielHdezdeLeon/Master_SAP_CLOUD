CLASS zcl_lab_05_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    METHODS check_company IMPORTING iv_carrid        TYPE zcarrid
                          RETURNING VALUE(rv_exists) TYPE abap_bool.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight IMPLEMENTATION.
  METHOD check_company.
    TRY.
        SELECT SINGLE * FROM zflight_flight  WHERE carrid = @iv_carrid INTO @DATA(ls_data).

        IF sy-subrc <> 0.
          rv_exists = abap_false.
        ELSE.
          rv_exists = abap_true.
        ENDIF.
      CATCH cx_sy_open_sql_data_error INTO DATA(lx_sql_error).

    ENDTRY.


  ENDMETHOD.

ENDCLASS.
