-- View: public.q_cb_up_pre_coeff_activem_indexes

-- DROP VIEW public.q_cb_up_pre_coeff_activem_indexes;

CREATE OR REPLACE VIEW public.q_cb_up_pre_coeff_activem_indexes
 AS
 SELECT q_cb_analysis_activem_with_prices.rep_month,
    q_cb_analysis_activem_with_prices.pc,
    q_cb_analysis_activem_with_prices.l_1,
    q_cb_analysis_activem_with_prices.l_2,
    q_cb_analysis_activem_with_prices.l_3,
    q_cb_analysis_activem_with_prices.l_4,
    q_cb_analysis_activem_with_prices.l_5,
    q_cb_analysis_activem_with_prices.l_6,
    q_cb_monthly_curr_rates_inc.rt_eur_try,
    q_cb_monthly_curr_rates_inc.rt_eur_usd,
    q_cb_monthly_curr_rates_inc.rt_usd_try,
    q_cb_monthly_curr_rates_inc.rt_usd_eur,
    q_cb_analysis_activem_with_prices.exp_cb_mon,
    q_cb_analysis_activem_with_prices.rs_l1,
    q_cb_analysis_activem_with_prices.rs_l2,
    q_cb_analysis_activem_with_prices.rs_l3,
    q_cb_analysis_activem_with_prices.rs_l4,
    t_cb_indexes.bb_ufe,
    t_cb_indexes.bb_tufe,
    t_cb_indexes.bb_inf_usd,
    t_cb_indexes.bb_inf_eur,
    t_cb_indexes.bb_metal,
    t_cb_indexes.bb_petrol,
    t_cb_indexes.bb_cement,
    t_cb_indexes.bb_electricity,
    q_cb_analysis_activem_with_prices.curr,
    q_cb_analysis_activem_with_prices.an_rs_quantity,
    q_cb_analysis_activem_with_prices.up_cost,
    q_cb_analysis_activem_with_prices.key_r4_simple,
    q_cb_analysis_activem_with_prices.key_r4,
    q_cb_analysis_activem_with_prices.key_r_pc_l6,
    q_cb_analysis_activem_with_prices.key_full
   FROM q_cb_analysis_activem_with_prices
     LEFT JOIN t_cb_indexes ON q_cb_analysis_activem_with_prices.rep_month::text = t_cb_indexes.rep_month::text AND q_cb_analysis_activem_with_prices.exp_cb_mon = t_cb_indexes.month
     LEFT JOIN q_cb_monthly_curr_rates_inc ON q_cb_analysis_activem_with_prices.rep_month::text = q_cb_monthly_curr_rates_inc.rep_month::text AND q_cb_analysis_activem_with_prices.pc::text = q_cb_monthly_curr_rates_inc.pc::text AND q_cb_analysis_activem_with_prices.exp_cb_mon = q_cb_monthly_curr_rates_inc.exp_cb_mon;

ALTER TABLE public.q_cb_up_pre_coeff_activem_indexes
    OWNER TO ictasadmin;

