-- View: public.q_cb_exp

-- DROP VIEW public.q_cb_exp;

CREATE OR REPLACE VIEW public.q_cb_exp
 AS
 SELECT q_pl_exp.rep_month,
    q_pl_exp.pc,
    q_pl_exp.l_1,
    q_pl_exp.l_2,
    q_pl_exp.l_3,
    q_pl_exp.l_4,
    q_pl_exp.l_5,
    q_pl_exp.l_6,
    q_pl_exp.month,
    q_pl_exp.total_expense,
    q_pl_exp.curr,
    q_pl_exp.key_r_pc_l6
   FROM q_pl_exp
  WHERE q_pl_exp.total_expense <> 0::numeric
UNION ALL
 SELECT t_cb_exp.rep_month,
    t_cb_exp.pc,
    t_cb_exp.l_1,
    t_cb_exp.l_2,
    t_cb_exp.l_3,
    t_cb_exp.l_4,
    t_cb_exp.l_5,
    t_cb_exp.l_6,
    t_cb_exp.exp_ac_mon AS month,
    t_cb_exp.exp_ac_exp AS total_expense,
    t_cb_exp.curr,
    t_cb_exp.key_r_pc_l6
   FROM t_cb_exp
  WHERE t_cb_exp.exp_ac_exp <> 0::numeric;

ALTER TABLE public.q_cb_exp
    OWNER TO ictasadmin;

