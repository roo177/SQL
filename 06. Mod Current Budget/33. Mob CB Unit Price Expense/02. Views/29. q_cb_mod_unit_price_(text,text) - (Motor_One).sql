-- DROP VIEW IF EXISTS q_cb_mod_unit_price cascade;

CREATE OR REPLACE VIEW q_cb_mod_unit_price AS
 SELECT q_cb_mod_up_coeff.rep_month,
 	q_cb_mod_up_coeff.user_id,
	q_cb_mod_up_coeff.session_id,
    q_cb_mod_up_coeff.pc,
    q_cb_mod_up_coeff.l_1,
    q_cb_mod_up_coeff.l_2,
    q_cb_mod_up_coeff.l_3,
    q_cb_mod_up_coeff.l_4,
    q_cb_mod_up_coeff.l_5,
    q_cb_mod_up_coeff.l_6,
    q_cb_mod_up_coeff.month,
    q_cb_mod_up_coeff.curr,
    sum(q_cb_mod_up_coeff.up_cost * q_cb_mod_up_coeff.an_rs_quantity * q_cb_mod_up_coeff.up_cost_coeff_all) AS unit_price_planned_coeff,
    q_cb_mod_up_coeff.key_r_pc_l6
   FROM q_cb_mod_up_coeff
  GROUP BY q_cb_mod_up_coeff.session_id,q_cb_mod_up_coeff.user_id,q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month, q_cb_mod_up_coeff.curr, q_cb_mod_up_coeff.key_r_pc_l6
  ORDER BY q_cb_mod_up_coeff.rep_month, q_cb_mod_up_coeff.pc, q_cb_mod_up_coeff.l_1, q_cb_mod_up_coeff.l_2, q_cb_mod_up_coeff.l_3, q_cb_mod_up_coeff.l_4, q_cb_mod_up_coeff.l_5, q_cb_mod_up_coeff.l_6, q_cb_mod_up_coeff.month;
