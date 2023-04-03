-- View: public.q_cb_mod_up_pre_coeff_activem_indexes

-- DROP VIEW public.q_cb_mod_up_pre_coeff_activem_indexes;

CREATE OR REPLACE VIEW public.q_cb_mod_up_pre_coeff_activem_indexes
 AS
 SELECT q_cb_mod_analysis_activem_with_prices.rep_month,
    q_cb_mod_indexes_and_curr.user_id,
    q_cb_mod_indexes_and_curr.session_id,
    q_cb_mod_analysis_activem_with_prices.pc,
    q_cb_mod_analysis_activem_with_prices.l_1,
    q_cb_mod_analysis_activem_with_prices.l_2,
    q_cb_mod_analysis_activem_with_prices.l_3,
    q_cb_mod_analysis_activem_with_prices.l_4,
    q_cb_mod_analysis_activem_with_prices.l_5,
    q_cb_mod_analysis_activem_with_prices.l_6,
    q_cb_mod_indexes_and_curr.rt_eur_try,
    q_cb_mod_indexes_and_curr.rt_eur_usd,
    q_cb_mod_indexes_and_curr.rt_usd_try,
    q_cb_mod_indexes_and_curr.rt_usd_eur,
    q_cb_mod_analysis_activem_with_prices.exp_cb_mon,
    q_cb_mod_analysis_activem_with_prices.rs_l1,
    q_cb_mod_analysis_activem_with_prices.rs_l2,
    q_cb_mod_analysis_activem_with_prices.rs_l3,
    q_cb_mod_analysis_activem_with_prices.rs_l4,
    q_cb_mod_indexes_and_curr.bb_ufe,
    q_cb_mod_indexes_and_curr.bb_tufe,
    q_cb_mod_indexes_and_curr.bb_inf_usd,
    q_cb_mod_indexes_and_curr.bb_inf_eur,
    q_cb_mod_indexes_and_curr.bb_metal,
    q_cb_mod_indexes_and_curr.bb_petrol,
    q_cb_mod_indexes_and_curr.bb_cement,
    q_cb_mod_indexes_and_curr.bb_electricity,
    q_cb_mod_analysis_activem_with_prices.currency AS curr,
    q_cb_mod_analysis_activem_with_prices.an_rs_quantity,
    q_cb_mod_analysis_activem_with_prices.up_cost,
    q_cb_mod_analysis_activem_with_prices.key_r4_simple,
    q_cb_mod_analysis_activem_with_prices.key_r4,
    q_cb_mod_analysis_activem_with_prices.key_r_pc_l6,
    q_cb_mod_analysis_activem_with_prices.key_full
   FROM q_cb_mod_analysis_activem_with_prices
     LEFT JOIN q_cb_mod_indexes_and_curr ON q_cb_mod_analysis_activem_with_prices.pc::text = q_cb_mod_indexes_and_curr.pc::text AND q_cb_mod_analysis_activem_with_prices.exp_cb_mon = q_cb_mod_indexes_and_curr.exp_cb_mon AND q_cb_mod_analysis_activem_with_prices.rep_month::text = q_cb_mod_indexes_and_curr.rep_month::text;

ALTER TABLE public.q_cb_mod_up_pre_coeff_activem_indexes
    OWNER TO ictasadmin;

