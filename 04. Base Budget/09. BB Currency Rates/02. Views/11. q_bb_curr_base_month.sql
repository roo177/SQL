-- View: public.q_bb_curr_base_month

-- DROP VIEW public.q_bb_curr_base_month;

CREATE OR REPLACE VIEW public.q_bb_curr_base_month
 AS
 SELECT q_budget_project_months.pc,
    t_rep_month.rep_month_date,
    q_budget_project_months.rep_month,
    q_budget_project_months.budget_type
   FROM t_rep_month
     RIGHT JOIN q_budget_project_months ON t_rep_month.rep_month::text = q_budget_project_months.rep_month::text
  GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month, q_budget_project_months.budget_type
 HAVING q_budget_project_months.budget_type = 'BAZ'::text;

ALTER TABLE public.q_bb_curr_base_month
    OWNER TO ictasadmin;

