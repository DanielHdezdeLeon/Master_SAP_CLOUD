INTERFACE zif_lab_03_airports
  PUBLIC .

  METHODS get_airports IMPORTING iv_airport_id TYPE string
                       RETURNING VALUE(rv_aeropuerto) type ztaeropuertos.

ENDINTERFACE.
