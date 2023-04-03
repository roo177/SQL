-- View: public.q_cb_mod_qty_activem_works_monthly

-- DROP VIEW public.q_cb_mod_qty_activem_works_monthly;

CREATE OR REPLACE VIEW public.q_cb_mod_qty_activem_works_monthly
 AS
 SELECT t_cb_qty.rep_month,
    t_cb_qty.pc,
    t_cb_qty.exp_cb_mon
   FROM t_cb_qty
     LEFT JOIN t_rep_month ON t_cb_qty.rep_month::text = t_rep_month.rep_month::text
  WHERE t_cb_qty.exp_cb_mon > t_rep_month.rep_month_date AND t_cb_qty.exp_cb_qty <> 0::numeric
  GROUP BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon
 HAVING t_cb_qty.rep_month::text = (( SELECT max(t_rep_month_1.rep_month::text) AS max
           FROM t_rep_month t_rep_month_1))
  ORDER BY t_cb_qty.rep_month, t_cb_qty.pc, t_cb_qty.exp_cb_mon;

ALTER TABLE public.q_cb_mod_qty_activem_works_monthly
    OWNER TO ictasadmin;

