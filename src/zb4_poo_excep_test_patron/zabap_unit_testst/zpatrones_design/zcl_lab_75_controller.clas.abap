CLASS zcl_lab_75_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_view RETURNING value(r_result) TYPE REF TO zcl_lab_74_view,
             set_view IMPORTING i_view TYPE REF TO zcl_lab_74_view,
             get_model RETURNING value(r_result) TYPE REF TO zcl_lab_73_model,
             set_model IMPORTING i_model TYPE REF TO zcl_lab_73_model.
  PROTECTED SECTION.

  PRIVATE SECTION.
  DATA model type REF TO zcl_lab_73_model.
  DATA view type REF TO zcl_lab_74_view.
ENDCLASS.



CLASS zcl_lab_75_controller IMPLEMENTATION.
  METHOD get_view.
    r_result = me->view.
  ENDMETHOD.

  METHOD set_view.
    me->view = i_view.
  ENDMETHOD.

  METHOD get_model.
    r_result = me->model.
  ENDMETHOD.

  METHOD set_model.
    me->model = i_model.
  ENDMETHOD.

ENDCLASS.
