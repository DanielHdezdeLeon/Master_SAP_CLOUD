CLASS zcl_lab_50_work_zone DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_lab_51_wz_friend.

  PUBLIC SECTION.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA gs_workzone TYPE  ty_work_zone.
    DATA mo_helper  TYPE REF TO lcl_helper.
    METHODS set_work_zone IMPORTING VALUE(is_workzone) TYPE ty_work_zone.
ENDCLASS.



CLASS zcl_lab_50_work_zone IMPLEMENTATION.
  METHOD set_work_zone.
    gs_workzone =  is_workzone.
    CREATE OBJECT mo_helper.
  ENDMETHOD.

ENDCLASS.
