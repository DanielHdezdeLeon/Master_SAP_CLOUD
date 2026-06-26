*"* use this source file for your ABAP unit test classes
CLASS ltcl_travel DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.


  PUBLIC SECTION.
    INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED .
  PRIVATE SECTION.
    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check.

    METHODS: setup,
      teardown.
    DATA mo_travel TYPE REF TO zcl_lab_61_travel.
ENDCLASS.


CLASS ltcl_travel IMPLEMENTATION.

  METHOD get_travel_test.

    DATA(rv_travel) = me->mo_travel->get_travel( iv_travel_id = 'Z01' ).
    IF cl_abap_unit_assert=>assert_equals(
         act                  = rv_travel
         exp                  = '140'
       ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Error al obtener el precio' ).

    ENDIF.
  ENDMETHOD.

  METHOD setup.
    mo_travel = NEW zcl_lab_61_travel( ).

    TEST-INJECTION select_data.
      iv_travel_id = 'Z03'.

*rv_travel =
    END-TEST-INJECTION.
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_travel.
  ENDMETHOD.

  METHOD if_abap_close_resource~close.

  ENDMETHOD.

  METHOD if_abap_writer~flush.

  ENDMETHOD.


ENDCLASS.
