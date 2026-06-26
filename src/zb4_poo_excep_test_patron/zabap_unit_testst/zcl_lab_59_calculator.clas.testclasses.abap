*"* use this source file for your ABAP unit test classes
CLASS ltcl_calculator DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      suma_test FOR TESTING RAISING cx_static_check.
    METHODS: setup,   "metodo al iniciar el test
      teardown. "metodo al finalizar el test
    CLASS-METHODS: CLASS_setup,   "metodo al iniciar el test
      CLASS_teardown. "metodo al finalizar el test
    DATA mo_calc TYPE REF TO zcl_lab_59_calculator.
ENDCLASS.


CLASS ltcl_calculator IMPLEMENTATION.

  METHOD setup.
    mo_calc = NEW zcl_lab_59_calculator( ).
  ENDMETHOD.
  METHOD suma_test.
    DATA(lv_result) = mo_calc->suma(
                      iv_num1 = 5
                      iv_num2 = 7
                    ).
    IF  cl_abap_unit_assert=>assert_equals(
        act = lv_result
        exp = 12
*      msg = 'Error en la suma de 5 + 7'
      ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Error en la suma' ).
    ENDIF.
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_calc.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.


ENDCLASS.
