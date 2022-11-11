-- View: public.q_bb_up_pre_coeff_activem_indexes

-- DROP VIEW public.q_bb_up_pre_coeff_activem_indexes;

CREATE OR REPLACE VIEW public.q_bb_up_pre_coeff_activem_indexes
 AS
 SELECT q_bb_analysis_activem_with_prices.rep_month,
    q_bb_analysis_activem_with_prices.pc,
    q_bb_analysis_activem_with_prices.l_1,
    q_bb_analysis_activem_with_prices.l_2,
    q_bb_analysis_activem_with_prices.l_3,
    q_bb_analysis_activem_with_prices.l_4,
    q_bb_analysis_activem_with_prices.l_5,
    q_bb_analysis_activem_with_prices.l_6,
    q_bb_analysis_activem_with_prices.exp_base_mon,
    q_bb_analysis_activem_with_prices.rs_l1,
    q_bb_analysis_activem_with_prices.rs_l2,
    q_bb_analysis_activem_with_prices.rs_l3,
    q_bb_analysis_activem_with_prices.rs_l4,
    t_bb_indexes.r_ufe,
    t_bb_indexes.r_tufe,
    t_bb_indexes.r_inf_usd,
    t_bb_indexes.r_inf_eur,
    t_bb_indexes.r_metal,
    t_bb_indexes.r_petrol,
    t_bb_indexes.r_cement,
    t_bb_indexes.r_electricity,
    q_bb_analysis_activem_with_prices.curr AS curr,
    q_bb_analysis_activem_with_prices.an_rs_quantity,
    q_bb_analysis_activem_with_prices.up_cost,
    q_bb_analysis_activem_with_prices.key_r4_simple,
    q_bb_analysis_activem_with_prices.key_r4,
    q_bb_analysis_activem_with_prices.key_r_pc_l6,
    q_bb_analysis_activem_with_prices.key_full
   FROM q_bb_analysis_activem_with_prices
     LEFT JOIN t_bb_indexes ON q_bb_analysis_activem_with_prices.pc::text = t_bb_indexes.pc::text AND q_bb_analysis_activem_with_prices.rep_month::text = t_bb_indexes.rep_month::text AND q_bb_analysis_activem_with_prices.exp_base_mon = t_bb_indexes.month;

ALTER TABLE public.q_bb_up_pre_coeff_activem_indexes
    OWNER TO ictasadmin;
