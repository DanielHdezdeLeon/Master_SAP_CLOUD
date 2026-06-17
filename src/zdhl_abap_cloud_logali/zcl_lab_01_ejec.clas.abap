CLASS zcl_lab_01_ejec DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .



  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

DATA(go_logistic) = NEW zcl_lab_28_logistics( ).

out->write( go_logistic->input_products( ) ).
out->write( go_logistic->production_line( ) ).
out->write( go_logistic->merchandise_output( ) ).
out->write( go_logistic->logistica ).
zcl_lab_28_logistics=>logistica = 'Production'.
out->write( go_logistic->logistica ).

*
*    DATA(go_flights) = NEW zcl_lab_26_flights( ).
*    out->write( go_flights->zif_lab_02_customer~get_customer( iv_customer = 'C000000001' ) ).
*    out->write( go_flights->zif_lab_03_airports~get_airports( iv_airport_id = 'AIR300' ) ).
*
*
*    out->write( go_flights->get_customer( iv_customer = 'C000000001' ) ).
*    out->write( go_flights->get_airports( iv_airport_id = 'AIR300' ) ).

* . Definir interfaz

*    DATA(go_flights) = NEW zcl_lab_26_flights( ).
*    go_flights->zif_lab_01_flight~set_com_id( iv_com_id = 'Z12' ).
*    out->write( go_flights->zif_lab_01_flight~get_com_id( ) ).




**  Herencia, Casting y Clase Amiga
*
*DATA(go_pathner) = new zcl_lab_25_collaborator(  ).
*
*
*    out->write( go_pathner->get_capital( ) ).
*
*
*



*DATA(go_pathner) = new zcl_lab_24_partner(  ).
*
*
*    out->write( go_pathner->get_company_capital( ) ).





*
*    DATA(go_classroom) = NEW zcl_lab_22_student( ).
*    DATA(go_student) = go_classroom->assign_student( ).





*    DATA(go_animal) = NEW zcl_lab_18_animal( ).
*    DATA(go_lion) = NEW zcl_lab_19_lion( ).
*    DATA(go_lion2) = NEW zcl_lab_19_lion( ).
*
*    out->write( go_animal->walk( ) ).
*
*    go_animal =  go_lion.
*    go_lion2 ?= go_animal.
*
*
*    out->write( go_lion->walk( ) ).
*    out->write( go_lion2->walk( ) ).
*    out->write( go_animal->walk( ) ).
*


**Como la tabla de vuelos solo tiene un registro usamos con loop
*    DATA(go_obj01) = NEW zcl_lab_15_flight_price( ).
*    DATA(go_obj02) = NEW zcl_lab_16_price_discount( ).
*    DATA(go_obj03) = NEW zcl_lab_17_super_discount( ).
*    SELECT * FROM zflight_flight INTO TABLE @DATA(lt_flight) UP TO 1 ROWS.
*
*    LOOP AT lt_flight INTO DATA(ls_flight).
*      go_obj01->add_price( iv_price = ls_flight ).
*      go_obj02->add_price( iv_price = ls_flight ).
*      go_obj03->add_price( iv_price = ls_flight ).
*
*      out->write( go_obj01->mt_flights ).
*      out->write( go_obj02->mt_flights ).
*      out->write( go_obj03->mt_flights ).
*
*    ENDLOOP.



*    DATA(go_obj01) = NEW zcl_lab_14_grid(
*      iv_view_type = 'GRID'
*      iv_box       = 'Cajon'
*    ).
*
*
*    out->write( go_obj01->get( ) ).
*    out->write( go_obj01->get_box( ) ).




*    DATA(go_obj01) = NEW zcl_lab_12_linux( ).
*    out->write( go_obj01->get_architecture( ) ).








*  ****Laboratorio: Instancias

*
*    DATA(go_obj01) = new zcl_lab_10_constructor( iv_log =  'objeto 1').
*    out->write( go_obj01->log ).
*    DATA(go_obj02) = new zcl_lab_10_constructor( iv_log =  'objeto 2 ').
*    out->write( go_obj02->log ).
*    DATA(go_obj03) = new zcl_lab_10_constructor( iv_log =  'objeto 3 ').
*    out->write( go_obj03->log ).
*







* Lab10
*    DATA go_object TYPE REF TO zcl_lab_09_account.
*    go_object = NEW #( ).
*    go_object->set_iban( iban = '2154542162556' ).
*    out->write( go_object->get_iban( ) ).

*LAB09
* DATA go_object TYPE REF TO zcl_lab_08_work_record.
*    go_object = NEW #( ).


*    zcl_lab_08_work_record=>open_new_record(
*      iv_date       = '20260213'
*      iv_first_name =  'PEPE'
*      iv_last_name  =  'Fernandez'
**      iv_surname    =
*    ).







**  LAb 08
*    DATA go_object TYPE REF TO zcl_lab_07_student.
*    go_object = NEW #( ).
*
**    go_object->birth_date =  '20151205'.
*
*    go_object->set_birth_date( iv_birth_date = '20101205'  ).
*    out->write( go_object->birth_date ).
*

***Lab 06-07
*    DATA lv_object TYPE zcl_lab_06_elements=>ty_elem_objects.
*    lv_object-class = 'ZCL_LAB_06_ELEMENTS'.
*    Lv_object-instance = 'GET_ELEMENTS'.
*    lv_object-reference = 'go_elements'.
*    DATA go_elements TYPE REF TO zcl_lab_06_elements.
*
*    go_elements = NEW #( ).
*
*    go_elements->set_object( lv_object ).
*
**    out->write( go_elements->ms_object ).
*
*    DATA(lv_text) = |{ go_elements->c_class }//{ go_elements->c_instance }//{ go_elements->c_name }//{ go_elements->c_reference }|.
*     out->write( lv_text ).
*

**  LAB 05
*
*    DATA(go_flight) = NEW zcl_lab_05_flight( ).
*    DATA(lv_check) = go_flight->check_company( 'LH1' ).
*    IF lv_check = abap_true.
*      out->write( 'The company is valid' ).
*    ELSE.
*      out->write( 'The company is not valid' ).
*    ENDIF.
*    lv_check = go_flight->check_company( 'Z1 ' ).
*    IF lv_check = abap_true.
*      out->write( 'The company is valid' ).
*    ELSE.
*      out->write( 'The company is not valid' ).
*    ENDIF.

** Lab 04
*    DATA(go_person) = NEW zcl_lab_04_person( ).
*         go_person->set_age( 25 ).
*    out->write( go_person->get_age( ) ).

****Lab 03
*    DATA(go_contract) = new zcl_lab_03_contract( ).
*    go_contract->set_creation_date( '20240601' ).
*    out->write( go_contract->get_creation_date( ) ).

**LAB 01-02

*    DATA(go_product) = new zcl_lab_02_product( ).
*    go_product->set_product( 'P001' ).
*    out->write( go_product->product ).

  ENDMETHOD.

ENDCLASS.
