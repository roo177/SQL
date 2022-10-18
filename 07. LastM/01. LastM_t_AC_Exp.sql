-- View: public.LastM_t_AC_Exp

-- DROP VIEW public."LastM_t_AC_Exp";

CREATE OR REPLACE VIEW public."LastM_t_AC_Exp"
 AS
 SELECT t_ac_exp.rep_month AS "rep_Month",
    t_ac_exp.pc AS "PC",
    t_ac_exp.l_1 AS "L_1",
    t_ac_exp.l_2 AS "L_2",
    t_ac_exp.l_3 AS "L_3",
    t_ac_exp.l_4 AS "L_4",
    t_ac_exp.l_5 AS "L_5",
    t_ac_exp.l_6 AS "L_6",
    t_ac_exp.exp_ac_mon AS "Exp_AC_Mon",
    t_ac_exp.exp_ac_exp AS "Exp_AC_Exp",
    t_ac_exp.up_curr
   FROM t_ac_exp
  WHERE t_ac_exp.rep_month::text = '2207'::text
  ORDER BY t_ac_exp.rep_month, t_ac_exp.pc, t_ac_exp.l_1, t_ac_exp.l_2, t_ac_exp.l_3, t_ac_exp.l_4, t_ac_exp.l_5, t_ac_exp.l_6, t_ac_exp.exp_ac_mon, t_ac_exp.up_curr;

ALTER TABLE public."LastM_t_AC_Exp"
    OWNER TO ictasadmin;

