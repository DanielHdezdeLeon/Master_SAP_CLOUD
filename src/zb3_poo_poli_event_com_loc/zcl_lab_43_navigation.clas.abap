CLASS zcl_lab_43_navigation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA log TYPE string.
    METHODS on_touch_screen  FOR EVENT touch_screen  OF zcl_lab_42_screen
      IMPORTING
        pos_horizontal
        pos_vertical
        sender.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_43_navigation IMPLEMENTATION.
  METHOD on_touch_screen.
        Log = |Touch screen event received at position: ({ pos_horizontal }, { pos_vertical },Screen_type = { sender->screen_type } )|.
  ENDMETHOD.

ENDCLASS.
