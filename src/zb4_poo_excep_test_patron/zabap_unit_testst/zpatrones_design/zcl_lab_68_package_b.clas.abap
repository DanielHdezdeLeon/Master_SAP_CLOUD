CLASS zcl_lab_68_package_b DEFINITION
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
ENDCLASS.



CLASS zcl_lab_68_package_b IMPLEMENTATION.
  METHOD day_one.
    rv_schedule = 'BB Paseo Libre'.
  ENDMETHOD.

  METHOD day_three.

    rv_schedule = 'BB Visita Museos'.

  ENDMETHOD.

  METHOD day_two.
    rv_schedule = 'BB Visita Parques'.
  ENDMETHOD.

  METHOD transport_oneway.
    rv_transport_travel = 'BB AVION'.
  ENDMETHOD.

  METHOD transport_return.
    rv_return_travel = 'BB BARCO'.
  ENDMETHOD.
  METHOD constructor.

    super->constructor( ).
    me->travel( ).
  ENDMETHOD.
ENDCLASS.
