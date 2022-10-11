CREATE OR REPLACE VIEW --ok
q_bb_curr_base_month AS
SELECT q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month
FROM t_rep_month right join q_budget_project_months ON t_rep_month.rep_month = q_budget_project_months.rep_month
GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;