CLASS zcl_lab_49_employee DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA log_evento TYPE STANDARD TABLE OF string.
    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_administrative_dep IMPORTING ev_employee sender.

    METHODS constructor.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_49_employee IMPLEMENTATION.

  METHOD on_payroll_paid.
    APPEND sender->log TO log_evento.
    DATA(log_event) = |Orden de pago enviada al banco para empleado { ev_employee }|.
    APPEND log_event TO log_evento.

  ENDMETHOD.

  METHOD constructor.
    SET HANDLER on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.

ENDCLASS.
