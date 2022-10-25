-- View: public.q_bb_pr_wbs

-- DROP VIEW public.q_bb_pr_wbs;

CREATE OR REPLACE VIEW public.q_bb_pr_wbs
 AS
 SELECT t_bb_inc_st.rep_month,
    t_bb_inc_st.pc,
    t_bb_inc_st.l_1,
    t_bb_inc_st.l_2,
    t_bb_inc_st.l_3,
    t_bb_inc_st.l_4,
    t_bb_inc_st.l_5,
    t_bb_inc_st.l_6,
    t_bb_inc_st.curr,
    t_bb_inc_st.inc_base_mon AS month,
    t_bb_inc_st.key_r_pc_l6
   FROM t_bb_inc_st
  GROUP BY t_bb_inc_st.rep_month, t_bb_inc_st.pc, t_bb_inc_st.l_1, t_bb_inc_st.l_2, t_bb_inc_st.l_3, t_bb_inc_st.l_4, t_bb_inc_st.l_5, t_bb_inc_st.l_6, t_bb_inc_st.curr, t_bb_inc_st.inc_base_mon, t_bb_inc_st.key_r_pc_l6
 HAVING sum(t_bb_inc_st.inc_total) <> 0::double precision
UNION
 SELECT t_bb_exp_st.rep_month,
    t_bb_exp_st.pc,
    t_bb_exp_st.l_1,
    t_bb_exp_st.l_2,
    t_bb_exp_st.l_3,
    t_bb_exp_st.l_4,
    t_bb_exp_st.l_5,
    t_bb_exp_st.l_6,
    t_bb_exp_st.curr,
    t_bb_exp_st.month,
    t_bb_exp_st.key_r_pc_l6
   FROM t_bb_exp_st
  GROUP BY t_bb_exp_st.rep_month, t_bb_exp_st.pc, t_bb_exp_st.l_1, t_bb_exp_st.l_2, t_bb_exp_st.l_3, t_bb_exp_st.l_4, t_bb_exp_st.l_5, t_bb_exp_st.l_6, t_bb_exp_st.curr, t_bb_exp_st.month, t_bb_exp_st.key_r_pc_l6
 HAVING sum(t_bb_exp_st.total_expense) <> 0::double precision;

ALTER TABLE public.q_bb_pr_wbs
    OWNER TO ictasadmin;

