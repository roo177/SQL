-- View: public.q_cb_mod_pr_wbs

DROP VIEW public.q_cb_mod_pr_wbs;

CREATE OR REPLACE VIEW public.q_cb_mod_pr_wbs
 AS
 SELECT t_cb_mod_inc_st.user_id,
    t_cb_mod_inc_st.session_id,
    t_cb_mod_inc_st.rep_month,
    t_cb_mod_inc_st.pc,
    t_cb_mod_inc_st.l_1,
    t_cb_mod_inc_st.l_2,
    t_cb_mod_inc_st.l_3,
    t_cb_mod_inc_st.l_4,
    t_cb_mod_inc_st.l_5,
    t_cb_mod_inc_st.l_6,
    t_cb_mod_inc_st.curr,
    t_cb_mod_inc_st.inc_base_mon AS month,
    t_cb_mod_inc_st.key_r_pc_l6,
    t_cb_mod_inc_st.jkey
   FROM t_cb_mod_inc_st
  GROUP BY t_cb_mod_inc_st.user_id, t_cb_mod_inc_st.session_id, t_cb_mod_inc_st.rep_month, t_cb_mod_inc_st.pc, t_cb_mod_inc_st.l_1, t_cb_mod_inc_st.l_2, t_cb_mod_inc_st.l_3, t_cb_mod_inc_st.l_4, t_cb_mod_inc_st.l_5, t_cb_mod_inc_st.l_6, t_cb_mod_inc_st.curr, t_cb_mod_inc_st.inc_base_mon, t_cb_mod_inc_st.key_r_pc_l6, t_cb_mod_inc_st.jkey
 HAVING sum(t_cb_mod_inc_st.inc_total) <> 0::double precision
UNION
 SELECT t_cb_mod_exp_st.user_id,
    t_cb_mod_exp_st.session_id,
    t_cb_mod_exp_st.rep_month,
    t_cb_mod_exp_st.pc,
    t_cb_mod_exp_st.l_1,
    t_cb_mod_exp_st.l_2,
    t_cb_mod_exp_st.l_3,
    t_cb_mod_exp_st.l_4,
    t_cb_mod_exp_st.l_5,
    t_cb_mod_exp_st.l_6,
    t_cb_mod_exp_st.curr,
    t_cb_mod_exp_st.month,
    t_cb_mod_exp_st.key_r_pc_l6,
    t_cb_mod_exp_st.jkey
   FROM t_cb_mod_exp_st
  GROUP BY t_cb_mod_exp_st.user_id, t_cb_mod_exp_st.session_id, t_cb_mod_exp_st.rep_month, t_cb_mod_exp_st.pc, t_cb_mod_exp_st.l_1, t_cb_mod_exp_st.l_2, t_cb_mod_exp_st.l_3, t_cb_mod_exp_st.l_4, t_cb_mod_exp_st.l_5, t_cb_mod_exp_st.l_6, t_cb_mod_exp_st.curr, t_cb_mod_exp_st.month, t_cb_mod_exp_st.key_r_pc_l6, t_cb_mod_exp_st.jkey
 HAVING sum(t_cb_mod_exp_st.total_expense) <> 0::double precision;

ALTER TABLE public.q_cb_mod_pr_wbs
    OWNER TO ictasadmin;

