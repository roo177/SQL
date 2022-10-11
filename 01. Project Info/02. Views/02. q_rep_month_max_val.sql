-- View: public.q_rep_month_max_val

-- DROP VIEW public.q_rep_month_max_val;

CREATE OR REPLACE VIEW public.q_rep_month_max_val
 AS
 SELECT max(t_rep_month.rep_month::text) AS rep_month
   FROM t_rep_month;

ALTER TABLE public.q_rep_month_max_val
    OWNER TO ictasadmin;

