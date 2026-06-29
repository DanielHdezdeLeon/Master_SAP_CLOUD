CLASS zcl_lab_70_observer DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.

    METHODS On_modificate_state ABSTRACT
    for event modificate_state of zcl_lab_69_blog
    IMPORTING ev_new_state.


ENDCLASS.



CLASS zcl_lab_70_observer IMPLEMENTATION.

ENDCLASS.
