-- View: public.q_rep_month_order

-- DROP VIEW public.q_rep_month_order;

CREATE OR REPLACE VIEW public.q_rep_month_order
 AS
 SELECT t_rep_month.rep_month,
    t_rep_month.rep_month_date,
    row_number() OVER (ORDER BY t_rep_month.rep_month_date) AS rownum
   FROM t_rep_month
  ORDER BY t_rep_month.rep_month DESC, t_rep_month.rep_month_date DESC;

ALTER TABLE public.q_rep_month_order
    OWNER TO ictasadmin;

