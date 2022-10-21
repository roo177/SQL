-- View: public.q_bb_project_months

-- DROP VIEW public.q_bb_project_months;

CREATE OR REPLACE VIEW public.q_bb_project_months
 AS
 SELECT t_bb_analysis.rep_month,
    t_bb_analysis.pc,
    t_001_projects.r03_s_name AS name
   FROM t_bb_analysis
     LEFT JOIN t_001_projects ON t_bb_analysis.pc::text = t_001_projects.p_code::text
  GROUP BY t_bb_analysis.rep_month, t_bb_analysis.pc, t_001_projects.r03_s_name
  ORDER BY t_bb_analysis.rep_month DESC;

ALTER TABLE public.q_bb_project_months
    OWNER TO ictasadmin;

