-- View: public.q_cb_unit_price

-- DROP VIEW public.q_cb_unit_price;

CREATE OR REPLACE VIEW public.q_cb_unit_price
 AS
 SELECT q_cb_unit_price_pre.rep_month,
    q_cb_unit_price_pre.pc,
    q_cb_unit_price_pre.l_1,
    q_cb_unit_price_pre.l_2,
    q_cb_unit_price_pre.l_3,
    q_cb_unit_price_pre.l_4,
    q_cb_unit_price_pre.l_5,
    q_cb_unit_price_pre.l_6,
    q_cb_unit_price_pre.month,
    q_cb_unit_price_pre.curr,
    round(sum(q_cb_unit_price_pre.up_cost_total * q_cb_unit_price_pre.an_rs_quantity), 12) AS unit_price_planned_coeff,
    q_cb_unit_price_pre.key_r_pc_l6
   FROM q_cb_unit_price_pre
  GROUP BY q_cb_unit_price_pre.rep_month, q_cb_unit_price_pre.pc, q_cb_unit_price_pre.l_1, q_cb_unit_price_pre.l_2, q_cb_unit_price_pre.l_3, q_cb_unit_price_pre.l_4, q_cb_unit_price_pre.l_5, q_cb_unit_price_pre.l_6, q_cb_unit_price_pre.month, q_cb_unit_price_pre.curr, q_cb_unit_price_pre.key_r_pc_l6
  ORDER BY q_cb_unit_price_pre.rep_month, q_cb_unit_price_pre.pc, q_cb_unit_price_pre.l_1, q_cb_unit_price_pre.l_2, q_cb_unit_price_pre.l_3, q_cb_unit_price_pre.l_4, q_cb_unit_price_pre.l_5, q_cb_unit_price_pre.l_6, q_cb_unit_price_pre.month;

ALTER TABLE public.q_cb_unit_price
    OWNER TO ictasadmin;

