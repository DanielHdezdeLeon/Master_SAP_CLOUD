CLASS zcl_lab_53_check_user DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA user_exist type abap_bool.
    METHODS check_user
      IMPORTING
                iv_user          TYPE syuname
      RETURNING
                VALUE(rv_exists) TYPE abap_bool
      RAISING   zcx_lab_52_operations.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_53_check_user IMPLEMENTATION.
  METHOD check_user.

    IF sy-uname = iv_user.
      user_exist = rv_exists = abap_true.
      RAISE EXCEPTION TYPE zcx_lab_52_operations
        EXPORTING
          textid = zcx_lab_52_operations=>no_access
*         previous =
          msgv1  = |{ sy-uname }|
*         msgv2  = 'Resource not available for the user'
*         msgv3  =
*         msgv4  =
        .
    ELSE.
      rv_exists = abap_false.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
