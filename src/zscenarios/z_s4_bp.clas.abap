"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_BILL_OF_MATERIAL_SRV</em>
CLASS z_s4_bp DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type BILL_OF_MATERIAL_HEADER_UU
        bill_of_material_header_uu TYPE sysuuid_x16,
        "! Used for primitive type BILL_OF_MATERIAL_HEADER__2
        bill_of_material_header__2 TYPE sysuuid_x16,
        "! Used for primitive type BILL_OF_MATERIAL_ITEM_CATE
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! Used for primitive type BILL_OF_MATERIAL_VARIANT
        bill_of_material_variant   TYPE c LENGTH 2,
        "! Used for primitive type BOMEXPLOSION_APPLICATION
        bomexplosion_application   TYPE c LENGTH 4,
        "! Used for primitive type BOMEXPLOSION_ASSEMBLY
        bomexplosion_assembly      TYPE c LENGTH 40,
        "! Used for primitive type BOMEXPLOSION_DATE
        bomexplosion_date          TYPE datn,
        "! Used for primitive type BOMEXPLOSION_IS_LIMITED
        bomexplosion_is_limited    TYPE abap_bool,
        "! Used for primitive type BOMEXPLOSION_IS_MULTILEVEL
        bomexplosion_is_multilevel TYPE abap_bool,
        "! Used for primitive type BOMEXPLOSION_LEVEL
        bomexplosion_level         TYPE p LENGTH 2 DECIMALS 0,
        "! Used for primitive type BOMITM_QTY_IS_SCRAP_RELEVA
        bomitm_qty_is_scrap_releva TYPE c LENGTH 1,
        "! Used for primitive type BOM_VERSN
        bom_versn                  TYPE c LENGTH 4,
        "! Used for primitive type ENGINEERING_CHANGE_DOCUMEN
        engineering_change_documen TYPE c LENGTH 12,
        "! Used for primitive type MATERIAL
        material                   TYPE c LENGTH 40,
        "! Used for primitive type MATERIAL_PROVISION_FLTR_TY
        material_provision_fltr_ty TYPE c LENGTH 1,
        "! Used for primitive type PLANT
        plant                      TYPE c LENGTH 4,
        "! Used for primitive type REQUIRED_QUANTITY
        required_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! Used for primitive type SPARE_PART_FLTR_TYPE
        spare_part_fltr_type       TYPE c LENGTH 1,
        "! Used for primitive type STLAL
        stlal                      TYPE c LENGTH 2,
        "! Used for primitive type STLNR
        stlnr                      TYPE c LENGTH 8,
        "! Used for primitive type STLTY
        stlty                      TYPE c LENGTH 1,
        "! Used for primitive type VERSNLASTIND
        versnlastind               TYPE abap_bool,
        "! Used for primitive type VERSNST
        versnst                    TYPE c LENGTH 2,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">DBomheaderforexplosionOut</p>
      BEGIN OF tys_dbomheaderforexplosion_out,
        "! alternative_item
        alternative_item           TYPE abap_bool,
        "! alt_item_group
        alt_item_group             TYPE c LENGTH 2,
        "! alt_nxt_lvl
        alt_nxt_lvl                TYPE abap_bool,
        "! assembly_indicator
        assembly_indicator         TYPE abap_bool,
        "! assign_effect_vals
        assign_effect_vals         TYPE abap_bool,
        "! assy_scrap_itm_mat
        assy_scrap_itm_mat         TYPE p LENGTH 3 DECIMALS 2,
        "! as_selection_cond
        as_selection_cond          TYPE abap_bool,
        "! base_qty_nxt_lvl
        base_qty_nxt_lvl           TYPE p LENGTH 7 DECIMALS 3,
        "! base_unit_nxt_lvl
        base_unit_nxt_lvl          TYPE c LENGTH 3,
        "! base_uom
        base_uom                   TYPE c LENGTH 3,
        "! batch_entry
        batch_entry                TYPE c LENGTH 1,
        "! batch_mgmt
        batch_mgmt                 TYPE abap_bool,
        "! bill_of_material
        bill_of_material           TYPE c LENGTH 8,
        "! bill_of_material_base_quant
        bill_of_material_base_quan TYPE p LENGTH 7 DECIMALS 3,
        "! bill_of_material_component
        bill_of_material_component TYPE c LENGTH 40,
        "! bill_of_material_comp_quant
        bill_of_material_comp_quan TYPE p LENGTH 7 DECIMALS 3,
        "! bill_of_material_item_category
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! bill_of_material_item_number
        bill_of_material_item_numb TYPE c LENGTH 4,
        "! bill_of_material_item_quantity
        bill_of_material_item_quan TYPE p LENGTH 7 DECIMALS 3,
        "! bill_of_material_item_unit
        bill_of_material_item_unit TYPE c LENGTH 3,
        "! Bill_Of_Material_Root
        bill_of_material_root      TYPE c LENGTH 8,
        "! bill_of_material_root_variant
        bill_of_material_root_vari TYPE c LENGTH 2,
        "! bill_of_material_variant
        bill_of_material_variant   TYPE c LENGTH 2,
        "! bill_of_material_variant_usage
        bill_of_material_variant_u TYPE c LENGTH 1,
        "! bom_change_number
        bom_change_number          TYPE c LENGTH 12,
        "! bulk_material
        bulk_material              TYPE abap_bool,
        "! b_o_m_alternative_text
        b_o_m_alternative_text     TYPE c LENGTH 40,
        "! b_o_m_alt_nxt_lvl
        b_o_m_alt_nxt_lvl          TYPE c LENGTH 2,
        "! b_o_m_category
        b_o_m_category             TYPE c LENGTH 1,
        "! b_o_m_cat_nxt_lvl
        b_o_m_cat_nxt_lvl          TYPE c LENGTH 1,
        "! b_o_m_component_description
        b_o_m_component_descriptio TYPE c LENGTH 40,
        "! b_o_m_explosion_level
        b_o_m_explosion_level      TYPE p LENGTH 2 DECIMALS 0,
        "! b_o_m_hdr_matl_hier_node
        b_o_m_hdr_matl_hier_node   TYPE c LENGTH 40,
        "! B_O_M_Hdr_Root_Matl_Hier_Node
        b_o_m_hdr_root_matl_hier_n TYPE c LENGTH 40,
        "! b_o_m_header_base_unit
        b_o_m_header_base_unit     TYPE c LENGTH 3,
        "! b_o_m_header_quantity_primary
        b_o_m_header_quantity_prim TYPE p LENGTH 7 DECIMALS 3,
        "! b_o_m_item_description
        b_o_m_item_description     TYPE c LENGTH 40,
        "! b_o_m_item_is_discontinued
        b_o_m_item_is_discontinued TYPE c LENGTH 1,
        "! b_o_m_no_nxt_lvl
        b_o_m_no_nxt_lvl           TYPE c LENGTH 8,
        "! b_o_m_usage_nxt_lvl
        b_o_m_usage_nxt_lvl        TYPE c LENGTH 1,
        "! b_o_m_version
        b_o_m_version              TYPE c LENGTH 4,
        "! b_o_m_version_status
        b_o_m_version_status       TYPE c LENGTH 2,
        "! b_o_m_vers_status_description
        b_o_m_vers_status_descript TYPE c LENGTH 60,
        "! change_number
        change_number              TYPE c LENGTH 12,
        "! chg_to_eng_chg_number
        chg_to_eng_chg_number      TYPE c LENGTH 12,
        "! class
        class                      TYPE c LENGTH 18,
        "! classification
        classification             TYPE c LENGTH 8,
        "! class_type
        class_type                 TYPE c LENGTH 3,
        "! commodity_code
        commodity_code             TYPE c LENGTH 17,
        "! comp_maint_status
        comp_maint_status          TYPE c LENGTH 15,
        "! comp_scrap_itm
        comp_scrap_itm             TYPE p LENGTH 3 DECIMALS 2,
        "! comp_scrap_itm_mat
        comp_scrap_itm_mat         TYPE p LENGTH 3 DECIMALS 2,
        "! config_mat_var
        config_mat_var             TYPE c LENGTH 18,
        "! config_multi_level
        config_multi_level         TYPE abap_bool,
        "! conf_bom_nxt_lvl
        conf_bom_nxt_lvl           TYPE abap_bool,
        "! cost_element
        cost_element               TYPE c LENGTH 10,
        "! counter
        counter                    TYPE c LENGTH 8,
        "! co_product
        co_product                 TYPE abap_bool,
        "! created_by_user
        created_by_user            TYPE c LENGTH 12,
        "! currency
        currency                   TYPE c LENGTH 5,
        "! customs_preference
        customs_preference         TYPE c LENGTH 1,
        "! dat_hist_nxt_lvl
        dat_hist_nxt_lvl           TYPE abap_bool,
        "! deletion_indicator
        deletion_indicator         TYPE abap_bool,
        "! delivery_time_in_days
        delivery_time_in_days      TYPE p LENGTH 2 DECIMALS 0,
        "! del_Ind_nxt_lvl
        del_ind_nxt_lvl            TYPE abap_bool,
        "! denominator
        denominator                TYPE p LENGTH 3 DECIMALS 0,
        "! discont_group
        discont_group              TYPE c LENGTH 2,
        "! distribution_key
        distribution_key           TYPE c LENGTH 4,
        "! doc
        doc                        TYPE c LENGTH 22,
        "! document_part
        document_part              TYPE c LENGTH 3,
        "! document_type
        document_type              TYPE c LENGTH 3,
        "! document_version
        document_version           TYPE c LENGTH 2,
        "! doc_number
        doc_number                 TYPE c LENGTH 25,
        "! doc_reqd
        doc_reqd                   TYPE abap_bool,
        "! doc_status
        doc_status                 TYPE c LENGTH 2,
        "! doc_type
        doc_type                   TYPE c LENGTH 3,
        "! doc_version
        doc_version                TYPE c LENGTH 2,
        "! effective_out_date
        effective_out_date         TYPE timestamp,
        "! engineering_design
        engineering_design         TYPE abap_bool,
        "! exception_bom
        exception_bom              TYPE c LENGTH 4,
        "! explosion_type
        explosion_type             TYPE c LENGTH 2,
        "! fixed_price_co_prod
        fixed_price_co_prod        TYPE abap_bool,
        "! fixed_quantity
        fixed_quantity             TYPE abap_bool,
        "! follow_up_grp
        follow_up_grp              TYPE c LENGTH 2,
        "! follow_up_item
        follow_up_item             TYPE abap_bool,
        "! follow_up_product
        follow_up_product          TYPE c LENGTH 40,
        "! formula_key
        formula_key                TYPE c LENGTH 2,
        "! goods_receipt_duration_in_days
        goods_receipt_duration_in  TYPE p LENGTH 2 DECIMALS 0,
        "! goods_recipient
        goods_recipient            TYPE c LENGTH 12,
        "! header_record_id
        header_record_id           TYPE c LENGTH 1,
        "! header_validity_end_date
        header_validity_end_date   TYPE timestamp,
        "! header_validity_start_date
        header_validity_start_date TYPE timestamp,
        "! hl_configuration
        hl_configuration           TYPE abap_bool,
        "! individual_coll
        individual_coll            TYPE c LENGTH 1,
        "! internal_obj_no
        internal_obj_no            TYPE c LENGTH 18,
        "! intra_material
        intra_material             TYPE c LENGTH 40,
        "! issuing_plant
        issuing_plant              TYPE c LENGTH 4,
        "! is_b_o_m_item_spare_part
        is_b_o_m_item_spare_part   TYPE c LENGTH 1,
        "! is_c_a_d
        is_c_a_d                   TYPE abap_bool,
        "! is_material_provision
        is_material_provision      TYPE c LENGTH 1,
        "! is_phantom_item
        is_phantom_item            TYPE abap_bool,
        "! is_software_component
        is_software_component      TYPE abap_bool,
        "! item_description_line_2
        item_description_line_2    TYPE c LENGTH 40,
        "! item_identification
        item_identification        TYPE c LENGTH 8,
        "! item_index
        item_index                 TYPE int4,
        "! item_node
        item_node                  TYPE c LENGTH 8,
        "! item_sign
        item_sign                  TYPE abap_bool,
        "! last_changed_by_user
        last_changed_by_user       TYPE c LENGTH 12,
        "! last_change_date
        last_change_date           TYPE timestamp,
        "! lead_time_offset
        lead_time_offset           TYPE p LENGTH 2 DECIMALS 0,
        "! long_text_lang
        long_text_lang             TYPE c LENGTH 2,
        "! low_level_code
        low_level_code             TYPE c LENGTH 3,
        "! maintenance_status
        maintenance_status         TYPE c LENGTH 15,
        "! material_component_price
        material_component_price   TYPE p LENGTH 7 DECIMALS 3,
        "! material_group
        material_group             TYPE c LENGTH 9,
        "! material_is_configurable
        material_is_configurable   TYPE abap_bool,
        "! Material_Name
        material_name              TYPE c LENGTH 40,
        "! material_type
        material_type              TYPE c LENGTH 4,
        "! mat_purity_in_perc
        mat_purity_in_perc         TYPE p LENGTH 3 DECIMALS 2,
        "! moving_price
        moving_price               TYPE p LENGTH 7 DECIMALS 3,
        "! multiple_sel
        multiple_sel               TYPE abap_bool,
        "! m_r_p_type
        m_r_p_type                 TYPE c LENGTH 2,
        "! net_scrap_indicator
        net_scrap_indicator        TYPE abap_bool,
        "! no_cu_instances
        no_cu_instances            TYPE c LENGTH 6,
        "! no_of_sheets
        no_of_sheets               TYPE c LENGTH 3,
        "! no_var_size_items
        no_var_size_items          TYPE p LENGTH 7 DECIMALS 3,
        "! numerator
        numerator                  TYPE p LENGTH 3 DECIMALS 0,
        "! object_description
        object_description         TYPE c LENGTH 40,
        "! object_type
        object_type                TYPE c LENGTH 1,
        "! obj_dep_assgt_no
        obj_dep_assgt_no           TYPE c LENGTH 18,
        "! operation_scrap_perc
        operation_scrap_perc       TYPE p LENGTH 3 DECIMALS 2,
        "! oper_lto_unit
        oper_lto_unit              TYPE c LENGTH 3,
        "! oper_lt_offset
        oper_lt_offset             TYPE p LENGTH 2 DECIMALS 0,
        "! org_area
        org_area                   TYPE c LENGTH 10,
        "! page_format
        page_format                TYPE c LENGTH 4,
        "! page_number
        page_number                TYPE c LENGTH 3,
        "! path
        path                       TYPE p LENGTH 3 DECIMALS 0,
        "! path_predecessor
        path_predecessor           TYPE p LENGTH 3 DECIMALS 0,
        "! plant
        plant                      TYPE c LENGTH 4,
        "! plantName
        plant_name                 TYPE c LENGTH 30,
        "! plant_maintenance
        plant_maintenance          TYPE abap_bool,
        "! plant_sp_matl_status
        plant_sp_matl_status       TYPE c LENGTH 2,
        "! plt_sp_status_valid_from
        plt_sp_status_valid_from   TYPE timestamp,
        "! price_control
        price_control              TYPE c LENGTH 1,
        "! price_unit
        price_unit                 TYPE p LENGTH 3 DECIMALS 0,
        "! priority
        priority                   TYPE c LENGTH 2,
        "! procured_externally
        procured_externally        TYPE abap_bool,
        "! prodn_supply_area
        prodn_supply_area          TYPE c LENGTH 10,
        "! production_relevant
        production_relevant        TYPE abap_bool,
        "! production_version
        production_version         TYPE c LENGTH 4,
        "! prod_order_issue_location
        prod_order_issue_location  TYPE c LENGTH 4,
        "! profit_center
        profit_center              TYPE c LENGTH 10,
        "! purchasing_group
        purchasing_group           TYPE c LENGTH 3,
        "! purchasing_organisation
        purchasing_organisation    TYPE c LENGTH 4,
        "! qty_var_size_item
        qty_var_size_item          TYPE p LENGTH 7 DECIMALS 3,
        "! record_creation_date
        record_creation_date       TYPE timestamp,
        "! recurisve
        recurisve                  TYPE abap_bool,
        "! recurs_allowed
        recurs_allowed             TYPE abap_bool,
        "! reference_point
        reference_point            TYPE c LENGTH 20,
        "! relevancy_to_costing
        relevancy_to_costing       TYPE c LENGTH 1,
        "! relevant_to_sales
        relevant_to_sales          TYPE c LENGTH 1,
        "! required_component
        required_component         TYPE abap_bool,
        "! requirement_segment
        requirement_segment        TYPE c LENGTH 40,
        "! revision_level
        revision_level             TYPE c LENGTH 2,
        "! scrap_qty_bun
        scrap_qty_bun              TYPE p LENGTH 7 DECIMALS 3,
        "! serial_no_profile
        serial_no_profile          TYPE c LENGTH 4,
        "! size1
        size_1                     TYPE p LENGTH 7 DECIMALS 3,
        "! size2
        size_2                     TYPE p LENGTH 7 DECIMALS 3,
        "! size3
        size_3                     TYPE p LENGTH 7 DECIMALS 3,
        "! size_unit
        size_unit                  TYPE c LENGTH 3,
        "! sort_string
        sort_string                TYPE c LENGTH 10,
        "! special_procurement_type
        special_procurement_type   TYPE c LENGTH 2,
        "! special_proc_typ_itm
        special_proc_typ_itm       TYPE c LENGTH 2,
        "! special_proc_typ_mastr
        special_proc_typ_mastr     TYPE c LENGTH 2,
        "! spec_proc_costing
        spec_proc_costing          TYPE c LENGTH 2,
        "! standard_price
        standard_price             TYPE p LENGTH 7 DECIMALS 3,
        "! status_text
        status_text                TYPE c LENGTH 16,
        "! stock_segment
        stock_segment              TYPE c LENGTH 40,
        "! storage_location
        storage_location           TYPE c LENGTH 4,
        "! strategy
        strategy                   TYPE c LENGTH 1,
        "! sub_item_indicator
        sub_item_indicator         TYPE abap_bool,
        "! supplier
        supplier                   TYPE c LENGTH 10,
        "! table_row
        table_row                  TYPE int4,
        "! tech_status_from
        tech_status_from           TYPE c LENGTH 12,
        "! test_hist_nxt_lvl
        test_hist_nxt_lvl          TYPE abap_bool,
        "! totals_record_id
        totals_record_id           TYPE c LENGTH 1,
        "! unit_of_measure
        unit_of_measure            TYPE c LENGTH 3,
        "! unloading_point
        unloading_point            TYPE c LENGTH 25,
        "! uom_usage
        uom_usage                  TYPE c LENGTH 1,
        "! usage_probability
        usage_probability          TYPE p LENGTH 2 DECIMALS 0,
        "! validity_end_date
        validity_end_date          TYPE timestamp,
        "! validity_start_date
        validity_start_date        TYPE timestamp,
        "! valuation_category
        valuation_category         TYPE c LENGTH 1,
        "! variants_nxt_lvl
        variants_nxt_lvl           TYPE abap_bool,
        "! x_plant_material_status
        x_plant_material_status    TYPE c LENGTH 2,
        "! x_plt_status_valid_from
        x_plt_status_valid_from    TYPE timestamp,
      END OF tys_dbomheaderforexplosion_out,
      "! <p class="shorttext synchronized">List of DBomheaderforexplosionOut</p>
      tyt_dbomheaderforexplosion_out TYPE STANDARD TABLE OF tys_dbomheaderforexplosion_out WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function ExplodeBOM</p>
      "! <em>with the internal name</em> EXPLODE_BOM
      BEGIN OF tys_parameters_1,
        "! BillOfMaterialHeaderUUID
        bill_of_material_header_uu TYPE sysuuid_x16,
        "! Material
        material                   TYPE c LENGTH 40,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! BillOfMaterialVariant
        bill_of_material_variant   TYPE c LENGTH 2,
        "! BOMExplosionApplication
        bomexplosion_application   TYPE c LENGTH 4,
        "! RequiredQuantity
        required_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! EngineeringChangeDocument
        engineering_change_documen TYPE c LENGTH 12,
        "! BOMExplosionIsLimited
        bomexplosion_is_limited    TYPE abap_bool,
        "! BOMItmQtyIsScrapRelevant
        bomitm_qty_is_scrap_releva TYPE c LENGTH 1,
        "! BillOfMaterialItemCategory
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! BOMExplosionAssembly
        bomexplosion_assembly      TYPE c LENGTH 40,
        "! BOMExplosionDate
        bomexplosion_date          TYPE datn,
        "! BOMExplosionLevel
        bomexplosion_level         TYPE p LENGTH 2 DECIMALS 0,
        "! BOMExplosionIsMultilevel
        bomexplosion_is_multilevel TYPE abap_bool,
        "! MaterialProvisionFltrType
        material_provision_fltr_ty TYPE c LENGTH 1,
        "! SparePartFltrType
        spare_part_fltr_type       TYPE c LENGTH 1,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function ReleaseVersionBOM</p>
      "! <em>with the internal name</em> RELEASE_VERSION_BOM
      BEGIN OF tys_parameters_2,
        "! BillOfMaterialHeaderUUID
        bill_of_material_header_uu TYPE sysuuid_x16,
        "! Stlnr
        stlnr                      TYPE c LENGTH 8,
        "! Stlty
        stlty                      TYPE c LENGTH 1,
        "! Stlal
        stlal                      TYPE c LENGTH 2,
        "! BomVersn
        bom_versn                  TYPE c LENGTH 4,
        "! Versnst
        versnst                    TYPE c LENGTH 2,
        "! Versnlastind
        versnlastind               TYPE abap_bool,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BillOfMaterialItemType</p>
      BEGIN OF tys_a_bill_of_material_item_ty,
        "! <em>Key property</em> BillOfMaterialItemUUID
        bill_of_material_item_uuid TYPE sysuuid_x16,
        "! BillOfMaterialCategory
        bill_of_material_category  TYPE c LENGTH 1,
        "! BillOfMaterial
        bill_of_material           TYPE c LENGTH 8,
        "! BillOfMaterialVariant
        bill_of_material_variant   TYPE c LENGTH 2,
        "! BillOfMaterialVersion
        bill_of_material_version   TYPE c LENGTH 4,
        "! BillOfMaterialItemNodeNumber
        bill_of_material_item_node TYPE c LENGTH 8,
        "! BOMItemInternalChangeCount
        bomitem_internal_change_co TYPE c LENGTH 8,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! EngineeringChangeDocForEdit
        engineering_change_doc_for TYPE c LENGTH 12,
        "! EngineeringChangeDocument
        engineering_change_documen TYPE c LENGTH 12,
        "! ChgToEngineeringChgDocument
        chg_to_engineering_chg_doc TYPE c LENGTH 12,
        "! InheritedNodeNumberForBOMItem
        inherited_node_number_for  TYPE c LENGTH 8,
        "! BOMItemRecordCreationDate
        bomitem_record_creation_da TYPE datn,
        "! BOMItemCreatedByUser
        bomitem_created_by_user    TYPE c LENGTH 12,
        "! BOMItemLastChangeDate
        bomitem_last_change_date   TYPE datn,
        "! BOMItemLastChangedByUser
        bomitem_last_changed_by_us TYPE c LENGTH 12,
        "! BillOfMaterialComponent
        bill_of_material_component TYPE c LENGTH 40,
        "! BillOfMaterialItemCategory
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! BillOfMaterialItemNumber
        bill_of_material_item_numb TYPE c LENGTH 4,
        "! BillOfMaterialItemUnit
        bill_of_material_item_unit TYPE c LENGTH 3,
        "! BillOfMaterialItemQuantity
        bill_of_material_item_quan TYPE p LENGTH 7 DECIMALS 3,
        "! IsAssembly
        is_assembly                TYPE c LENGTH 1,
        "! IsSubItem
        is_sub_item                TYPE abap_bool,
        "! BOMItemSorter
        bomitem_sorter             TYPE c LENGTH 10,
        "! FixedQuantity
        fixed_quantity             TYPE abap_bool,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! MaterialComponentPrice
        material_component_price   TYPE p LENGTH 7 DECIMALS 3,
        "! IdentifierBOMItem
        identifier_bomitem         TYPE c LENGTH 8,
        "! MaterialPriceUnitQty
        material_price_unit_qty    TYPE p LENGTH 3 DECIMALS 0,
        "! ComponentScrapInPercent
        component_scrap_in_percent TYPE p LENGTH 3 DECIMALS 2,
        "! OperationScrapInPercent
        operation_scrap_in_percent TYPE p LENGTH 3 DECIMALS 2,
        "! IsNetScrap
        is_net_scrap               TYPE abap_bool,
        "! NumberOfVariableSizeItem
        number_of_variable_size_it TYPE p LENGTH 7 DECIMALS 3,
        "! QuantityVariableSizeItem
        quantity_variable_size_ite TYPE p LENGTH 7 DECIMALS 3,
        "! FormulaKey
        formula_key                TYPE c LENGTH 2,
        "! ComponentDescription
        component_description      TYPE c LENGTH 40,
        "! BOMItemDescription
        bomitem_description        TYPE c LENGTH 40,
        "! BOMItemText2
        bomitem_text_2             TYPE c LENGTH 40,
        "! MaterialGroup
        material_group             TYPE c LENGTH 9,
        "! DocumentType
        document_type              TYPE c LENGTH 3,
        "! DocNumber
        doc_number                 TYPE c LENGTH 25,
        "! DocumentVersion
        document_version           TYPE c LENGTH 2,
        "! DocumentPart
        document_part              TYPE c LENGTH 3,
        "! ClassNumber
        class_number               TYPE c LENGTH 18,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
        "! ResultingItemCategory
        resulting_item_category    TYPE c LENGTH 1,
        "! DependencyObjectNumber
        dependency_object_number   TYPE c LENGTH 18,
        "! ObjectType
        object_type                TYPE c LENGTH 1,
        "! IsClassificationRelevant
        is_classification_relevant TYPE abap_bool,
        "! IsBulkMaterial
        is_bulk_material           TYPE abap_bool,
        "! BOMItemIsSparePart
        bomitem_is_spare_part      TYPE c LENGTH 1,
        "! BOMItemIsSalesRelevant
        bomitem_is_sales_relevant  TYPE c LENGTH 1,
        "! IsProductionRelevant
        is_production_relevant     TYPE abap_bool,
        "! BOMItemIsPlantMaintRelevant
        bomitem_is_plant_maint_rel TYPE abap_bool,
        "! BOMItemIsCostingRelevant
        bomitem_is_costing_relevan TYPE c LENGTH 1,
        "! IsEngineeringRelevant
        is_engineering_relevant    TYPE abap_bool,
        "! SpecialProcurementType
        special_procurement_type   TYPE c LENGTH 2,
        "! IsBOMRecursiveAllowed
        is_bomrecursive_allowed    TYPE abap_bool,
        "! OperationLeadTimeOffset
        operation_lead_time_offset TYPE p LENGTH 2 DECIMALS 0,
        "! OpsLeadTimeOffsetUnit
        ops_lead_time_offset_unit  TYPE c LENGTH 3,
        "! IsMaterialProvision
        is_material_provision      TYPE c LENGTH 1,
        "! BOMIsRecursive
        bomis_recursive            TYPE abap_bool,
        "! DocumentIsCreatedByCAD
        document_is_created_by_cad TYPE abap_bool,
        "! DistrKeyCompConsumption
        distr_key_comp_consumption TYPE c LENGTH 4,
        "! DeliveryDurationInDays
        delivery_duration_in_days  TYPE p LENGTH 2 DECIMALS 0,
        "! Creditor
        creditor                   TYPE c LENGTH 10,
        "! CostElement
        cost_element               TYPE c LENGTH 10,
        "! Size1
        size_1                     TYPE p LENGTH 7 DECIMALS 3,
        "! Size2
        size_2                     TYPE p LENGTH 7 DECIMALS 3,
        "! Size3
        size_3                     TYPE p LENGTH 7 DECIMALS 3,
        "! UnitOfMeasureForSize1To3
        unit_of_measure_for_size_1 TYPE c LENGTH 3,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! PurchasingOrganization
        purchasing_organization    TYPE c LENGTH 4,
        "! RequiredComponent
        required_component         TYPE abap_bool,
        "! MultipleSelectionAllowed
        multiple_selection_allowed TYPE abap_bool,
        "! ProdOrderIssueLocation
        prod_order_issue_location  TYPE c LENGTH 4,
        "! MaterialIsCoProduct
        material_is_co_product     TYPE abap_bool,
        "! ExplosionType
        explosion_type             TYPE c LENGTH 2,
        "! AlternativeItemGroup
        alternative_item_group     TYPE c LENGTH 2,
        "! FollowUpGroup
        follow_up_group            TYPE c LENGTH 2,
        "! DiscontinuationGroup
        discontinuation_group      TYPE c LENGTH 2,
        "! IsConfigurableBOM
        is_configurable_bom        TYPE c LENGTH 1,
        "! ReferencePoint
        reference_point            TYPE c LENGTH 20,
        "! LeadTimeOffset
        lead_time_offset           TYPE p LENGTH 2 DECIMALS 0,
        "! ProductionSupplyArea
        production_supply_area     TYPE c LENGTH 10,
        "! IsDeleted
        is_deleted                 TYPE abap_bool,
        "! IsALE
        is_ale                     TYPE abap_bool,
        "! BillOfMaterialHeaderUUID
        bill_of_material_header_uu TYPE sysuuid_x16,
      END OF tys_a_bill_of_material_item_ty,
      "! <p class="shorttext synchronized">List of A_BillOfMaterialItemType</p>
      tyt_a_bill_of_material_item_ty TYPE STANDARD TABLE OF tys_a_bill_of_material_item_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BillOfMaterialType</p>
      BEGIN OF tys_a_bill_of_material_type,
        "! <em>Key property</em> BillOfMaterialHeaderUUID
        bill_of_material_header_uu TYPE sysuuid_x16,
        "! BillOfMaterialVariantUsage
        bill_of_material_variant_u TYPE c LENGTH 1,
        "! BillOfMaterialCategory
        bill_of_material_category  TYPE c LENGTH 1,
        "! BillOfMaterial
        bill_of_material           TYPE c LENGTH 8,
        "! BillOfMaterialVariant
        bill_of_material_variant   TYPE c LENGTH 2,
        "! Material
        material                   TYPE c LENGTH 40,
        "! Plant
        plant                      TYPE c LENGTH 4,
        "! IsMultipleBOMAlt
        is_multiple_bomalt         TYPE abap_bool,
        "! BOMHeaderInternalChangeCount
        bomheader_internal_change  TYPE c LENGTH 8,
        "! BOMUsagePriority
        bomusage_priority          TYPE c LENGTH 2,
        "! BillOfMaterialAuthsnGrp
        bill_of_material_authsn_gr TYPE c LENGTH 4,
        "! BillOfMaterialVersion
        bill_of_material_version   TYPE c LENGTH 4,
        "! BOMVersionStatus
        bomversion_status          TYPE c LENGTH 2,
        "! IsVersionBillOfMaterial
        is_version_bill_of_materia TYPE abap_bool,
        "! IsLatestBOMVersion
        is_latest_bomversion       TYPE abap_bool,
        "! IsConfiguredMaterial
        is_configured_material     TYPE abap_bool,
        "! BOMTechnicalType
        bomtechnical_type          TYPE c LENGTH 1,
        "! BOMGroup
        bomgroup                   TYPE c LENGTH 18,
        "! BOMHeaderText
        bomheader_text             TYPE c LENGTH 40,
        "! BOMAlternativeText
        bomalternative_text        TYPE c LENGTH 40,
        "! BillOfMaterialStatus
        bill_of_material_status    TYPE c LENGTH 2,
        "! HeaderValidityStartDate
        header_validity_start_date TYPE datn,
        "! HeaderValidityEndDate
        header_validity_end_date   TYPE datn,
        "! EngineeringChangeDocument
        engineering_change_documen TYPE c LENGTH 12,
        "! EngineeringChangeDocForEdit
        engineering_change_doc_for TYPE c LENGTH 12,
        "! ChgToEngineeringChgDocument
        chg_to_engineering_chg_doc TYPE c LENGTH 12,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! IsALE
        is_ale                     TYPE abap_bool,
        "! BOMHeaderBaseUnit
        bomheader_base_unit        TYPE c LENGTH 3,
        "! BOMHeaderQuantityInBaseUnit
        bomheader_quantity_in_base TYPE p LENGTH 7 DECIMALS 3,
        "! RecordCreationDate
        record_creation_date       TYPE datn,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! BOMIsToBeDeleted
        bomis_to_be_deleted        TYPE c LENGTH 1,
        "! DocumentIsCreatedByCAD
        document_is_created_by_cad TYPE abap_bool,
        "! LaboratoryOrDesignOffice
        laboratory_or_design_offic TYPE c LENGTH 3,
        "! SelectedBillOfMaterialVersion
        selected_bill_of_material  TYPE c LENGTH 4,
      END OF tys_a_bill_of_material_type,
      "! <p class="shorttext synchronized">List of A_BillOfMaterialType</p>
      tyt_a_bill_of_material_type TYPE STANDARD TABLE OF tys_a_bill_of_material_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BillOfMaterialUsageType</p>
      BEGIN OF tys_a_bill_of_material_usage_2,
        "! <em>Key property</em> BillOfMaterialVariantUsage
        bill_of_material_variant_u TYPE c LENGTH 1,
        "! BillOfMaterialVariantUsageDesc
        bill_of_material_variant_2 TYPE c LENGTH 30,
      END OF tys_a_bill_of_material_usage_2,
      "! <p class="shorttext synchronized">List of A_BillOfMaterialUsageType</p>
      tyt_a_bill_of_material_usage_2 TYPE STANDARD TABLE OF tys_a_bill_of_material_usage_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BillOfMaterialUsageTextType</p>
      BEGIN OF tys_a_bill_of_material_usage_3,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! <em>Key property</em> BillOfMaterialVariantUsage
        bill_of_material_variant_u TYPE c LENGTH 1,
        "! BillOfMaterialVariantUsageDesc
        bill_of_material_variant_2 TYPE c LENGTH 30,
      END OF tys_a_bill_of_material_usage_3,
      "! <p class="shorttext synchronized">List of A_BillOfMaterialUsageTextType</p>
      tyt_a_bill_of_material_usage_3 TYPE STANDARD TABLE OF tys_a_bill_of_material_usage_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BOMItemCategoryTextType</p>
      BEGIN OF tys_a_bomitem_category_text_ty,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! <em>Key property</em> BillOfMaterialItemCategory
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! BillOfMaterialItemCategoryDesc
        bill_of_material_item_ca_2 TYPE c LENGTH 30,
      END OF tys_a_bomitem_category_text_ty,
      "! <p class="shorttext synchronized">List of A_BOMItemCategoryTextType</p>
      tyt_a_bomitem_category_text_ty TYPE STANDARD TABLE OF tys_a_bomitem_category_text_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_BOMItemCategoryType</p>
      BEGIN OF tys_a_bomitem_category_type,
        "! <em>Key property</em> BillOfMaterialItemCategory
        bill_of_material_item_cate TYPE c LENGTH 1,
        "! FixedItemCategory
        fixed_item_category        TYPE c LENGTH 1,
        "! BillOfMaterialItemCategoryDesc
        bill_of_material_item_ca_2 TYPE c LENGTH 30,
      END OF tys_a_bomitem_category_type,
      "! <p class="shorttext synchronized">List of A_BOMItemCategoryType</p>
      tyt_a_bomitem_category_type TYPE STANDARD TABLE OF tys_a_bomitem_category_type WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_BillOfMaterial
        "! <br/> Collection of type 'A_BillOfMaterialType'
        a_bill_of_material         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BILL_OF_MATERIAL',
        "! A_BillOfMaterialItem
        "! <br/> Collection of type 'A_BillOfMaterialItemType'
        a_bill_of_material_item    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BILL_OF_MATERIAL_ITEM',
        "! A_BillOfMaterialUsage
        "! <br/> Collection of type 'A_BillOfMaterialUsageType'
        a_bill_of_material_usage   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BILL_OF_MATERIAL_USAGE',
        "! A_BillOfMaterialUsageText
        "! <br/> Collection of type 'A_BillOfMaterialUsageTextType'
        a_bill_of_material_usage_t TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BILL_OF_MATERIAL_USAGE_T',
        "! A_BOMItemCategory
        "! <br/> Collection of type 'A_BOMItemCategoryType'
        a_bomitem_category         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BOMITEM_CATEGORY',
        "! A_BOMItemCategoryText
        "! <br/> Collection of type 'A_BOMItemCategoryTextType'
        a_bomitem_category_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_BOMITEM_CATEGORY_TEXT',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! ExplodeBOM
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        explode_bom         TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'EXPLODE_BOM',
        "! ReleaseVersionBOM
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        release_version_bom TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'RELEASE_VERSION_BOM',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for DBomheaderforexplosionOut</p>
        "! See also structure type {@link ..tys_dbomheaderforexplosion_out}
        BEGIN OF dbomheaderforexplosion_out,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF dbomheaderforexplosion_out,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_BillOfMaterialItemType</p>
        "! See also structure type {@link ..tys_a_bill_of_material_item_ty}
        BEGIN OF a_bill_of_material_item_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillOfMaterial
            to_bill_of_material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILL_OF_MATERIAL',
            "! to_BOMItemCategory
            to_bomitem_category TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BOMITEM_CATEGORY',
          END OF navigation,
        END OF a_bill_of_material_item_ty,
        "! <p class="shorttext synchronized">Internal names for A_BillOfMaterialType</p>
        "! See also structure type {@link ..tys_a_bill_of_material_type}
        BEGIN OF a_bill_of_material_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillOfMaterialItem
            to_bill_of_material_item  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILL_OF_MATERIAL_ITEM',
            "! to_BillOfMaterialUsage
            to_bill_of_material_usage TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILL_OF_MATERIAL_USAGE',
          END OF navigation,
        END OF a_bill_of_material_type,
        "! <p class="shorttext synchronized">Internal names for A_BillOfMaterialUsageType</p>
        "! See also structure type {@link ..tys_a_bill_of_material_usage_2}
        BEGIN OF a_bill_of_material_usage_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BillOfMaterialUsageText
            to_bill_of_material_usage TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BILL_OF_MATERIAL_USAGE',
          END OF navigation,
        END OF a_bill_of_material_usage_2,
        "! <p class="shorttext synchronized">Internal names for A_BillOfMaterialUsageTextType</p>
        "! See also structure type {@link ..tys_a_bill_of_material_usage_3}
        BEGIN OF a_bill_of_material_usage_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bill_of_material_usage_3,
        "! <p class="shorttext synchronized">Internal names for A_BOMItemCategoryTextType</p>
        "! See also structure type {@link ..tys_a_bomitem_category_text_ty}
        BEGIN OF a_bomitem_category_text_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_bomitem_category_text_ty,
        "! <p class="shorttext synchronized">Internal names for A_BOMItemCategoryType</p>
        "! See also structure type {@link ..tys_a_bomitem_category_type}
        BEGIN OF a_bomitem_category_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BOMItemCategoryText
            to_bomitem_category_text TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BOMITEM_CATEGORY_TEXT',
          END OF navigation,
        END OF a_bomitem_category_type,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define DBomheaderforexplosionOut</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_dbomheaderforexplosion_out RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BillOfMaterialItemType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bill_of_material_item_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BillOfMaterialType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bill_of_material_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BillOfMaterialUsageType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bill_of_material_usage_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BillOfMaterialUsageTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bill_of_material_usage_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BOMItemCategoryTextType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bomitem_category_text_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_BOMItemCategoryType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_bomitem_category_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ExplodeBOM</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_explode_bom RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ReleaseVersionBOM</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_release_version_bom RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS Z_S4_BP IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_BILL_OF_MATERIAL_SRV' ) ##NO_TEXT.

    def_dbomheaderforexplosion_out( ).
    def_a_bill_of_material_item_ty( ).
    def_a_bill_of_material_type( ).
    def_a_bill_of_material_usage_2( ).
    def_a_bill_of_material_usage_3( ).
    def_a_bomitem_category_text_ty( ).
    def_a_bomitem_category_type( ).
    def_explode_bom( ).
    def_release_version_bom( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BILL_OF_MATERIAL_HEADER_UU'
                            iv_element             = VALUE tys_types_for_prim_types-bill_of_material_header_uu( ) ).
    lo_primitive_type->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BILL_OF_MATERIAL_HEADER__2'
                            iv_element             = VALUE tys_types_for_prim_types-bill_of_material_header__2( ) ).
    lo_primitive_type->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BILL_OF_MATERIAL_ITEM_CATE'
                            iv_element             = VALUE tys_types_for_prim_types-bill_of_material_item_cate( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BILL_OF_MATERIAL_VARIANT'
                            iv_element             = VALUE tys_types_for_prim_types-bill_of_material_variant( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_APPLICATION'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_application( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_ASSEMBLY'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_assembly( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_DATE'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_date( ) ).
    lo_primitive_type->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_type->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_IS_LIMITED'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_is_limited( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_IS_MULTILEVEL'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_is_multilevel( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMEXPLOSION_LEVEL'
                            iv_element             = VALUE tys_types_for_prim_types-bomexplosion_level( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOMITM_QTY_IS_SCRAP_RELEVA'
                            iv_element             = VALUE tys_types_for_prim_types-bomitm_qty_is_scrap_releva( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'BOM_VERSN'
                            iv_element             = VALUE tys_types_for_prim_types-bom_versn( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ENGINEERING_CHANGE_DOCUMEN'
                            iv_element             = VALUE tys_types_for_prim_types-engineering_change_documen( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MATERIAL'
                            iv_element             = VALUE tys_types_for_prim_types-material( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'MATERIAL_PROVISION_FLTR_TY'
                            iv_element             = VALUE tys_types_for_prim_types-material_provision_fltr_ty( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'PLANT'
                            iv_element             = VALUE tys_types_for_prim_types-plant( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'REQUIRED_QUANTITY'
                            iv_element             = VALUE tys_types_for_prim_types-required_quantity( ) ).
    lo_primitive_type->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_type->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_type->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SPARE_PART_FLTR_TYPE'
                            iv_element             = VALUE tys_types_for_prim_types-spare_part_fltr_type( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STLAL'
                            iv_element             = VALUE tys_types_for_prim_types-stlal( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STLNR'
                            iv_element             = VALUE tys_types_for_prim_types-stlnr( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'STLTY'
                            iv_element             = VALUE tys_types_for_prim_types-stlty( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VERSNLASTIND'
                            iv_element             = VALUE tys_types_for_prim_types-versnlastind( ) ).
    lo_primitive_type->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'VERSNST'
                            iv_element             = VALUE tys_types_for_prim_types-versnst( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_a_bill_of_material_item_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BILL_OF_MATERIAL_ITEM_TY'
                                    is_structure              = VALUE tys_a_bill_of_material_item_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BillOfMaterialItemType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BILL_OF_MATERIAL_ITEM' ).
    lo_entity_set->set_edm_name( 'A_BillOfMaterialItem' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_UUID' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VERSION' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_NODE' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemNodeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_INTERNAL_CHANGE_CO' ).
    lo_primitive_property->set_edm_name( 'BOMItemInternalChangeCount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGINEERING_CHANGE_DOC_FOR' ).
    lo_primitive_property->set_edm_name( 'EngineeringChangeDocForEdit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGINEERING_CHANGE_DOCUMEN' ).
    lo_primitive_property->set_edm_name( 'EngineeringChangeDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHG_TO_ENGINEERING_CHG_DOC' ).
    lo_primitive_property->set_edm_name( 'ChgToEngineeringChgDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INHERITED_NODE_NUMBER_FOR' ).
    lo_primitive_property->set_edm_name( 'InheritedNodeNumberForBOMItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_RECORD_CREATION_DA' ).
    lo_primitive_property->set_edm_name( 'BOMItemRecordCreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'BOMItemCreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'BOMItemLastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_LAST_CHANGED_BY_US' ).
    lo_primitive_property->set_edm_name( 'BOMItemLastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialComponent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_NUMB' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_UNIT' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_QUAN' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_ASSEMBLY' ).
    lo_primitive_property->set_edm_name( 'IsAssembly' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SUB_ITEM' ).
    lo_primitive_property->set_edm_name( 'IsSubItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_SORTER' ).
    lo_primitive_property->set_edm_name( 'BOMItemSorter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_COMPONENT_PRICE' ).
    lo_primitive_property->set_edm_name( 'MaterialComponentPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IDENTIFIER_BOMITEM' ).
    lo_primitive_property->set_edm_name( 'IdentifierBOMItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_PRICE_UNIT_QTY' ).
    lo_primitive_property->set_edm_name( 'MaterialPriceUnitQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPONENT_SCRAP_IN_PERCENT' ).
    lo_primitive_property->set_edm_name( 'ComponentScrapInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPERATION_SCRAP_IN_PERCENT' ).
    lo_primitive_property->set_edm_name( 'OperationScrapInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NET_SCRAP' ).
    lo_primitive_property->set_edm_name( 'IsNetScrap' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NUMBER_OF_VARIABLE_SIZE_IT' ).
    lo_primitive_property->set_edm_name( 'NumberOfVariableSizeItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_VARIABLE_SIZE_ITE' ).
    lo_primitive_property->set_edm_name( 'QuantityVariableSizeItem' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORMULA_KEY' ).
    lo_primitive_property->set_edm_name( 'FormulaKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPONENT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'ComponentDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'BOMItemDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_TEXT_2' ).
    lo_primitive_property->set_edm_name( 'BOMItemText2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'MaterialGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'DocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_VERSION' ).
    lo_primitive_property->set_edm_name( 'DocumentVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_PART' ).
    lo_primitive_property->set_edm_name( 'DocumentPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ClassNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RESULTING_ITEM_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ResultingItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPENDENCY_OBJECT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DependencyObjectNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CLASSIFICATION_RELEVANT' ).
    lo_primitive_property->set_edm_name( 'IsClassificationRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BULK_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'IsBulkMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_IS_SPARE_PART' ).
    lo_primitive_property->set_edm_name( 'BOMItemIsSparePart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_IS_SALES_RELEVANT' ).
    lo_primitive_property->set_edm_name( 'BOMItemIsSalesRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PRODUCTION_RELEVANT' ).
    lo_primitive_property->set_edm_name( 'IsProductionRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_IS_PLANT_MAINT_REL' ).
    lo_primitive_property->set_edm_name( 'BOMItemIsPlantMaintRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMITEM_IS_COSTING_RELEVAN' ).
    lo_primitive_property->set_edm_name( 'BOMItemIsCostingRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_ENGINEERING_RELEVANT' ).
    lo_primitive_property->set_edm_name( 'IsEngineeringRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SPECIAL_PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'SpecialProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BOMRECURSIVE_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'IsBOMRecursiveAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPERATION_LEAD_TIME_OFFSET' ).
    lo_primitive_property->set_edm_name( 'OperationLeadTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OPS_LEAD_TIME_OFFSET_UNIT' ).
    lo_primitive_property->set_edm_name( 'OpsLeadTimeOffsetUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MATERIAL_PROVISION' ).
    lo_primitive_property->set_edm_name( 'IsMaterialProvision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMIS_RECURSIVE' ).
    lo_primitive_property->set_edm_name( 'BOMIsRecursive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_IS_CREATED_BY_CAD' ).
    lo_primitive_property->set_edm_name( 'DocumentIsCreatedByCAD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTR_KEY_COMP_CONSUMPTION' ).
    lo_primitive_property->set_edm_name( 'DistrKeyCompConsumption' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_DURATION_IN_DAYS' ).
    lo_primitive_property->set_edm_name( 'DeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREDITOR' ).
    lo_primitive_property->set_edm_name( 'Creditor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'CostElement' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_1' ).
    lo_primitive_property->set_edm_name( 'Size1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_2' ).
    lo_primitive_property->set_edm_name( 'Size2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_3' ).
    lo_primitive_property->set_edm_name( 'Size3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_OF_MEASURE_FOR_SIZE_1' ).
    lo_primitive_property->set_edm_name( 'UnitOfMeasureForSize1To3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ORGANIZATION' ).
    lo_primitive_property->set_edm_name( 'PurchasingOrganization' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIRED_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'RequiredComponent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MULTIPLE_SELECTION_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'MultipleSelectionAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_ORDER_ISSUE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'ProdOrderIssueLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_IS_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'MaterialIsCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPLOSION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ExplosionType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_ITEM_GROUP' ).
    lo_primitive_property->set_edm_name( 'AlternativeItemGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOLLOW_UP_GROUP' ).
    lo_primitive_property->set_edm_name( 'FollowUpGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCONTINUATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'DiscontinuationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CONFIGURABLE_BOM' ).
    lo_primitive_property->set_edm_name( 'IsConfigurableBOM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_POINT' ).
    lo_primitive_property->set_edm_name( 'ReferencePoint' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEAD_TIME_OFFSET' ).
    lo_primitive_property->set_edm_name( 'LeadTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_SUPPLY_AREA' ).
    lo_primitive_property->set_edm_name( 'ProductionSupplyArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DELETED' ).
    lo_primitive_property->set_edm_name( 'IsDeleted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_ALE' ).
    lo_primitive_property->set_edm_name( 'IsALE' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_HEADER_UU' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialHeaderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILL_OF_MATERIAL' ).
    lo_navigation_property->set_edm_name( 'to_BillOfMaterial' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BILL_OF_MATERIAL_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BOMITEM_CATEGORY' ).
    lo_navigation_property->set_edm_name( 'to_BOMItemCategory' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BOMITEM_CATEGORY_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_bill_of_material_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BILL_OF_MATERIAL_TYPE'
                                    is_structure              = VALUE tys_a_bill_of_material_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BillOfMaterialType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BILL_OF_MATERIAL' ).
    lo_entity_set->set_edm_name( 'A_BillOfMaterial' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_HEADER_UU' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialHeaderUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_U' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariantUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL' ).
    lo_primitive_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MULTIPLE_BOMALT' ).
    lo_primitive_property->set_edm_name( 'IsMultipleBOMAlt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMHEADER_INTERNAL_CHANGE' ).
    lo_primitive_property->set_edm_name( 'BOMHeaderInternalChangeCount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMUSAGE_PRIORITY' ).
    lo_primitive_property->set_edm_name( 'BOMUsagePriority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_AUTHSN_GR' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialAuthsnGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VERSION' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMVERSION_STATUS' ).
    lo_primitive_property->set_edm_name( 'BOMVersionStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_VERSION_BILL_OF_MATERIA' ).
    lo_primitive_property->set_edm_name( 'IsVersionBillOfMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_LATEST_BOMVERSION' ).
    lo_primitive_property->set_edm_name( 'IsLatestBOMVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CONFIGURED_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'IsConfiguredMaterial' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMTECHNICAL_TYPE' ).
    lo_primitive_property->set_edm_name( 'BOMTechnicalType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMGROUP' ).
    lo_primitive_property->set_edm_name( 'BOMGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMHEADER_TEXT' ).
    lo_primitive_property->set_edm_name( 'BOMHeaderText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMALTERNATIVE_TEXT' ).
    lo_primitive_property->set_edm_name( 'BOMAlternativeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_STATUS' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HEADER_VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'HeaderValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HEADER_VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'HeaderValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGINEERING_CHANGE_DOCUMEN' ).
    lo_primitive_property->set_edm_name( 'EngineeringChangeDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENGINEERING_CHANGE_DOC_FOR' ).
    lo_primitive_property->set_edm_name( 'EngineeringChangeDocForEdit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHG_TO_ENGINEERING_CHG_DOC' ).
    lo_primitive_property->set_edm_name( 'ChgToEngineeringChgDocument' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_ALE' ).
    lo_primitive_property->set_edm_name( 'IsALE' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMHEADER_BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BOMHeaderBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMHEADER_QUANTITY_IN_BASE' ).
    lo_primitive_property->set_edm_name( 'BOMHeaderQuantityInBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECORD_CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'RecordCreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BOMIS_TO_BE_DELETED' ).
    lo_primitive_property->set_edm_name( 'BOMIsToBeDeleted' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_IS_CREATED_BY_CAD' ).
    lo_primitive_property->set_edm_name( 'DocumentIsCreatedByCAD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABORATORY_OR_DESIGN_OFFIC' ).
    lo_primitive_property->set_edm_name( 'LaboratoryOrDesignOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SELECTED_BILL_OF_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'SelectedBillOfMaterialVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILL_OF_MATERIAL_ITEM' ).
    lo_navigation_property->set_edm_name( 'to_BillOfMaterialItem' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BILL_OF_MATERIAL_ITEM_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILL_OF_MATERIAL_USAGE' ).
    lo_navigation_property->set_edm_name( 'to_BillOfMaterialUsage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BILL_OF_MATERIAL_USAGE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_bill_of_material_usage_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BILL_OF_MATERIAL_USAGE_2'
                                    is_structure              = VALUE tys_a_bill_of_material_usage_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BillOfMaterialUsageType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BILL_OF_MATERIAL_USAGE' ).
    lo_entity_set->set_edm_name( 'A_BillOfMaterialUsage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_U' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariantUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_2' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariantUsageDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BILL_OF_MATERIAL_USAGE' ).
    lo_navigation_property->set_edm_name( 'to_BillOfMaterialUsageText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BILL_OF_MATERIAL_USAGE_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_a_bill_of_material_usage_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BILL_OF_MATERIAL_USAGE_3'
                                    is_structure              = VALUE tys_a_bill_of_material_usage_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BillOfMaterialUsageTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BILL_OF_MATERIAL_USAGE_T' ).
    lo_entity_set->set_edm_name( 'A_BillOfMaterialUsageText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_U' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariantUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_2' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialVariantUsageDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bomitem_category_text_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BOMITEM_CATEGORY_TEXT_TY'
                                    is_structure              = VALUE tys_a_bomitem_category_text_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BOMItemCategoryTextType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BOMITEM_CATEGORY_TEXT' ).
    lo_entity_set->set_edm_name( 'A_BOMItemCategoryText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CA_2' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemCategoryDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_bomitem_category_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_BOMITEM_CATEGORY_TYPE'
                                    is_structure              = VALUE tys_a_bomitem_category_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_BOMItemCategoryType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_BOMITEM_CATEGORY' ).
    lo_entity_set->set_edm_name( 'A_BOMItemCategory' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_ITEM_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'FixedItemCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CA_2' ).
    lo_primitive_property->set_edm_name( 'BillOfMaterialItemCategoryDesc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BOMITEM_CATEGORY_TEXT' ).
    lo_navigation_property->set_edm_name( 'to_BOMItemCategoryText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_BOMITEM_CATEGORY_TEXT_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

  ENDMETHOD.


  METHOD def_dbomheaderforexplosion_out.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'DBOMHEADERFOREXPLOSION_OUT'
                                    is_structure              = VALUE tys_dbomheaderforexplosion_out( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'DBomheaderforexplosionOut' ) ##NO_TEXT.


    lo_primitive_property = lo_complex_type->get_primitive_property( 'ALTERNATIVE_ITEM' ).
    lo_primitive_property->set_edm_name( 'alternative_item' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ALT_ITEM_GROUP' ).
    lo_primitive_property->set_edm_name( 'alt_item_group' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ALT_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'alt_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ASSEMBLY_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'assembly_indicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ASSIGN_EFFECT_VALS' ).
    lo_primitive_property->set_edm_name( 'assign_effect_vals' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ASSY_SCRAP_ITM_MAT' ).
    lo_primitive_property->set_edm_name( 'assy_scrap_itm_mat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'AS_SELECTION_COND' ).
    lo_primitive_property->set_edm_name( 'as_selection_cond' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BASE_QTY_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'base_qty_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BASE_UNIT_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'base_unit_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BASE_UOM' ).
    lo_primitive_property->set_edm_name( 'base_uom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BATCH_ENTRY' ).
    lo_primitive_property->set_edm_name( 'batch_entry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BATCH_MGMT' ).
    lo_primitive_property->set_edm_name( 'batch_mgmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'bill_of_material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_BASE_QUAN' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_base_quant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_component' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_COMP_QUAN' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_comp_quant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_item_category' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_NUMB' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_item_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_QUAN' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_item_quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ITEM_UNIT' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_item_unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ROOT' ).
    lo_primitive_property->set_edm_name( 'Bill_Of_Material_Root' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_ROOT_VARI' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_root_variant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_variant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BILL_OF_MATERIAL_VARIANT_U' ).
    lo_primitive_property->set_edm_name( 'bill_of_material_variant_usage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BOM_CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'bom_change_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'BULK_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'bulk_material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_ALTERNATIVE_TEXT' ).
    lo_primitive_property->set_edm_name( 'b_o_m_alternative_text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_ALT_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'b_o_m_alt_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'b_o_m_category' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_CAT_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'b_o_m_cat_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_COMPONENT_DESCRIPTIO' ).
    lo_primitive_property->set_edm_name( 'b_o_m_component_description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_EXPLOSION_LEVEL' ).
    lo_primitive_property->set_edm_name( 'b_o_m_explosion_level' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_HDR_MATL_HIER_NODE' ).
    lo_primitive_property->set_edm_name( 'b_o_m_hdr_matl_hier_node' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_HDR_ROOT_MATL_HIER_N' ).
    lo_primitive_property->set_edm_name( 'B_O_M_Hdr_Root_Matl_Hier_Node' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_HEADER_BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'b_o_m_header_base_unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_HEADER_QUANTITY_PRIM' ).
    lo_primitive_property->set_edm_name( 'b_o_m_header_quantity_primary' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_ITEM_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'b_o_m_item_description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_ITEM_IS_DISCONTINUED' ).
    lo_primitive_property->set_edm_name( 'b_o_m_item_is_discontinued' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_NO_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'b_o_m_no_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_USAGE_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'b_o_m_usage_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_VERSION' ).
    lo_primitive_property->set_edm_name( 'b_o_m_version' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_VERSION_STATUS' ).
    lo_primitive_property->set_edm_name( 'b_o_m_version_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'B_O_M_VERS_STATUS_DESCRIPT' ).
    lo_primitive_property->set_edm_name( 'b_o_m_vers_status_description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'change_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CHG_TO_ENG_CHG_NUMBER' ).
    lo_primitive_property->set_edm_name( 'chg_to_eng_chg_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CLASS' ).
    lo_primitive_property->set_edm_name( 'class' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'classification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'class_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COMMODITY_CODE' ).
    lo_primitive_property->set_edm_name( 'commodity_code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 17 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COMP_MAINT_STATUS' ).
    lo_primitive_property->set_edm_name( 'comp_maint_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COMP_SCRAP_ITM' ).
    lo_primitive_property->set_edm_name( 'comp_scrap_itm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COMP_SCRAP_ITM_MAT' ).
    lo_primitive_property->set_edm_name( 'comp_scrap_itm_mat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONFIG_MAT_VAR' ).
    lo_primitive_property->set_edm_name( 'config_mat_var' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONFIG_MULTI_LEVEL' ).
    lo_primitive_property->set_edm_name( 'config_multi_level' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CONF_BOM_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'conf_bom_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COST_ELEMENT' ).
    lo_primitive_property->set_edm_name( 'cost_element' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'COUNTER' ).
    lo_primitive_property->set_edm_name( 'counter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'co_product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'created_by_user' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'CUSTOMS_PREFERENCE' ).
    lo_primitive_property->set_edm_name( 'customs_preference' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DAT_HIST_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'dat_hist_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DELETION_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'deletion_indicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DELIVERY_TIME_IN_DAYS' ).
    lo_primitive_property->set_edm_name( 'delivery_time_in_days' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DEL_IND_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'del_Ind_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DENOMINATOR' ).
    lo_primitive_property->set_edm_name( 'denominator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DISCONT_GROUP' ).
    lo_primitive_property->set_edm_name( 'discont_group' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DISTRIBUTION_KEY' ).
    lo_primitive_property->set_edm_name( 'distribution_key' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC' ).
    lo_primitive_property->set_edm_name( 'doc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOCUMENT_PART' ).
    lo_primitive_property->set_edm_name( 'document_part' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'document_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOCUMENT_VERSION' ).
    lo_primitive_property->set_edm_name( 'document_version' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC_NUMBER' ).
    lo_primitive_property->set_edm_name( 'doc_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC_REQD' ).
    lo_primitive_property->set_edm_name( 'doc_reqd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC_STATUS' ).
    lo_primitive_property->set_edm_name( 'doc_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC_TYPE' ).
    lo_primitive_property->set_edm_name( 'doc_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'DOC_VERSION' ).
    lo_primitive_property->set_edm_name( 'doc_version' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'EFFECTIVE_OUT_DATE' ).
    lo_primitive_property->set_edm_name( 'effective_out_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ENGINEERING_DESIGN' ).
    lo_primitive_property->set_edm_name( 'engineering_design' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'EXCEPTION_BOM' ).
    lo_primitive_property->set_edm_name( 'exception_bom' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'EXPLOSION_TYPE' ).
    lo_primitive_property->set_edm_name( 'explosion_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FIXED_PRICE_CO_PROD' ).
    lo_primitive_property->set_edm_name( 'fixed_price_co_prod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FIXED_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'fixed_quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FOLLOW_UP_GRP' ).
    lo_primitive_property->set_edm_name( 'follow_up_grp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FOLLOW_UP_ITEM' ).
    lo_primitive_property->set_edm_name( 'follow_up_item' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FOLLOW_UP_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'follow_up_product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'FORMULA_KEY' ).
    lo_primitive_property->set_edm_name( 'formula_key' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'GOODS_RECEIPT_DURATION_IN' ).
    lo_primitive_property->set_edm_name( 'goods_receipt_duration_in_days' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'GOODS_RECIPIENT' ).
    lo_primitive_property->set_edm_name( 'goods_recipient' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'HEADER_RECORD_ID' ).
    lo_primitive_property->set_edm_name( 'header_record_id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'HEADER_VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'header_validity_end_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'HEADER_VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'header_validity_start_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'HL_CONFIGURATION' ).
    lo_primitive_property->set_edm_name( 'hl_configuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'INDIVIDUAL_COLL' ).
    lo_primitive_property->set_edm_name( 'individual_coll' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'INTERNAL_OBJ_NO' ).
    lo_primitive_property->set_edm_name( 'internal_obj_no' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'INTRA_MATERIAL' ).
    lo_primitive_property->set_edm_name( 'intra_material' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ISSUING_PLANT' ).
    lo_primitive_property->set_edm_name( 'issuing_plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_B_O_M_ITEM_SPARE_PART' ).
    lo_primitive_property->set_edm_name( 'is_b_o_m_item_spare_part' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_C_A_D' ).
    lo_primitive_property->set_edm_name( 'is_c_a_d' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_MATERIAL_PROVISION' ).
    lo_primitive_property->set_edm_name( 'is_material_provision' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_PHANTOM_ITEM' ).
    lo_primitive_property->set_edm_name( 'is_phantom_item' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'IS_SOFTWARE_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'is_software_component' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ITEM_DESCRIPTION_LINE_2' ).
    lo_primitive_property->set_edm_name( 'item_description_line_2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ITEM_IDENTIFICATION' ).
    lo_primitive_property->set_edm_name( 'item_identification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ITEM_INDEX' ).
    lo_primitive_property->set_edm_name( 'item_index' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ITEM_NODE' ).
    lo_primitive_property->set_edm_name( 'item_node' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ITEM_SIGN' ).
    lo_primitive_property->set_edm_name( 'item_sign' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'last_changed_by_user' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'last_change_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LEAD_TIME_OFFSET' ).
    lo_primitive_property->set_edm_name( 'lead_time_offset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONG_TEXT_LANG' ).
    lo_primitive_property->set_edm_name( 'long_text_lang' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LOW_LEVEL_CODE' ).
    lo_primitive_property->set_edm_name( 'low_level_code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MAINTENANCE_STATUS' ).
    lo_primitive_property->set_edm_name( 'maintenance_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATERIAL_COMPONENT_PRICE' ).
    lo_primitive_property->set_edm_name( 'material_component_price' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATERIAL_GROUP' ).
    lo_primitive_property->set_edm_name( 'material_group' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATERIAL_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'material_is_configurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATERIAL_NAME' ).
    lo_primitive_property->set_edm_name( 'Material_Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MATERIAL_TYPE' ).
    lo_primitive_property->set_edm_name( 'material_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MAT_PURITY_IN_PERC' ).
    lo_primitive_property->set_edm_name( 'mat_purity_in_perc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MOVING_PRICE' ).
    lo_primitive_property->set_edm_name( 'moving_price' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MULTIPLE_SEL' ).
    lo_primitive_property->set_edm_name( 'multiple_sel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'M_R_P_TYPE' ).
    lo_primitive_property->set_edm_name( 'm_r_p_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NET_SCRAP_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'net_scrap_indicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NO_CU_INSTANCES' ).
    lo_primitive_property->set_edm_name( 'no_cu_instances' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NO_OF_SHEETS' ).
    lo_primitive_property->set_edm_name( 'no_of_sheets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NO_VAR_SIZE_ITEMS' ).
    lo_primitive_property->set_edm_name( 'no_var_size_items' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERATOR' ).
    lo_primitive_property->set_edm_name( 'numerator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OBJECT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'object_description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'object_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OBJ_DEP_ASSGT_NO' ).
    lo_primitive_property->set_edm_name( 'obj_dep_assgt_no' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OPERATION_SCRAP_PERC' ).
    lo_primitive_property->set_edm_name( 'operation_scrap_perc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OPER_LTO_UNIT' ).
    lo_primitive_property->set_edm_name( 'oper_lto_unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'OPER_LT_OFFSET' ).
    lo_primitive_property->set_edm_name( 'oper_lt_offset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ORG_AREA' ).
    lo_primitive_property->set_edm_name( 'org_area' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PAGE_FORMAT' ).
    lo_primitive_property->set_edm_name( 'page_format' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PAGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'page_number' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PATH' ).
    lo_primitive_property->set_edm_name( 'path' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PATH_PREDECESSOR' ).
    lo_primitive_property->set_edm_name( 'path_predecessor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PLANT_NAME' ).
    lo_primitive_property->set_edm_name( 'plantName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 30 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PLANT_MAINTENANCE' ).
    lo_primitive_property->set_edm_name( 'plant_maintenance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PLANT_SP_MATL_STATUS' ).
    lo_primitive_property->set_edm_name( 'plant_sp_matl_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PLT_SP_STATUS_VALID_FROM' ).
    lo_primitive_property->set_edm_name( 'plt_sp_status_valid_from' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRICE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'price_control' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRICE_UNIT' ).
    lo_primitive_property->set_edm_name( 'price_unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRIORITY' ).
    lo_primitive_property->set_edm_name( 'priority' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PROCURED_EXTERNALLY' ).
    lo_primitive_property->set_edm_name( 'procured_externally' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRODN_SUPPLY_AREA' ).
    lo_primitive_property->set_edm_name( 'prodn_supply_area' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRODUCTION_RELEVANT' ).
    lo_primitive_property->set_edm_name( 'production_relevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PRODUCTION_VERSION' ).
    lo_primitive_property->set_edm_name( 'production_version' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PROD_ORDER_ISSUE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'prod_order_issue_location' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'profit_center' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'purchasing_group' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'PURCHASING_ORGANISATION' ).
    lo_primitive_property->set_edm_name( 'purchasing_organisation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'QTY_VAR_SIZE_ITEM' ).
    lo_primitive_property->set_edm_name( 'qty_var_size_item' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'RECORD_CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'record_creation_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'RECURISVE' ).
    lo_primitive_property->set_edm_name( 'recurisve' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'RECURS_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'recurs_allowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REFERENCE_POINT' ).
    lo_primitive_property->set_edm_name( 'reference_point' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'RELEVANCY_TO_COSTING' ).
    lo_primitive_property->set_edm_name( 'relevancy_to_costing' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'RELEVANT_TO_SALES' ).
    lo_primitive_property->set_edm_name( 'relevant_to_sales' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REQUIRED_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'required_component' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REQUIREMENT_SEGMENT' ).
    lo_primitive_property->set_edm_name( 'requirement_segment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'REVISION_LEVEL' ).
    lo_primitive_property->set_edm_name( 'revision_level' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SCRAP_QTY_BUN' ).
    lo_primitive_property->set_edm_name( 'scrap_qty_bun' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SERIAL_NO_PROFILE' ).
    lo_primitive_property->set_edm_name( 'serial_no_profile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SIZE_1' ).
    lo_primitive_property->set_edm_name( 'size1' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SIZE_2' ).
    lo_primitive_property->set_edm_name( 'size2' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SIZE_3' ).
    lo_primitive_property->set_edm_name( 'size3' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SIZE_UNIT' ).
    lo_primitive_property->set_edm_name( 'size_unit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SORT_STRING' ).
    lo_primitive_property->set_edm_name( 'sort_string' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SPECIAL_PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'special_procurement_type' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SPECIAL_PROC_TYP_ITM' ).
    lo_primitive_property->set_edm_name( 'special_proc_typ_itm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SPECIAL_PROC_TYP_MASTR' ).
    lo_primitive_property->set_edm_name( 'special_proc_typ_mastr' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SPEC_PROC_COSTING' ).
    lo_primitive_property->set_edm_name( 'spec_proc_costing' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STANDARD_PRICE' ).
    lo_primitive_property->set_edm_name( 'standard_price' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STATUS_TEXT' ).
    lo_primitive_property->set_edm_name( 'status_text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STOCK_SEGMENT' ).
    lo_primitive_property->set_edm_name( 'stock_segment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'storage_location' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'STRATEGY' ).
    lo_primitive_property->set_edm_name( 'strategy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SUB_ITEM_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'sub_item_indicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'SUPPLIER' ).
    lo_primitive_property->set_edm_name( 'supplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TABLE_ROW' ).
    lo_primitive_property->set_edm_name( 'table_row' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int32' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TECH_STATUS_FROM' ).
    lo_primitive_property->set_edm_name( 'tech_status_from' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TEST_HIST_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'test_hist_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TOTALS_RECORD_ID' ).
    lo_primitive_property->set_edm_name( 'totals_record_id' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'UNIT_OF_MEASURE' ).
    lo_primitive_property->set_edm_name( 'unit_of_measure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'UNLOADING_POINT' ).
    lo_primitive_property->set_edm_name( 'unloading_point' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'UOM_USAGE' ).
    lo_primitive_property->set_edm_name( 'uom_usage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'USAGE_PROBABILITY' ).
    lo_primitive_property->set_edm_name( 'usage_probability' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'validity_end_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'validity_start_date' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'VALUATION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'valuation_category' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'VARIANTS_NXT_LVL' ).
    lo_primitive_property->set_edm_name( 'variants_nxt_lvl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'X_PLANT_MATERIAL_STATUS' ).
    lo_primitive_property->set_edm_name( 'x_plant_material_status' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'X_PLT_STATUS_VALID_FROM' ).
    lo_primitive_property->set_edm_name( 'x_plt_status_valid_from' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_explode_bom.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'EXPLODE_BOM' ).
    lo_function->set_edm_name( 'ExplodeBOM' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'EXPLODE_BOM' ).
    lo_function_import->set_edm_name( 'ExplodeBOM' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'BILL_OF_MATERIAL_HEADER_UU' ).
    lo_parameter->set_edm_name( 'BillOfMaterialHeaderUUID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BILL_OF_MATERIAL_HEADER_UU' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MATERIAL' ).
    lo_parameter->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MATERIAL' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'PLANT' ).
    lo_parameter->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'PLANT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BILL_OF_MATERIAL_VARIANT' ).
    lo_parameter->set_edm_name( 'BillOfMaterialVariant' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BILL_OF_MATERIAL_VARIANT' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_APPLICATION' ).
    lo_parameter->set_edm_name( 'BOMExplosionApplication' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_APPLICATION' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'REQUIRED_QUANTITY' ).
    lo_parameter->set_edm_name( 'RequiredQuantity' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'REQUIRED_QUANTITY' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ENGINEERING_CHANGE_DOCUMEN' ).
    lo_parameter->set_edm_name( 'EngineeringChangeDocument' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ENGINEERING_CHANGE_DOCUMEN' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_IS_LIMITED' ).
    lo_parameter->set_edm_name( 'BOMExplosionIsLimited' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_IS_LIMITED' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMITM_QTY_IS_SCRAP_RELEVA' ).
    lo_parameter->set_edm_name( 'BOMItmQtyIsScrapRelevant' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMITM_QTY_IS_SCRAP_RELEVA' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_parameter->set_edm_name( 'BillOfMaterialItemCategory' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BILL_OF_MATERIAL_ITEM_CATE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_ASSEMBLY' ).
    lo_parameter->set_edm_name( 'BOMExplosionAssembly' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_ASSEMBLY' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_DATE' ).
    lo_parameter->set_edm_name( 'BOMExplosionDate' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_DATE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_LEVEL' ).
    lo_parameter->set_edm_name( 'BOMExplosionLevel' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_LEVEL' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOMEXPLOSION_IS_MULTILEVEL' ).
    lo_parameter->set_edm_name( 'BOMExplosionIsMultilevel' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOMEXPLOSION_IS_MULTILEVEL' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'MATERIAL_PROVISION_FLTR_TY' ).
    lo_parameter->set_edm_name( 'MaterialProvisionFltrType' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'MATERIAL_PROVISION_FLTR_TY' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SPARE_PART_FLTR_TYPE' ).
    lo_parameter->set_edm_name( 'SparePartFltrType' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SPARE_PART_FLTR_TYPE' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_complex_type( 'DBOMHEADERFOREXPLOSION_OUT' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_release_version_bom.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'RELEASE_VERSION_BOM' ).
    lo_function->set_edm_name( 'ReleaseVersionBOM' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_2( ) ).

    lo_function_import = lo_function->create_function_import( 'RELEASE_VERSION_BOM' ).
    lo_function_import->set_edm_name( 'ReleaseVersionBOM' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'BILL_OF_MATERIAL_HEADER_UU' ).
    lo_parameter->set_edm_name( 'BillOfMaterialHeaderUUID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BILL_OF_MATERIAL_HEADER__2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'STLNR' ).
    lo_parameter->set_edm_name( 'Stlnr' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STLNR' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'STLTY' ).
    lo_parameter->set_edm_name( 'Stlty' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STLTY' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'STLAL' ).
    lo_parameter->set_edm_name( 'Stlal' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'STLAL' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'BOM_VERSN' ).
    lo_parameter->set_edm_name( 'BomVersn' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'BOM_VERSN' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VERSNST' ).
    lo_parameter->set_edm_name( 'Versnst' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VERSNST' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'VERSNLASTIND' ).
    lo_parameter->set_edm_name( 'Versnlastind' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'VERSNLASTIND' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'A_BILL_OF_MATERIAL_TYPE' ).

  ENDMETHOD.
ENDCLASS.
