-- View: public.q_bb_pl_exp

-- DROP VIEW public.q_bb_pl_exp;

CREATE OR REPLACE VIEW public.q_bb_pl_exp
 AS
 SELECT t_bb_qty.rep_month,
    t_bb_qty.pc,
    t_bb_qty.l_1,
    t_bb_qty.l_2,
    t_bb_qty.l_3,
    t_bb_qty.l_4,
    t_bb_qty.l_5,
    t_bb_qty.l_6,
    q_bb_unit_price.month,
    sum(t_bb_qty.exp_base_qty * q_bb_unit_price.unit_price_planned_coeff) AS total_expense,
    q_bb_unit_price.curr,
    q_bb_unit_price.key_r_pc_l6
   FROM t_bb_qty
     RIGHT JOIN q_bb_unit_price ON t_bb_qty.pc::text = q_bb_unit_price.pc::text AND t_bb_qty.l_1::text = q_bb_unit_price.l_1::text AND t_bb_qty.l_2::text = q_bb_unit_price.l_2::text AND t_bb_qty.l_3::text = q_bb_unit_price.l_3::text AND t_bb_qty.l_4::text = q_bb_unit_price.l_4::text AND t_bb_qty.l_5::text = q_bb_unit_price.l_5::text AND t_bb_qty.l_6::text = q_bb_unit_price.l_6::text AND t_bb_qty.exp_base_mon = q_bb_unit_price.month AND t_bb_qty.rep_month::text = q_bb_unit_price.rep_month::text
  GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.l_1, t_bb_qty.l_2, t_bb_qty.l_3, t_bb_qty.l_4, t_bb_qty.l_5, t_bb_qty.l_6, q_bb_unit_price.month, q_bb_unit_price.curr, q_bb_unit_price.key_r_pc_l6;

ALTER TABLE public.q_bb_pl_exp
    OWNER TO ictasadmin;

