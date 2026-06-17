CLASS zcl_lab_35_college DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS enroll_student IMPORTING io_student TYPE REF TO zcl_lab_34_student.
    METHODS: get_go_student RETURNING value(r_result) TYPE REF TO zcl_lab_34_student,
             set_go_student IMPORTING io_go_student TYPE REF TO zcl_lab_34_student.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA go_student TYPE REF TO zcl_lab_34_student.

ENDCLASS.



CLASS zcl_lab_35_college IMPLEMENTATION.
  METHOD enroll_student.
    go_student = io_student.
  ENDMETHOD.

  METHOD get_go_student.
    r_result = me->go_student.
  ENDMETHOD.

  METHOD set_go_student.
    me->go_student = io_go_student.
  ENDMETHOD.

ENDCLASS.
