-- View: public.q_cb_inc

-- DROP VIEW public.q_cb_inc;

CREATE OR REPLACE VIEW public.q_cb_inc
 AS
 SELECT q_cb_inc_calculation.rep_month,
    q_cb_inc_calculation.pc,
    q_cb_inc_calculation.l_1,
    q_cb_inc_calculation.l_2,
    q_cb_inc_calculation.l_3,
    q_cb_inc_calculation.l_4,
    q_cb_inc_calculation.l_5,
    q_cb_inc_calculation.l_6,
    q_cb_inc_calculation.inc_base_mon,
    sum(q_cb_inc_calculation.inc_total) AS inc_total,
    q_cb_inc_calculation.currency,
    q_cb_inc_calculation.key_r_pc_l6
   FROM q_cb_inc_calculation
  GROUP BY q_cb_inc_calculation.rep_month, q_cb_inc_calculation.pc, q_cb_inc_calculation.l_1, q_cb_inc_calculation.l_2, q_cb_inc_calculation.l_3, q_cb_inc_calculation.l_4, q_cb_inc_calculation.l_5, q_cb_inc_calculation.l_6, q_cb_inc_calculation.inc_base_mon, q_cb_inc_calculation.currency, q_cb_inc_calculation.key_r_pc_l6;

ALTER TABLE public.q_cb_inc
    OWNER TO ictasadmin;

