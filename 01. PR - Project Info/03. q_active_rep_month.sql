-- View: public.q_active_rep_month

-- DROP VIEW public.q_active_rep_month;

CREATE OR REPLACE VIEW public.q_active_rep_month
 AS
 SELECT max(t_rep_month.rep_month::text) AS active_rep_month
   FROM t_rep_month;

ALTER TABLE public.q_active_rep_month
    OWNER TO ictasadmin;

