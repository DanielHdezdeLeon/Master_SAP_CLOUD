CLASS zcl_lab_51_wz_friend DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.


  PUBLIC SECTION.
    METHODS get_helper RETURNING VALUE(et_workzone) TYPE string_table.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_51_wz_friend IMPLEMENTATION.
  METHOD get_helper.
    DATA(lo_work_zone) = NEW zcl_lab_50_work_zone( ).
    lo_work_zone->set_work_zone( is_workzone = lo_work_zone->gs_workzone ).
    lo_work_zone->mo_helper->ms_work_zone-launchpad = 'SAP'.
    lo_work_zone->mo_helper->ms_work_zone-dashboard = 'SAP_DASH'.
    lo_work_zone->mo_helper->ms_work_zone-spaces = 'SAP_SAPCES'.
    lo_work_zone->mo_helper->get_work_zone(
      RECEIVING
        ev_work_zone = DATA(ls_work_zone)
    ).

    APPEND ls_work_zone-dashboard TO et_workzone.
    APPEND ls_work_zone-spaces TO et_workzone.
    APPEND ls_work_zone-launchpad TO et_workzone.

  ENDMETHOD.

ENDCLASS.
