CLASS zcl_lab_22_student DEFINITION INHERITING FROM zcl_lab_21_classroom
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_student RETURNING VALUE(po_class) TYPE REF TO zcl_lab_21_classroom.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student IMPLEMENTATION.
  METHOD assign_student.
    po_class = NEW zcl_lab_21_classroom( ).
  ENDMETHOD.

ENDCLASS.
