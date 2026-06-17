CLASS zcl_lab_06_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.
    DATA ms_object TYPE ty_elem_objects.
    CONSTANTS: c_class     TYPE string VALUE 'zcl_lab_06_elements',
               c_instance  TYPE string VALUE 'GET_ELEMENTS',
               c_name      TYPE string VALUE 'objects',
               c_reference TYPE string VALUE 'go_elements'.
    METHODS set_object IMPORTING iv_MS_OBJECT TYPE ty_elem_objects.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements IMPLEMENTATION.
  METHOD set_object.
    ms_object = iv_MS_OBJECT.
  ENDMETHOD.

ENDCLASS.
