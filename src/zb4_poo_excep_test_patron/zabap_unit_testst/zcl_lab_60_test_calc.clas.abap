CLASS zcl_lab_60_test_calc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT  "medium , long
  RISK LEVEL HARMLESS.  "harmless( no aplica modificaciones a BD) y dangerous o critical (modifica BD)
  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator
    METHODS sum_up_test FOR TESTING.
    METHODS sum_up_test01 FOR TESTING.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS: setup,   "metodo al iniciar el test
      teardown. "metodo al finalizar el test
    CLASS-METHODS: CLASS_setup,   "metodo al iniciar el test
      CLASS_teardown. "metodo al finalizar el test
    DATA mo_calc TYPE REF TO zcl_lab_59_calculator.
ENDCLASS.



CLASS zcl_lab_60_test_calc IMPLEMENTATION.


  METHOD setup.
    mo_calc = NEW zcl_lab_59_calculator( ).
  ENDMETHOD.

  METHOD sum_up_test.

    DATA(lv_result) = mo_calc->suma(
                        iv_num1 = 5
                        iv_num2 = 7
                      ).

    ""Resultado esperado 12
    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 12
      msg = 'Error en la suma de 5 + 7'
    ).



  ENDMETHOD.
  METHOD sum_up_test01.
    DATA(lv_result) = mo_calc->suma(
                        iv_num1 = 8
                        iv_num2 = 7
                      ).

    ""Resultado esperado 15
    cl_abap_unit_assert=>assert_equals(
      act = lv_result
      exp = 12
      msg = 'Error en la suma de 8 + 7'
    ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_calc.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.



ENDCLASS.
