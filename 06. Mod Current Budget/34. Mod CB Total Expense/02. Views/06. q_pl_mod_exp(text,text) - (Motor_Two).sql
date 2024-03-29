--DROP VIEW IF EXISTS q_pl_mod_exp CASCADE;

CREATE OR REPLACE VIEW q_pl_mod_exp
 AS
 SELECT q_cb_mod_unit_price.rep_month,
    q_cb_mod_unit_price.user_id,
    q_cb_mod_unit_price.session_id,   
    q_cb_mod_unit_price.pc,
    q_cb_mod_unit_price.l_1,
    q_cb_mod_unit_price.l_2,
    q_cb_mod_unit_price.l_3,
    q_cb_mod_unit_price.l_4,
    q_cb_mod_unit_price.l_5,
    q_cb_mod_unit_price.l_6,
    q_cb_mod_unit_price.month,
    sum(t_cb_qty.exp_cb_qty * q_cb_mod_unit_price.unit_price_planned_coeff) AS total_expense,
    q_cb_mod_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_mod_unit_price
     LEFT JOIN t_cb_qty ON q_cb_mod_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_mod_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY         q_cb_mod_unit_price.session_id,  q_cb_mod_unit_price.user_id,q_cb_mod_unit_price.rep_month, q_cb_mod_unit_price.pc, q_cb_mod_unit_price.l_1, q_cb_mod_unit_price.l_2, q_cb_mod_unit_price.l_3, q_cb_mod_unit_price.l_4, q_cb_mod_unit_price.l_5, q_cb_mod_unit_price.l_6, q_cb_mod_unit_price.month, q_cb_mod_unit_price.curr, t_cb_qty.key_r_pc_l6;

ALTER TABLE q_pl_mod_exp
    OWNER TO ictasadmin;