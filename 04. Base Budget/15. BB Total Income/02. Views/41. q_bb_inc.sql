-- View: public.q_bb_inc

-- DROP VIEW public.q_bb_inc;

CREATE OR REPLACE VIEW public.q_bb_inc
 AS
 SELECT q_bb_inc_calculation.rep_month,
    q_bb_inc_calculation.pc,
    q_bb_inc_calculation.l_1,
    q_bb_inc_calculation.l_2,
    q_bb_inc_calculation.l_3,
    q_bb_inc_calculation.l_4,
    q_bb_inc_calculation.l_5,
    q_bb_inc_calculation.l_6,
    q_bb_inc_calculation.inc_base_mon,
    sum(q_bb_inc_calculation.inc_total) AS inc_total,
    q_bb_inc_calculation.curr,
    q_bb_inc_calculation.key_r_pc_l6
   FROM q_bb_inc_calculation
  GROUP BY q_bb_inc_calculation.rep_month, q_bb_inc_calculation.pc, q_bb_inc_calculation.l_1, q_bb_inc_calculation.l_2, q_bb_inc_calculation.l_3, q_bb_inc_calculation.l_4, q_bb_inc_calculation.l_5, q_bb_inc_calculation.l_6, q_bb_inc_calculation.inc_base_mon, q_bb_inc_calculation.curr, q_bb_inc_calculation.key_r_pc_l6;

ALTER TABLE public.q_bb_inc
    OWNER TO ictasadmin;

