CLASS zcl_lab_01_execution DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_execution IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lt_objects TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization.

    APPEND INITIAL LINE TO lt_objects ASSIGNING FIELD-SYMBOL(<ls_object>).
    <ls_object> = NEW zcl_lab_30_org_france( ).
    APPEND INITIAL LINE TO lt_objects ASSIGNING <ls_object>.
    <ls_object> = NEW zcl_lab_30_org_germany( ).

    LOOP AT lt_objects ASSIGNING FIELD-SYMBOL(<ls_object_aux>).

      out->write( <ls_object_aux>->get_location(  ) ).

    ENDLOOP.




  ENDMETHOD.
ENDCLASS.
