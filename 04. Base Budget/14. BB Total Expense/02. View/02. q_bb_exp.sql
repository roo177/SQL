-- View: public.q_bb_exp

-- DROP VIEW public.q_bb_exp;

CREATE OR REPLACE VIEW public.q_bb_exp
 AS
 SELECT q_bb_pl_exp.rep_month,
    q_bb_pl_exp.pc,
    q_bb_pl_exp.l_1,
    q_bb_pl_exp.l_2,
    q_bb_pl_exp.l_3,
    q_bb_pl_exp.l_4,
    q_bb_pl_exp.l_5,
    q_bb_pl_exp.l_6,
    q_bb_pl_exp.month,
    q_bb_pl_exp.total_expense,
    q_bb_pl_exp.curr,
    q_bb_pl_exp.key_r_pc_l6
   FROM q_bb_pl_exp
  WHERE q_bb_pl_exp.total_expense <> 0::numeric
UNION ALL
 SELECT t_bb_exp.rep_month,
    t_bb_exp.pc,
    t_bb_exp.l_1,
    t_bb_exp.l_2,
    t_bb_exp.l_3,
    t_bb_exp.l_4,
    t_bb_exp.l_5,
    t_bb_exp.l_6,
    t_bb_exp.exp_ac_mon AS month,
    t_bb_exp.exp_ac_exp AS total_expense,
    t_bb_exp.curr,
    t_bb_exp.key_r_pc_l6
   FROM t_bb_exp
  WHERE t_bb_exp.exp_ac_exp <> 0::numeric;

ALTER TABLE public.q_bb_exp
    OWNER TO ictasadmin;

