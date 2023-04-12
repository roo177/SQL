-- View: public.q_pl_exp

-- DROP VIEW public.q_pl_exp;

CREATE OR REPLACE VIEW public.q_pl_exp
 AS
 SELECT q_cb_unit_price.rep_month,
    q_cb_unit_price.pc,
    q_cb_unit_price.l_1,
    q_cb_unit_price.l_2,
    q_cb_unit_price.l_3,
    q_cb_unit_price.l_4,
    q_cb_unit_price.l_5,
    q_cb_unit_price.l_6,
    q_cb_unit_price.month,
    round(sum(t_cb_qty.exp_cb_qty * q_cb_unit_price.unit_price_planned_coeff), 12) AS total_expense,
    q_cb_unit_price.curr,
    t_cb_qty.key_r_pc_l6
   FROM q_cb_unit_price
     LEFT JOIN t_cb_qty ON q_cb_unit_price.key_r_pc_l6::text = t_cb_qty.key_r_pc_l6::text AND q_cb_unit_price.month = t_cb_qty.exp_cb_mon
  GROUP BY q_cb_unit_price.rep_month, q_cb_unit_price.pc, q_cb_unit_price.l_1, q_cb_unit_price.l_2, q_cb_unit_price.l_3, q_cb_unit_price.l_4, q_cb_unit_price.l_5, q_cb_unit_price.l_6, q_cb_unit_price.month, q_cb_unit_price.curr, t_cb_qty.key_r_pc_l6;

ALTER TABLE public.q_pl_exp
    OWNER TO ictasadmin;

