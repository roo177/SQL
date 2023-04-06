-- View: public.q_cb_mod_monthly_curr_rates_activem

DROP VIEW public.q_cb_mod_monthly_curr_rates_activem;

CREATE OR REPLACE VIEW public.q_cb_mod_monthly_curr_rates_activem
 AS
 SELECT q_cb_mod_active_months_res_qty.rep_month,
    t_cb_mod_mon_curr_rates.user_id,
    t_cb_mod_mon_curr_rates.session_id,
    q_cb_mod_active_months_res_qty.pc,
    q_cb_mod_active_months_res_qty.l_1,
    q_cb_mod_active_months_res_qty.l_2,
    q_cb_mod_active_months_res_qty.l_3,
    q_cb_mod_active_months_res_qty.l_4,
    q_cb_mod_active_months_res_qty.l_5,
    q_cb_mod_active_months_res_qty.l_6,
    q_cb_mod_active_months_res_qty.rs_l1,
    q_cb_mod_active_months_res_qty.rs_l2,
    q_cb_mod_active_months_res_qty.rs_l3,
    q_cb_mod_active_months_res_qty.rs_l4,
    q_cb_mod_active_months_res_qty.exp_cb_mon,
    t_cb_mod_mon_curr_rates.r_eur_try,
    t_cb_mod_mon_curr_rates.r_eur_usd,
    t_cb_mod_mon_curr_rates.r_usd_eur,
    t_cb_mod_mon_curr_rates.r_usd_try,
    r4_code.currency AS curr
   FROM q_cb_mod_active_months_res_qty
     LEFT JOIN t_cb_mod_mon_curr_rates ON q_cb_mod_active_months_res_qty.exp_cb_mon = t_cb_mod_mon_curr_rates.month AND q_cb_mod_active_months_res_qty.rep_month::text = t_cb_mod_mon_curr_rates.rep_month::text
     LEFT JOIN r4_code ON q_cb_mod_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_cb_mod_active_months_res_qty.rep_month, t_cb_mod_mon_curr_rates.user_id, t_cb_mod_mon_curr_rates.session_id, q_cb_mod_active_months_res_qty.pc, q_cb_mod_active_months_res_qty.l_1, q_cb_mod_active_months_res_qty.l_2, q_cb_mod_active_months_res_qty.l_3, q_cb_mod_active_months_res_qty.l_4, q_cb_mod_active_months_res_qty.l_5, q_cb_mod_active_months_res_qty.l_6, q_cb_mod_active_months_res_qty.rs_l1, q_cb_mod_active_months_res_qty.rs_l2, q_cb_mod_active_months_res_qty.rs_l3, q_cb_mod_active_months_res_qty.rs_l4, q_cb_mod_active_months_res_qty.exp_cb_mon, t_cb_mod_mon_curr_rates.r_eur_try, t_cb_mod_mon_curr_rates.r_eur_usd, t_cb_mod_mon_curr_rates.r_usd_eur, t_cb_mod_mon_curr_rates.r_usd_try, r4_code.currency;

ALTER TABLE public.q_cb_mod_monthly_curr_rates_activem
    OWNER TO ictasadmin;

