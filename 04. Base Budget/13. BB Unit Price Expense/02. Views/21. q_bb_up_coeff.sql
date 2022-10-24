-- View: public.q_bb_up_coeff

DROP VIEW public.q_bb_up_coeff;

CREATE OR REPLACE VIEW public.q_bb_up_coeff
 AS
 SELECT q_bb_res_up_market_coeff.rep_month,
    q_bb_res_up_market_coeff.pc,
    q_bb_res_up_market_coeff.l_1,
    q_bb_res_up_market_coeff.l_2,
    q_bb_res_up_market_coeff.l_3,
    q_bb_res_up_market_coeff.l_4,
    q_bb_res_up_market_coeff.l_5,
    q_bb_res_up_market_coeff.l_6,
    q_bb_res_up_market_coeff.rs_l1,
    q_bb_res_up_market_coeff.rs_l2,
    q_bb_res_up_market_coeff.rs_l3,
    q_bb_res_up_market_coeff.rs_l4,
    q_bb_res_up_market_coeff.month,
    q_bb_res_up_market_coeff.up_cost_coeff,
    q_bb_curr_escalation_rates.k_usd,
    q_bb_curr_escalation_rates.k_eur,
    round(q_bb_res_up_market_coeff.up_cost_coeff * q_bb_curr_escalation_rates.k_usd * q_bb_curr_escalation_rates.k_eur, 6) AS up_cost_coeff_all,
    q_bb_res_up_market_coeff.up_cost,
    q_bb_res_up_market_coeff.curr,
    q_bb_res_up_market_coeff.key_full,
    q_bb_res_up_market_coeff.an_rs_quantity,
    q_bb_res_up_market_coeff.key_r_pc_l6
   FROM q_bb_res_up_market_coeff
     LEFT JOIN q_bb_curr_escalation_rates ON q_bb_res_up_market_coeff.key_full_comb = q_bb_curr_escalation_rates.key_full_comb
  GROUP BY q_bb_res_up_market_coeff.rep_month, q_bb_res_up_market_coeff.pc, q_bb_res_up_market_coeff.l_1, q_bb_res_up_market_coeff.l_2, q_bb_res_up_market_coeff.l_3, q_bb_res_up_market_coeff.l_4, q_bb_res_up_market_coeff.l_5, q_bb_res_up_market_coeff.l_6, q_bb_res_up_market_coeff.rs_l1, q_bb_res_up_market_coeff.rs_l2, q_bb_res_up_market_coeff.rs_l3, q_bb_res_up_market_coeff.rs_l4, q_bb_res_up_market_coeff.month, q_bb_res_up_market_coeff.up_cost_coeff, q_bb_curr_escalation_rates.k_usd, q_bb_curr_escalation_rates.k_eur, (round(q_bb_res_up_market_coeff.up_cost_coeff * q_bb_curr_escalation_rates.k_usd * q_bb_curr_escalation_rates.k_eur, 6)), q_bb_res_up_market_coeff.up_cost, q_bb_res_up_market_coeff.curr, q_bb_res_up_market_coeff.key_full, q_bb_res_up_market_coeff.an_rs_quantity, q_bb_res_up_market_coeff.key_r_pc_l6;

ALTER TABLE public.q_bb_up_coeff
    OWNER TO ictasadmin;

