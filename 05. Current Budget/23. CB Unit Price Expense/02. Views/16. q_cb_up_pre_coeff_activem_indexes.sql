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
    q_cb_analysis_activem_with_prices.currency AS rs_currency,
    q_cb_analysis_activem_with_prices.an_rs_quantity,
    q_cb_analysis_activem_with_prices.up_cost,
    q_cb_analysis_activem_with_prices.key_r4_simple,
    q_cb_analysis_activem_with_prices.key_r4,
    q_cb_analysis_activem_with_prices.key_r_pc_l6,
    q_cb_analysis_activem_with_prices.key_full
   FROM q_cb_analysis_activem_with_prices
     LEFT JOIN t_cb_indexes ON q_cb_analysis_activem_with_prices.exp_cb_mon = t_cb_indexes.g_month AND q_cb_analysis_activem_with_prices.rep_month::text = t_cb_indexes.rep_month::text;

ALTER TABLE public.q_cb_up_pre_coeff_activem_indexes
    OWNER TO ictasadmin;

