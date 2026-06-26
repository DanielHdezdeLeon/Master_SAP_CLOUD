CLASS zcl_lab_59_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  ""Metodo al que le pasas dos numeros y devuelve la suma de ambos
  METHODS suma IMPORTING iv_num1 TYPE i
                         iv_num2 TYPE i
                        RETURNING VALUE(rv_result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_59_calculator IMPLEMENTATION.
  METHOD suma.
    rv_result = iv_num1 + iv_num2.
  ENDMETHOD.

ENDCLASS.
