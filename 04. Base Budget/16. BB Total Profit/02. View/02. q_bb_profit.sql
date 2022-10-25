-- View: public.q_bb_profit

-- DROP VIEW public.q_bb_profit;

CREATE OR REPLACE VIEW public.q_bb_profit
 AS
 SELECT q_bb_pr_wbs.rep_month,
    q_bb_pr_wbs.pc,
    q_bb_pr_wbs.l_1,
    q_bb_pr_wbs.l_2,
    q_bb_pr_wbs.l_3,
    q_bb_pr_wbs.l_4,
    q_bb_pr_wbs.l_5,
    q_bb_pr_wbs.l_6,
    q_bb_pr_wbs.curr,
    q_bb_pr_wbs.month,
    s1.income,
    s1.expense,
    s1.income - s1.expense AS profit,
    q_bb_pr_wbs.key_r_pc_l6
   FROM q_bb_pr_wbs
     LEFT JOIN t_bb_inc_st ON q_bb_pr_wbs.key_r_pc_l6::text = t_bb_inc_st.key_r_pc_l6::text AND q_bb_pr_wbs.month = t_bb_inc_st.inc_base_mon AND q_bb_pr_wbs.curr::text = t_bb_inc_st.curr::text
     LEFT JOIN t_bb_exp_st ON q_bb_pr_wbs.key_r_pc_l6::text = t_bb_exp_st.key_r_pc_l6::text AND q_bb_pr_wbs.month = t_bb_exp_st.month AND q_bb_pr_wbs.curr::text = t_bb_exp_st.curr::text,
    LATERAL ( SELECT
                CASE
                    WHEN t_bb_inc_st.inc_total IS NULL THEN 0::double precision
                    ELSE t_bb_inc_st.inc_total
                END AS inc_total,
                CASE
                    WHEN t_bb_exp_st.total_expense IS NULL THEN 0::double precision
                    ELSE t_bb_exp_st.total_expense
                END AS total_expense) s1(income, expense)
  ORDER BY q_bb_pr_wbs.rep_month, q_bb_pr_wbs.pc, q_bb_pr_wbs.l_1, q_bb_pr_wbs.l_2, q_bb_pr_wbs.l_3, q_bb_pr_wbs.l_4, q_bb_pr_wbs.l_5, q_bb_pr_wbs.l_6, q_bb_pr_wbs.month;

ALTER TABLE public.q_bb_profit
    OWNER TO ictasadmin;

