-- View: public.q_bb_res_up_market_coeff

-- DROP VIEW public.q_bb_res_up_market_coeff;

CREATE OR REPLACE VIEW public.q_bb_res_up_market_coeff
 AS
 SELECT q_bb_up_pre_coeff_activem_indexes.rep_month,
    q_bb_up_pre_coeff_activem_indexes.pc,
    q_bb_up_pre_coeff_activem_indexes.l_1,
    q_bb_up_pre_coeff_activem_indexes.l_2,
    q_bb_up_pre_coeff_activem_indexes.l_3,
    q_bb_up_pre_coeff_activem_indexes.l_4,
    q_bb_up_pre_coeff_activem_indexes.l_5,
    q_bb_up_pre_coeff_activem_indexes.l_6,
    q_bb_up_pre_coeff_activem_indexes.rs_l1,
    q_bb_up_pre_coeff_activem_indexes.rs_l2,
    q_bb_up_pre_coeff_activem_indexes.rs_l3,
    q_bb_up_pre_coeff_activem_indexes.rs_l4,
    (1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.r_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.r_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.r_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.r_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.r_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.r_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.r_electricity) AS up_cost_coeff,
    q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS month,
    q_bb_up_pre_coeff_activem_indexes.up_cost,
    q_bb_up_pre_coeff_activem_indexes.an_rs_quantity,
    r4_code.currency AS curr,
    q_bb_up_pre_coeff_activem_indexes.key_r4_simple,
    q_bb_up_pre_coeff_activem_indexes.key_r4,
    q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6,
    q_bb_up_pre_coeff_activem_indexes.key_full,
    (((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_base_mon AS key_full_comb
   FROM q_bb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_bb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
  GROUP BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, ((1::numeric + r4_code.w_ufe * q_bb_up_pre_coeff_activem_indexes.r_ufe) * (1::numeric + r4_code.w_tufe * q_bb_up_pre_coeff_activem_indexes.r_tufe) * (1::numeric + r4_code.w_inf_usd * q_bb_up_pre_coeff_activem_indexes.r_inf_usd) * (1::numeric + r4_code.w_inf_eur * q_bb_up_pre_coeff_activem_indexes.r_inf_eur) * (1::numeric + r4_code.w_metal * q_bb_up_pre_coeff_activem_indexes.r_metal) * (1::numeric + r4_code.w_petrol * q_bb_up_pre_coeff_activem_indexes.r_petrol) * (1::numeric + r4_code.w_cement * q_bb_up_pre_coeff_activem_indexes.r_cement) * (1::numeric + r4_code.w_electricity * q_bb_up_pre_coeff_activem_indexes.r_electricity)), q_bb_up_pre_coeff_activem_indexes.exp_base_mon, q_bb_up_pre_coeff_activem_indexes.up_cost, q_bb_up_pre_coeff_activem_indexes.an_rs_quantity, r4_code.currency, q_bb_up_pre_coeff_activem_indexes.key_r4_simple, q_bb_up_pre_coeff_activem_indexes.key_r4, q_bb_up_pre_coeff_activem_indexes.key_r_pc_l6, q_bb_up_pre_coeff_activem_indexes.key_full, ((((q_bb_up_pre_coeff_activem_indexes.key_full::text || '.'::text) || q_bb_up_pre_coeff_activem_indexes.curr::text) || '.'::text) || q_bb_up_pre_coeff_activem_indexes.exp_base_mon)
  ORDER BY q_bb_up_pre_coeff_activem_indexes.rep_month, q_bb_up_pre_coeff_activem_indexes.pc, q_bb_up_pre_coeff_activem_indexes.l_1, q_bb_up_pre_coeff_activem_indexes.l_2, q_bb_up_pre_coeff_activem_indexes.l_3, q_bb_up_pre_coeff_activem_indexes.l_4, q_bb_up_pre_coeff_activem_indexes.l_5, q_bb_up_pre_coeff_activem_indexes.l_6, q_bb_up_pre_coeff_activem_indexes.rs_l1, q_bb_up_pre_coeff_activem_indexes.rs_l2, q_bb_up_pre_coeff_activem_indexes.rs_l3, q_bb_up_pre_coeff_activem_indexes.rs_l4, q_bb_up_pre_coeff_activem_indexes.exp_base_mon;

ALTER TABLE public.q_bb_res_up_market_coeff
    OWNER TO ictasadmin;

