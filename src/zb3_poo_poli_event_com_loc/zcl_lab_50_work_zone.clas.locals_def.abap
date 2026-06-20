*"* use this source file for any type of declarations (class
*"* definitions, interfaces or type declarations) you need for
*"* components in the private section
TYPES: BEGIN OF ty_work_zone,
         launchpad TYPE string,
         dashboard TYPE string,
         spaces    TYPE string,
       END OF ty_work_zone.

CONSTANTS lc_data type string VALUE 'PEPE'.


CLASS lcl_helper DEFINITION.

  PUBLIC SECTION.

    DATA ms_work_zone TYPE  ty_work_zone.
    METHODS GET_WORK_ZONE RETURNING VALUE(ev_work_zone) type ty_work_zone.

ENDCLASS.
