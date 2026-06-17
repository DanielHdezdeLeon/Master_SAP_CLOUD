CLASS zcl_lab_17_super_discount DEFINITION INHERITING FROM zcl_lab_15_flight_price
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount IMPLEMENTATION.

 METHOD add_price.
    DATA lv_price like iv_price.
    lv_price = iv_price.
  "Aplicamos un descuento del 10% al precio original
    lv_price-price = lv_price-price * 80 / 100.

   super->add_price( iv_price = lv_price ).

  ENDMETHOD.
ENDCLASS.
