CLASS zcl_lab_47_customer_service DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA log TYPE string.
    CLASS-METHODS on_new_call FOR EVENT new_call OF zcl_lab_46_mobile_operator IMPORTING ev_phone_number.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_LAB_47_CUSTOMER_SERVICE IMPLEMENTATION.


  METHOD on_new_call.

    log = |El teléfono { ev_phone_number } no esta asignado a ningun usuario|.


  ENDMETHOD.
ENDCLASS.
