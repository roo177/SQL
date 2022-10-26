-- View: q_cb_mod_up_coeff

-- DROP VIEW q_cb_mod_up_coeff;

CREATE TEMPORARY VIEW q_cb_mod_up_coeff
 AS
 SELECT q_cb_mod_res_up_market_coeff.rep_month,
    q_cb_mod_res_up_market_coeff.pc,
    q_cb_mod_res_up_market_coeff.l_1,
    q_cb_mod_res_up_market_coeff.l_2,
    q_cb_mod_res_up_market_coeff.l_3,
    q_cb_mod_res_up_market_coeff.l_4,
    q_cb_mod_res_up_market_coeff.l_5,
    q_cb_mod_res_up_market_coeff.l_6,
    q_cb_mod_res_up_market_coeff.rs_l1,
    q_cb_mod_res_up_market_coeff.rs_l2,
    q_cb_mod_res_up_market_coeff.rs_l3,
    q_cb_mod_res_up_market_coeff.rs_l4,
    q_cb_mod_res_up_market_coeff.month,
    q_cb_mod_res_up_market_coeff.up_cost_coeff,
    q_cb_mod_curr_escalation_rates.k_usd,
    q_cb_mod_curr_escalation_rates.k_eur,
    q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur AS up_cost_coeff_all,
    q_cb_mod_res_up_market_coeff.up_cost,
    q_cb_mod_res_up_market_coeff.curr,
    q_cb_mod_res_up_market_coeff.key_full,
    q_cb_mod_res_up_market_coeff.an_rs_quantity,
    q_cb_mod_res_up_market_coeff.key_r_pc_l6
   FROM q_cb_mod_res_up_market_coeff
     LEFT JOIN q_cb_mod_curr_escalation_rates ON q_cb_mod_res_up_market_coeff.key_full_comb = q_cb_mod_curr_escalation_rates.key_full_comb
  GROUP BY q_cb_mod_res_up_market_coeff.rep_month, q_cb_mod_res_up_market_coeff.pc, q_cb_mod_res_up_market_coeff.l_1, q_cb_mod_res_up_market_coeff.l_2, q_cb_mod_res_up_market_coeff.l_3, q_cb_mod_res_up_market_coeff.l_4, q_cb_mod_res_up_market_coeff.l_5, q_cb_mod_res_up_market_coeff.l_6, q_cb_mod_res_up_market_coeff.rs_l1, q_cb_mod_res_up_market_coeff.rs_l2, q_cb_mod_res_up_market_coeff.rs_l3, q_cb_mod_res_up_market_coeff.rs_l4, q_cb_mod_res_up_market_coeff.month, q_cb_mod_res_up_market_coeff.up_cost_coeff, q_cb_mod_curr_escalation_rates.k_usd, q_cb_mod_curr_escalation_rates.k_eur, (round(q_cb_mod_res_up_market_coeff.up_cost_coeff * q_cb_mod_curr_escalation_rates.k_usd * q_cb_mod_curr_escalation_rates.k_eur, 6)), q_cb_mod_res_up_market_coeff.up_cost, q_cb_mod_res_up_market_coeff.curr, q_cb_mod_res_up_market_coeff.key_full, q_cb_mod_res_up_market_coeff.an_rs_quantity, q_cb_mod_res_up_market_coeff.key_r_pc_l6;

ALTER TABLE q_cb_mod_up_coeff
    OWNER TO ictasadmin;

