CLASS zcl_lab_09_account DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_iban RETURNING value(iban) TYPE string,
             set_iban IMPORTING iban TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA iban TYPE string.



 ENDCLASS.



CLASS zcl_lab_09_account IMPLEMENTATION.
  METHOD get_iban.
    iban = me->iban.
  ENDMETHOD.

  METHOD set_iban.
    me->iban = iban.
  ENDMETHOD.

ENDCLASS.
