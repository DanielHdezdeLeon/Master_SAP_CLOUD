CLASS zcl_lab_67_package_a DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_66_travel
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor.
  PROTECTED SECTION.
    METHODS: transport_oneway REDEFINITION,
      day_one REDEFINITION,
      day_two REDEFINITION,
      day_three REDEFINITION,
      transport_return REDEFINITION.
  PRIVATE SECTION.

    DATA gv_itinerary TYPE string_table.
ENDCLASS.



CLASS zcl_lab_67_package_a IMPLEMENTATION.
  METHOD day_one.
    rv_schedule = 'Paseo Libre'.
  ENDMETHOD.

  METHOD day_three.

    rv_schedule = 'Visita Museos'.

  ENDMETHOD.

  METHOD day_two.
    rv_schedule = 'Visita Parques'.
  ENDMETHOD.

  METHOD transport_oneway.
    rv_transport_travel = 'AVION'.
  ENDMETHOD.

  METHOD transport_return.
    rv_return_travel = 'BARCO'.
  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).
    me->travel( ).
  ENDMETHOD.

ENDCLASS.
