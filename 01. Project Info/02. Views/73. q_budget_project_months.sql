-- View: public.q_budget_project_months

-- DROP VIEW public.q_budget_project_months;

CREATE OR REPLACE VIEW public.q_budget_project_months
 AS
 SELECT q_cb_project_months.rep_month,
    q_cb_project_months.pc,
    q_cb_project_months.name,
    'GÜNCEL'::text AS budget_type
   FROM q_cb_project_months
UNION
 SELECT q_bb_project_months.rep_month,
    q_bb_project_months.pc,
    q_bb_project_months.name,
    'BAZ'::text AS budget_type
   FROM q_bb_project_months;

ALTER TABLE public.q_budget_project_months
    OWNER TO ictasadmin;

