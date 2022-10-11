-- View: public.q_rep_month_max

-- DROP VIEW public.q_rep_month_max;

CREATE OR REPLACE VIEW public.q_rep_month_max
 AS
 SELECT max(t_rep_month.rep_month_date) AS last_month
   FROM t_rep_month;

ALTER TABLE public.q_rep_month_max
    OWNER TO ictasadmin;

