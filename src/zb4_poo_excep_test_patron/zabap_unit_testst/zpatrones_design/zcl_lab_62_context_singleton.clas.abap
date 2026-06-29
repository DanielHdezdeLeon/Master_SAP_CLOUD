CLASS zcl_lab_62_context_singleton DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    CLASS-METHODS: get_instance RETURNING VALUE(ro_singleton) TYPE REF TO zcl_lab_62_context_singleton.
    METHODS constructor.
    METHODS: get_mv_time RETURNING value(r_result) TYPE uzeit.
  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA mo_singleton TYPE REF TO zcl_lab_62_context_singleton.
    DATA mv_time TYPE uzeit.
ENDCLASS.



CLASS zcl_lab_62_context_singleton IMPLEMENTATION.
  METHOD get_instance.
    IF mo_singleton IS NOT BOUND.
      mo_singleton = NEW #( ).
    ENDIF.
    ro_singleton = mo_singleton.
  ENDMETHOD.

  METHOD constructor.
    me->mv_time =  cl_abap_context_info=>get_system_time( ).
  ENDMETHOD.

  METHOD get_mv_time.
    r_result = me->mv_time.
  ENDMETHOD.

ENDCLASS.
