@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl:{ authorizationCheck: #NOT_REQUIRED,
                 auditing.type: #CUSTOM,
                 auditing.specification: 'DHL_AUDIT' 
               }
@EndUserText.label: 'Audit'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType: {
        serviceQuality: #X,
        dataClass: #MIXED,
        sizeCategory: #S        
    }

define view entity zcds_auditing_aspect_dhl as select from zcus_access_dhl
{
    key invoice_id as InvoiceId,
    customer_name as CustomerName,
    currency as Currency,
    inv_amount as InvAmount,
    department as Department,
    created_by as CreatedBy,
    create_date as CreateDate
}
