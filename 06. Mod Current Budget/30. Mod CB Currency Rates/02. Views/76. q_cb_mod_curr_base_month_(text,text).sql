-- View: public.q_cb_mod_curr_base_month

DROP VIEW public.q_cb_mod_curr_base_month;

CREATE OR REPLACE VIEW public.q_cb_mod_curr_base_month
 AS
 SELECT q_budget_project_months.pc,
    t_rep_month.rep_month_date,
    q_budget_project_months.rep_month
   FROM t_rep_month
     RIGHT JOIN q_budget_project_months ON t_rep_month.rep_month::text = q_budget_project_months.rep_month::text
  WHERE q_budget_project_months.rep_month::text = (( SELECT max(t_rep_month_1.rep_month::text) AS max
           FROM t_rep_month t_rep_month_1))
  GROUP BY q_budget_project_months.pc, t_rep_month.rep_month_date, q_budget_project_months.rep_month;

ALTER TABLE public.q_cb_mod_curr_base_month
    OWNER TO ictasadmin;
