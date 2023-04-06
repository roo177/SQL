-- View: public.q_cb_mod_profit

-- DROP VIEW public.q_cb_mod_profit;

CREATE OR REPLACE VIEW public.q_cb_mod_profit
 AS
 SELECT q_cb_mod_pr_wbs.user_id,
    q_cb_mod_pr_wbs.session_id,
    q_cb_mod_pr_wbs.rep_month,
    q_cb_mod_pr_wbs.pc,
    q_cb_mod_pr_wbs.l_1,
    q_cb_mod_pr_wbs.l_2,
    q_cb_mod_pr_wbs.l_3,
    q_cb_mod_pr_wbs.l_4,
    q_cb_mod_pr_wbs.l_5,
    q_cb_mod_pr_wbs.l_6,
    q_cb_mod_pr_wbs.curr,
    q_cb_mod_pr_wbs.month,
    s1.income,
    s1.expense,
    s1.income - s1.expense AS profit,
    q_cb_mod_pr_wbs.key_r_pc_l6,
    q_cb_mod_pr_wbs.jkey
   FROM q_cb_mod_pr_wbs
     LEFT JOIN t_cb_mod_inc_st ON q_cb_mod_pr_wbs.jkey::text = t_cb_mod_inc_st.jkey::text
     LEFT JOIN t_cb_mod_exp_st ON q_cb_mod_pr_wbs.jkey::text = t_cb_mod_exp_st.jkey::text,
    LATERAL ( SELECT
                CASE
                    WHEN t_cb_mod_inc_st.inc_total IS NULL THEN 0::double precision
                    ELSE t_cb_mod_inc_st.inc_total
                END AS inc_total,
                CASE
                    WHEN t_cb_mod_exp_st.total_expense IS NULL THEN 0::double precision
                    ELSE t_cb_mod_exp_st.total_expense
                END AS total_expense) s1(income, expense)
  WHERE q_cb_mod_pr_wbs.user_id = '2'::text AND q_cb_mod_pr_wbs.session_id = '2'::text
  ORDER BY q_cb_mod_pr_wbs.user_id, q_cb_mod_pr_wbs.session_id, q_cb_mod_pr_wbs.rep_month, q_cb_mod_pr_wbs.pc, q_cb_mod_pr_wbs.l_1, q_cb_mod_pr_wbs.l_2, q_cb_mod_pr_wbs.l_3, q_cb_mod_pr_wbs.l_4, q_cb_mod_pr_wbs.l_5, q_cb_mod_pr_wbs.l_6, q_cb_mod_pr_wbs.month;

ALTER TABLE public.q_cb_mod_profit
    OWNER TO ictasadmin;

