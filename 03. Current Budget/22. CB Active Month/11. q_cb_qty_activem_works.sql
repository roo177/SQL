-- View: public.q_cb_qty_activem_works

-- DROP VIEW public.q_cb_qty_activem_works;

CREATE OR REPLACE VIEW public.q_cb_qty_activem_works
 AS
 SELECT t_cb_qty.key_r_pc_l6,
    t_cb_qty.exp_cb_mon
   FROM t_cb_qty
     LEFT JOIN t_rep_month ON t_cb_qty.rep_month::text = t_rep_month.rep_month::text
  WHERE t_cb_qty.exp_cb_mon > t_rep_month.rep_month_date AND t_cb_qty.exp_cb_qty <> 0::numeric
  ORDER BY t_cb_qty.key_r_pc_l6, t_cb_qty.exp_cb_mon;

ALTER TABLE public.q_cb_qty_activem_works
    OWNER TO ictasadmin;

