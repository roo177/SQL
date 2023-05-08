-- View: public.q_cb_mod_exp

DROP VIEW public.q_cb_mod_exp;

CREATE OR REPLACE VIEW public.q_cb_mod_exp
 AS
 SELECT q_pl_mod_exp.rep_month,
    q_pl_mod_exp.user_id,
    q_pl_mod_exp.session_id,
    q_pl_mod_exp.pc,
    q_pl_mod_exp.l_1,
    q_pl_mod_exp.l_2,
    q_pl_mod_exp.l_3,
    q_pl_mod_exp.l_4,
    q_pl_mod_exp.l_5,
    q_pl_mod_exp.l_6,
    q_pl_mod_exp.month,
    q_pl_mod_exp.total_expense,
    q_pl_mod_exp.curr,
    q_pl_mod_exp.key_r_pc_l6
   FROM q_pl_mod_exp
  WHERE q_pl_mod_exp.total_expense <> 0::numeric;

  ALTER TABLE public.q_cb_mod_exp
    OWNER TO ictasadmin;
