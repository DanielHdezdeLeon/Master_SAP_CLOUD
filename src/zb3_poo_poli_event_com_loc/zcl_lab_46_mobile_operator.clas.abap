CLASS zcl_lab_46_mobile_operator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-EVENTS new_call EXPORTING VALUE(ev_phone_number)  TYPE string.
    CLASS-METHODS ASSIGN_CAll IMPORTING iv_phone TYPE string RETURNING VALUE(rv_user) TYPE string..


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_46_mobile_operator IMPLEMENTATION.
  METHOD assign_call.
    IF iv_phone = '1234567890'.
      rv_user = 'John Doe'.
    ELSEIF iv_phone = '0987654321'.
      rv_user = 'Jane Smith'.
    ELSE.
      RAISE EVENT new_call EXPORTING ev_phone_number = iv_phone.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
