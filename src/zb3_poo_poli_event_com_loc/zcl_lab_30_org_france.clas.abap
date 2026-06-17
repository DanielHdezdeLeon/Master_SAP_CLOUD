CLASS zcl_lab_30_org_france DEFINITION INHERITING FROM zcl_lab_29_organization
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_location REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_30_org_france IMPLEMENTATION.
  METHOD get_location.
    " Return the location of the organization in France
    rv_location = 'France'.
  ENDMETHOD.

ENDCLASS.
