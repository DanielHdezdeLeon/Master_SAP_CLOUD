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

  DATA(go_friend) = new zcl_lab_51_wz_friend( ).
*  go_friend->
*  go_friend->get_helper( ).
**    RECEIVING
**      et_workzon
  out->write( go_friend->get_helper( ) ).



** 8. EVENTOS ALL INSTANCE
*
*    DATA(go_administrative01) = NEW zcl_lab_48_administrative_dep( '02001' ).
*    DATA(go_administrative02) = NEW zcl_lab_48_administrative_dep( '02002' ).
*    DATA(go_administrative03) = NEW zcl_lab_48_administrative_dep( '02003' ).
*    DATA(go_administrative04) = NEW zcl_lab_48_administrative_dep( '02004' ).
*
*    DATA(go_employee) = NEW zcl_lab_49_employee( ).
*
**    SET HANDLER go_employee->on_payroll_paid for  go_administrative01.
**    SET HANDLER go_employee->on_payroll_paid for  go_administrative02.
**    SET HANDLER go_employee->on_payroll_paid for  go_administrative03.
**    SET HANDLER go_employee->on_payroll_paid for  go_administrative04.
**    SET HANDLER go_employee->on_payroll_paid FOR ALL INSTANCES.
*
*    go_administrative01->notify_employee( ).
*    go_administrative02->notify_employee( ).
*    go_administrative03->notify_employee( ).
*    go_administrative04->notify_employee( ).
*
*    out->write( zcl_lab_49_employee=>log_evento  ).
*
*
*

**  Eventos estáticos
*    SET HANDLER zcl_lab_47_customer_service=>on_new_call.
*
*    out->write( zcl_lab_46_mobile_operator=>assign_call( iv_phone = '1234567890' ) ).
*    IF zcl_lab_47_customer_service=>log IS NOT INITIAL.
*      out->write( zcl_lab_47_customer_service=>log ).
*      CLEAR zcl_lab_47_customer_service=>log.
*    ENDIF.
*    out->write( zcl_lab_46_mobile_operator=>assign_call( iv_phone = '0987654321' ) ).
*    IF zcl_lab_47_customer_service=>log IS NOT INITIAL.
*      out->write( zcl_lab_47_customer_service=>log ).
*      CLEAR zcl_lab_47_customer_service=>log.
*    ENDIF.
*    out->write( zcl_lab_46_mobile_operator=>assign_call( iv_phone = '167890' ) ).
*    IF zcl_lab_47_customer_service=>log IS NOT INITIAL.
*      out->write( zcl_lab_47_customer_service=>log ).
*      CLEAR zcl_lab_47_customer_service=>log.
*    ENDIF.


*    DATA(lo_sistema) = NEW zcl_lab_44_operating_system( ).
*    DATA(lo_chrome) = NEW zcl_lab_45_chrome( ).
*
*    SET HANDLER lo_chrome->on_close_windows FOR lo_sistema .
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*      out->write( lo_sistema->mouse_movement( ) ).
*      out->write( lo_chrome->get_log( ) ).
*      IF sy-index = 3.
*        SET HANDLER lo_chrome->on_close_windows FOR lo_sistema ACTIVATION abap_false.
*        lo_chrome->set_log( i_log = 'Desactivate Handler' ).
*     ENDIF.
*      ENDDO.
*3. Establecer referencia manejadora – EVENT HANDLER


*    DATA(lo_screen) = NEW zcl_lab_42_screen( 'Mobile' ).
*    DATA(lo_navigation) = NEW zcl_lab_43_navigation( ).
*    lo_screen->lv_x = 96.
*    lo_screen->lv_y = 48.
*
*    SET HANDLER lo_navigation->on_touch_screen FOR lo_screen.
**
*    DO.
*      lo_screen->lv_x += 1.
*      lo_screen->lv_y += 10.
*      DATA(lv_result) = lo_screen->element_selected(
*        EXPORTING
*          iv_pos_horizontal = lo_screen->lv_x
*          iv_pos_vertical   = lo_screen->lv_y
*
*      ).
*
*      IF lo_navigation->log IS INITIAL.
*        out->write( |Posicion X = { lo_screen->lv_x }, posicion y = { lo_screen->lv_y }| ).
*      ELSE.
*        out->write( lo_navigation->log ).
*        EXIT.
*      ENDIF.
*
*    ENDDO.
*


*  7. Asignar instancias a la clase genérica Object:
*    DATA   go_object TYPE REF TO object.
*    DATA   lv_headquarter TYPE string.
*
*    go_object = NEW zcl_lab_41_organization(  ).
*
*    DATA(lv_set) = 'SET_HEADQUARTERS'.
*    DATA(lv_get) = 'GET_HEADQUARTERS'.
*
*    CALL METHOD go_object->(lv_set) exporting iv_headquarters = 'Headquarters of the organization'.
*    CALL METHOD go_object->(lv_get) RECEIVING rv_result = lv_headquarter.
*
*    out->write( lv_headquarter ).

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
