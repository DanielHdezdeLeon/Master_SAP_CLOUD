CLASS zcl_lab_48_administrative_dep DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log type string.
    EVENTS payroll_paid EXPORTING VALUE(ev_employee) TYPE string.

    METHODS constructor IMPORTING iv_employee TYPE string.
    METHODS notify_employee.
    METHODS: get_id_emplouee RETURNING value(r_result) TYPE string,
             set_id_emplouee IMPORTING if_id_emplouee TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA id_employee TYPE string.

ENDCLASS.



CLASS zcl_lab_48_administrative_dep IMPLEMENTATION.
  METHOD notify_employee.
    log = |Se pagará a nómina del empleado con ID:  { id_employee }|.
    RAISE EVENT payroll_paid EXPORTING ev_employee =  id_employee.
  ENDMETHOD.

  METHOD constructor.
    me->id_employee = iv_employee.
  ENDMETHOD.

  METHOD get_id_emplouee.
    r_result = me->id_employee.
  ENDMETHOD.

  METHOD set_id_emplouee.
    me->id_employee = id_employee.
  ENDMETHOD.

ENDCLASS.
