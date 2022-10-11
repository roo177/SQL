CREATE OR REPLACE VIEW -- not ok 
q_budget_project_months AS
SELECT 
rep_month,
pc,
name,
'GÜNCEL' AS budget_type
FROM q_cb_project_months
UNION
SELECT
rep_month,
pc,
name,
'BAZ' AS budget_type
FROM q_bb_project_months;