-- View: public.LastM_t_AC_BB_Exp

-- DROP VIEW public."LastM_t_AC_BB_Exp";

CREATE OR REPLACE VIEW public."LastM_t_AC_BB_Exp"
 AS
 SELECT t_AC_BB_Exp.rep_Month,
    t_AC_BB_Exp.PC,
    t_AC_BB_Exp.L_1,
    t_AC_BB_Exp.L_2,
    t_AC_BB_Exp.L_3,
    t_AC_BB_Exp.L_4,
    t_AC_BB_Exp.L_5,
    t_AC_BB_Exp.L_6,
    t_AC_BB_Exp.Exp_AC_Mon,
    t_AC_BB_Exp.Exp_AC_Exp,
    t_AC_BB_Exp.up_curr,
    t_AC_BB_Exp.key_r_pc_l6
   FROM t_AC_BB_Exp
  WHERE t_AC_BB_Exp.rep_Month::text = '2207'::text
  ORDER BY t_AC_BB_Exp.rep_Month, t_AC_BB_Exp.PC, t_AC_BB_Exp.L_1, t_AC_BB_Exp.L_2, t_AC_BB_Exp.L_3, t_AC_BB_Exp.L_4, t_AC_BB_Exp.L_5, t_AC_BB_Exp.L_6, t_AC_BB_Exp.Exp_AC_Mon, t_AC_BB_Exp.up_curr;

ALTER TABLE public."LastM_t_AC_BB_Exp"
    OWNER TO ictasadmin;

