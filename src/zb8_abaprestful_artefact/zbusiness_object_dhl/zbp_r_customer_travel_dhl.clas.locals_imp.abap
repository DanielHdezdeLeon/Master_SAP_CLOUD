CLASS lhc_Z_R_CUSTOMER_TRAVEL_DHL DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS:
      BEGIN OF customer_travel_status,
        open     TYPE c LENGTH 1 VALUE 'O',
        accepted TYPE c LENGTH 1 VALUE 'A',
        rejected TYPE c LENGTH 1 VALUE 'X',
      END OF customer_travel_status.

    METHODS get_instance_features FOR INSTANCE FEATURES
      keys REQUEST requested_features FOR CustomerTravel RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR CustomerTravel RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR CustomerTravel RESULT result.

    METHODS acceptCustomer FOR MODIFY
       keys FOR ACTION CustomerTravel~acceptCustomer RESULT result.

    METHODS rejectCustomer FOR MODIFY
       keys FOR ACTION CustomerTravel~rejectCustomer RESULT result.

    METHODS setDescription FOR DETERMINE ON SAVE
       keys FOR CustomerTravel~setDescription.

    METHODS validateCustomer FOR VALIDATE ON SAVE
       keys FOR CustomerTravel~validateCustomer.
    METHODS acceptClients FOR MODIFY
      keys FOR ACTION CustomerTravel~acceptClients RESULT result.
    METHODS recalculateTotalPrice FOR MODIFY
      keys FOR ACTION CustomerTravel~recalculateTotalPrice RESULT result.

ENDCLASS.

CLASS lhc_Z_R_CUSTOMER_TRAVEL_DHL IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD acceptCustomer.

    MODIFY ENTITIES OF z_r_customer_travel_dhl IN LOCAL MODE
    ENTITY CustomerTravel
    UPDATE
    FIELDS ( OverallStatus )
    WITH VALUE #( FOR ls_key IN keys ( %tky = ls_key-%tky
                                       overallstatus = customer_travel_status-open
                                     ) ).

    READ ENTITIES OF z_r_customer_travel_dhl IN LOCAL MODE
     ENTITY CustomerTravel
     ALL FIELDS
     WITH CORRESPONDING #( keys )
     RESULT DATA(ltcustomers).

    result = VALUE #( FOR ls_customer IN ltcustomers ( %tky = ls_customer-%tky
                                                       %param = ls_customer ) ).

  ENDMETHOD.

  METHOD rejectCustomer.

    MODIFY ENTITIES OF z_r_customer_travel_dhl IN LOCAL MODE
    ENTITY CustomerTravel
    UPDATE
    FIELDS ( OverallStatus )
    WITH VALUE #( FOR ls_key IN keys ( %tky = ls_key-%tky
                                       overallstatus = customer_travel_status-rejected
                                     ) ).

    READ ENTITIES OF z_r_customer_travel_dhl IN LOCAL MODE
     ENTITY CustomerTravel
     ALL FIELDS
     WITH CORRESPONDING #( keys )
     RESULT DATA(ltcustomers).

    result = VALUE #( FOR ls_customer IN ltcustomers ( %tky = ls_customer-%tky
                                                       %param = ls_customer ) ).







  ENDMETHOD.

  METHOD setDescription.
  ENDMETHOD.

  METHOD validateCustomer.
  ENDMETHOD.

  METHOD acceptClients.
  ENDMETHOD.

  METHOD recalculateTotalPrice.
  ENDMETHOD.

ENDCLASS.
