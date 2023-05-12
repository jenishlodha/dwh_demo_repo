CREATE OR REPLACE VIEW PHX_DMF_OWNER.F_INVOICE_DETAIL_IND_V AS
SELECT i.profit_center, i.basys_client_number, i.class_code,
          i.oracle_financial_in, i.production_code, i.revenue_basis,
          i.insurer_wim, i.insurer_name, i.insurer_group_wim,
          i.insurer_group_name, i.payto_nr, i.payto_nm,
          i.coverage_effective_dt, i.coverage_expiration_dt,i.invoice_nr,
          i.invoice_dt, i.entry_mode, i.DURATION, i.policy_nr,
          i.policy_sequence_nr, i.direct_bill_in, i.old_fcs_department_nr,
          i.old_fcs_department_nm, i.period, i.revenue, i.premium,
          i.installment_nr_tx, i.billing_type, i.billing_period_effective_dt,
          i.billing_period_expiry_dt, i.gl_period_year_nr,
          i.billing_plan_start_dt, i.transaction_currency, i.gross_revenue,
          i.shared_revenue, i.net_premium, i.transfer_in_office,
          i.transfer_out_office, i.transfer_in_amount, i.transfer_out_amount,
          i.reporting_country_group_nm, i.commission, i.fees,
          i.current_accrual, i.prior_accrual, i.client_service_revenue,
          i.non_billed_amount, i.inter_marsh_amount, i.deferred_amount,
          i.flow_thru_amount, i.billed_tax, i.billed_amount,
          i.unidentified_amount, i.item_type, i.epm_dept_key,
          c.company_number_tx, c.company_name, c.market_segment,
          c.client_status, c.business_entity_dnb_nr,
          c.bus_ent_hq_parent_dnb_nr, c.bus_ent_domestic_ulti_dnb_nr,
          c.bus_ent_global_ulti_dnb_nr, c.mcd_bus_ent_status_cd,
          c.bus_ent_subsidiary_cd, c.business_entity_nm,
          c.tradestyle_name_one_tx, c.bus_ent_hq_parent_nm,
          c.bus_ent_domestic_ulti_nm, c.bus_ent_global_ulti_nm,
          c.be_annual_gross_rev_usd_am, c.bus_ent_location_employee_ct,
          c.bus_ent_total_employee_ct, c.bus_ent_public_private_in,
          c.client_executive_party_id, c.client_executive_nm, c.ce_ps_id,
          c.global_cli_executive_party_id, c.global_cli_executive_nm,
          c.gce_ps_id, c.override_mip_desc, c.mip_desc, c.sic_code,
          c.sic_desc, c.override_sic_code, c.override_sic_desc,
          c.address_line_1_tx, c.address_line_2_tx, c.address_line_3_tx,
          c.city_tx, c.state_province_name_tx, c.postal_code_tx,
          c.country_code, e.fcs_department_nr, e.fcs_department_nm,
          e.mi_lookup_level1, e.mi_lookup_level2, e.mi_lookup_level3,
          e.mi_lookup_level4, e.mi_lookup_level5, e.mi_lookup_level6,
          e.mi_lookup_level7, e.mi_lookup_level8, e.mi_lookup_level9,
	    e.epm_g_level1, e.epm_g_level2, e.epm_g_level3, e.epm_g_level4, e.epm_g_level5,
          e.epm_g_level6, e.epm_g_level7, e.epm_g_level8, e.epm_g_level9, e.epm_g_level10,
		  e.epm_g_level11, e.epm_g_level12, e.epm_g_level13, e.epm_g_level14, e.epm_g_level15,
		  e.epm_g_level16, e.epm_g_level17, e.epm_g_level18, e.epm_g_level19, e.epm_g_level20,
		  e.epm_g_level21, e.epm_g_level22, e.epm_g_level23, e.epm_g_level24, e.epm_g_level25,
		  e.epm_g_level26, e.epm_g_level27, e.epm_g_level28, e.epm_g_level29, e.epm_g_level30,
          p.detail_class_nm, p.major_class_cd, p.major_class_nm,
          p.product_subgroup_cd, p.product_subgroup_nm, p.product_group_cd,
          p.product_group_nm, p.product_line_cd, p.product_line_nm,
          p.product_status_cd, TO_NUMBER (SUBSTR (period, 1, 4)) AS YEAR,
          TO_NUMBER (SUBSTR (period, 5, 2)) AS MONTH, c.ce_status,
          c.gce_status, c.segment_select_in, c.bca_company_nr,
          NVL (c.override_sic_code, c.sic_code) AS final_sic_code,
          NVL (c.override_sic_desc, c.sic_desc) AS final_sic_desc,
          NVL (c.override_mip_desc, c.mip_desc) AS final_mip_desc,
          bc.function_cd AS insurer_function_cd,
          bc.function_nm AS insurer_function_nm,
          bc2.function_cd AS payto_function_cd,
          bc2.function_nm AS payto_function_nm,
          
CASE
             WHEN e. mi_lookup_level6 = 'CONSULTING SOLUTIONS'
             THEN
                CASE
                WHEN length(trim(o.region_nm))=3
				THEN UPPER(o.region_nm)
                ELSE
                RTRIM (INITCAP (o.region_nm), ' US Zone')
                END
            ELSE
                e. mi_lookup_level4
          END AS epm_zone,

CASE 
             WHEN e.MI_LOOKUP_LEVEL6 = 'CONSULTING SOLUTIONS'
             THEN
                INITCAP (o.zone_nm)
			ELSE
                e.mi_lookup_level3
          END   AS epm_partnership,
         CASE
             WHEN e.mi_lookup_level6 = 'CONSULTING SOLUTIONS'
             THEN
                o.office_nm
             ELSE
                e.mi_lookup_level2
		  END AS epm_office,
          QSG_FLAG,
		  i.BILL_REQUEST_SOURCE_SYSTEM_NM,
		  i.BILL_REQ_NUMBER,
		  i.AP_SITE_CD,
          c.GBM_IN,
          i.RENEWED_FROM_FEE_POLICY_ID ,
          i.RENEWED_TO_FEE_POLICY_ID,
		  c.BUS_ENT_FORTUNE_RANK_TX, c.BE_ANNUAL_GROSS_REV_LOCAL_AM,
		  i.NET_COMM_REV_USD_AMT, i.GROSS_COMM_PREMIUM_USD_AMT,
		  i.NET_NON_COMM_REV_USD_AMT, i.GROSS_NON_COMM_PREMIUM_USD_AMT
     FROM phx_dmf_owner.f_invoice_inv i,
          phx_dmcd_owner.d_us_client_uclt c,
          phx_dmcd_owner.d_morh_epm e,
          phx_dmcd_owner.d_global_product_prod p,
          phx_dmcd_owner.d_basys_carrier_bcar bc,
          phx_dmcd_owner.d_basys_carrier_bcar bc2,
          phx_dmcd_owner.d_basys_office_bof o
    WHERE i.basys_client_number = c.basys_client_number(+)
      AND i.epm_dept_key = e.epm_dept_key(+)
      AND i.class_code = p.detail_class_cd(+)
      AND i.insurer_wim = bc.carrier_wim(+)
      AND i.payto_nr = bc2.carrier_wim(+)
      AND i.profit_center = o.office_nr(+)
      AND o.change_expiration_dt(+) = TO_DATE ('12/31/9999', 'MM/DD/YYYY')
      AND p.country(+) = 'US'