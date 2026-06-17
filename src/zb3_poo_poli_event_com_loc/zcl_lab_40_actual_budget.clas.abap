CLASS zcl_lab_40_actual_budget DEFINITION
INHERITING FROM zcl_lab_39_budget
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: get_budget REDEFINITION.
    METHODS: set_budget REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_40_actual_budget IMPLEMENTATION.
  METHOD get_budget.
    rv_budget = budget.
  ENDMETHOD.

    METHOD set_budget.
      budget = iv_budget.
    ENDMETHOD.

ENDCLASS.
