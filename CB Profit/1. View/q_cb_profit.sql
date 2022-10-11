CREATE OR REPLACE VIEW -- ok
q_cb_profit AS
SELECT 
q_cb_pr_wbs.rep_month, 
q_cb_pr_wbs.pc, 
q_cb_pr_wbs.l_1, 
q_cb_pr_wbs.l_2, 
q_cb_pr_wbs.l_3, 
q_cb_pr_wbs.l_4, 
q_cb_pr_wbs.l_5, 
q_cb_pr_wbs.l_6, 
q_cb_pr_wbs.currency, 
q_cb_pr_wbs.month, 
s1.income as income, 
s1.expense as expense, 
s1.income-s1.expense AS profit, 
q_cb_pr_wbs.key_r_pc_l6
FROM (q_cb_pr_wbs LEFT JOIN t_cb_inc_st ON (q_cb_pr_wbs.key_r_pc_l6 = t_cb_inc_st.key_r_pc_l6) AND (q_cb_pr_wbs.month = t_cb_inc_st.inc_base_mon) 
AND (q_cb_pr_wbs.currency = t_cb_inc_st.currency)) LEFT JOIN t_cb_exp_st ON (q_cb_pr_wbs.key_r_pc_l6 = t_cb_exp_st.key_r_pc_l6) AND (q_cb_pr_wbs.month = t_cb_exp_st.month) 
AND (q_cb_pr_wbs.currency = t_cb_exp_st.up_curr), LATERAL ( SELECT 
CASE WHEN inc_total is null THEN 0 ELSE inc_total END, CASE WHEN total_expense is null THEN 0 ELSE total_expense END ) AS s1(income,expense)
ORDER BY q_cb_pr_wbs.rep_month, q_cb_pr_wbs.pc, q_cb_pr_wbs.l_1, q_cb_pr_wbs.l_2, q_cb_pr_wbs.l_3, q_cb_pr_wbs.l_4, q_cb_pr_wbs.l_5, q_cb_pr_wbs.l_6, q_cb_pr_wbs.month;
