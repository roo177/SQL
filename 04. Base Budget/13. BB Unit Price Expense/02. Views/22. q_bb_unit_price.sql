-- View: public.q_bb_unit_price

-- DROP VIEW public.q_bb_unit_price;

CREATE OR REPLACE VIEW public.q_bb_unit_price
 AS
 SELECT q_bb_up_coeff.rep_month,
    q_bb_up_coeff.pc,
    q_bb_up_coeff.l_1,
    q_bb_up_coeff.l_2,
    q_bb_up_coeff.l_3,
    q_bb_up_coeff.l_4,
    q_bb_up_coeff.l_5,
    q_bb_up_coeff.l_6,
    q_bb_up_coeff.month,
    q_bb_up_coeff.curr,
    sum(q_bb_up_coeff.up_cost * q_bb_up_coeff.an_rs_quantity * q_bb_up_coeff.up_cost_coeff_all) AS unit_price_planned_coeff,
    q_bb_up_coeff.key_r_pc_l6
   FROM q_bb_up_coeff
  GROUP BY q_bb_up_coeff.rep_month, q_bb_up_coeff.pc, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.curr, q_bb_up_coeff.key_r_pc_l6, q_bb_up_coeff.month
  ORDER BY q_bb_up_coeff.rep_month, q_bb_up_coeff.pc, q_bb_up_coeff.l_1, q_bb_up_coeff.l_2, q_bb_up_coeff.l_3, q_bb_up_coeff.l_4, q_bb_up_coeff.l_5, q_bb_up_coeff.l_6, q_bb_up_coeff.month;

ALTER TABLE public.q_bb_unit_price
    OWNER TO ictasadmin;

