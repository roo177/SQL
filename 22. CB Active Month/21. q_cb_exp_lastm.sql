-- View: public.q_cb_exp_lastm

-- DROP VIEW public.q_cb_exp_lastm;

CREATE OR REPLACE VIEW public.q_cb_exp_lastm
 AS
 SELECT t_ac_exp.rep_month,
    t_ac_exp.pc,
    t_ac_exp.l_1,
    t_ac_exp.l_2,
    t_ac_exp.l_3,
    t_ac_exp.l_4,
    t_ac_exp.l_5,
    t_ac_exp.l_6,
    max(t_ac_exp.exp_ac_mon) AS lastm
   FROM t_ac_exp
  GROUP BY t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6;

ALTER TABLE public.q_cb_exp_lastm
    OWNER TO ictasadmin;

