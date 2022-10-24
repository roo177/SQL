-- View: public.q_bb_curr_escalation_rates

DROP VIEW public.q_bb_curr_escalation_rates;

CREATE OR REPLACE VIEW public.q_bb_curr_escalation_rates
 AS
 SELECT q_bb_active_months_res_qty.rep_month,
    q_bb_active_months_res_qty.pc,
    q_bb_active_months_res_qty.l_1,
    q_bb_active_months_res_qty.l_2,
    q_bb_active_months_res_qty.l_3,
    q_bb_active_months_res_qty.l_4,
    q_bb_active_months_res_qty.l_5,
    q_bb_active_months_res_qty.l_6,
    q_bb_active_months_res_qty.exp_base_mon AS month,
    q_bb_active_months_res_qty.rs_l1,
    q_bb_active_months_res_qty.rs_l2,
    q_bb_active_months_res_qty.rs_l3,
    q_bb_active_months_res_qty.rs_l4,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_usd_try * r4_code.w_inf_usd, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'EUR'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_usd_eur * r4_code.w_inf_usd, 6)
                ELSE 1::numeric
            END
        END AS k_usd,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_eur_try * r4_code.w_inf_eur, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'USD'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_bb_monthly_curr_rates_inc.rt_eur_usd * r4_code.w_inf_eur, 6)
                ELSE 1::numeric
            END
        END AS k_eur,
    r4_code.w_inf_usd,
    r4_code.w_inf_eur,
    r4_code.currency AS curr,
    q_bb_active_months_res_qty.key_r4_simple,
    q_bb_active_months_res_qty.key_full,
    q_bb_active_months_res_qty.key_r_pc_l6,
    q_bb_active_months_res_qty.key_r4,
    (((q_bb_active_months_res_qty.key_full::text || '.'::text) || r4_code.currency::text) || '.'::text) || q_bb_active_months_res_qty.exp_base_mon AS key_full_comb
   FROM q_bb_active_months_res_qty
     LEFT JOIN q_bb_monthly_curr_rates_inc ON q_bb_active_months_res_qty.exp_base_mon = q_bb_monthly_curr_rates_inc.exp_base_mon AND q_bb_active_months_res_qty.pc::text = q_bb_monthly_curr_rates_inc.pc::text AND q_bb_active_months_res_qty.rep_month::text = q_bb_monthly_curr_rates_inc.rep_month::text
     LEFT JOIN r4_code ON q_bb_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text;

ALTER TABLE public.q_bb_curr_escalation_rates
    OWNER TO ictasadmin;

