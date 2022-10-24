-- View: public.q_bb_qty_activem_works_monthly

-- DROP VIEW public.q_bb_qty_activem_works_monthly;

CREATE OR REPLACE VIEW public.q_bb_qty_activem_works_monthly
 AS
 SELECT t_bb_qty.rep_month,
    t_bb_qty.pc,
    t_bb_qty.exp_base_mon
   FROM t_bb_qty
     LEFT JOIN t_rep_month ON t_bb_qty.rep_month::text = t_rep_month.rep_month::text
  WHERE t_bb_qty.exp_base_mon > t_rep_month.rep_month_date AND t_bb_qty.exp_base_qty <> 0::numeric
  GROUP BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.exp_base_mon
  ORDER BY t_bb_qty.rep_month, t_bb_qty.pc, t_bb_qty.exp_base_mon;

ALTER TABLE public.q_bb_qty_activem_works_monthly
    OWNER TO ictasadmin;

