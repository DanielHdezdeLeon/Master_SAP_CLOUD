INTERFACE zif_lab_01_flight
      PUBLIC.
  INTERFACES zif_lab_03_airports.
  CLASS-DATA comp_id TYPE string.

  METHODS: get_com_id RETURNING VALUE(rv_com_id) TYPE string,
           set_com_id IMPORTING iv_com_id TYPE string.

ENDINTERFACE.
