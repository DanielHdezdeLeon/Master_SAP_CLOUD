CLASS zcl_lab_01_execution DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_execution IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.


*  7. Asignar instancias a la clase genérica Object:
    DATA   go_object TYPE REF TO object.
    DATA   lv_headquarter TYPE string.

    go_object = NEW zcl_lab_41_organization(  ).

    DATA(lv_set) = 'SET_HEADQUARTERS'.
    DATA(lv_get) = 'GET_HEADQUARTERS'.

    CALL METHOD go_object->(lv_set) exporting iv_headquarters = 'Headquarters of the organization'.
    CALL METHOD go_object->(lv_get) RECEIVING rv_result = lv_headquarter.

    out->write( lv_headquarter ).

**6. Crear instancias de tipos distintos
*
*    DATA go_budget  TYPE REF TO zcl_lab_39_budget.
*    DATA(go_actualbudget) = NEW zcl_lab_40_actual_budget( ).
*    go_budget =  go_actualbudget.
*    go_budget->set_budget( iv_budget = 'Presupuesto de 1000 $' ).
*    out->write( go_budget->get_budget( ) ).


*5. Múltiples referencias apuntando al mismo objeto
*  DATA go_object1 TYPE REF TO zcl_lab_38_prod_price.
*  DATA go_object2 TYPE REF TO zcl_lab_38_prod_price.
*
*  go_object1 = NEW zcl_lab_38_prod_price(  ).
*
*  go_object1->price = 100.
*
*  out->write( go_object1->price ).
*  go_object2 = go_object1.
*
*  go_object2->price = 200.
*  out->write( go_object1->price ).
*  out->write( go_object2->price ).
*4. Composición
*
*    DATA(lo_screen) = NEW zcl_lab_37_screen( ).
*    DATA(lo_phone) = NEW zcl_lab_36_phone( ir_screen = lo_screen ).
*
*
*    lo_screen->set_screen_type( i_screen_type = 'Touch' ).
*    out->write( lo_screen->get_screen_type( ) ).
*
*    lo_phone->get_go_screen( )->set_screen_type( i_screen_type = 'Touch2' ).
*    out->write( lo_screen->get_screen_type( ) ).
*    out->write( lo_phone->get_go_screen( )->get_screen_type( ) ).






*  3. Asociación

*
*    DATA(go_college) = NEW zcl_lab_35_college( ).
*    DATA(go_student) = NEW zcl_lab_34_student( ).
*    go_student->set_name( iv_name = 'Matias' ).
*    go_college->enroll_student( io_student = go_student ).
*    out->write( go_college->get_go_student( )->get_name( ) ).


*2. Polimorfismo con interfaces
*
*    DATA lt_objects TYPE STANDARD TABLE OF REF TO zif_lab_04_employee.
**
*    APPEND INITIAL LINE TO lt_objects ASSIGNING FIELD-SYMBOL(<ls_object>).
*    <ls_object> = NEW zcl_lab_32_internal_empl( ).
*    APPEND INITIAL LINE TO lt_objects ASSIGNING <ls_object>.
*    <ls_object> = NEW zcl_lab_33_expatriate_empl( ).
*
*    LOOP AT lt_objects ASSIGNING FIELD-SYMBOL(<ls_object_aux>).
*
*      out->write( <ls_object_aux>->get_employees_count(  ) ).
*
*    ENDLOOP.




*1. Polimorfismo con clases
*    DATA lt_objects TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization.
*
*    APPEND INITIAL LINE TO lt_objects ASSIGNING FIELD-SYMBOL(<ls_object>).
*    <ls_object> = NEW zcl_lab_30_org_france( ).
*    APPEND INITIAL LINE TO lt_objects ASSIGNING <ls_object>.
*    <ls_object> = NEW zcl_lab_30_org_germany( ).
*
*    LOOP AT lt_objects ASSIGNING FIELD-SYMBOL(<ls_object_aux>).
*
*      out->write( <ls_object_aux>->get_location(  ) ).

*    ENDLOOP.




  ENDMETHOD.
ENDCLASS.
