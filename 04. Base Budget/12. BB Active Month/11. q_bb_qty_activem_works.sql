-- View: public.q_bb_qty_activem_works

-- DROP VIEW public.q_bb_qty_activem_works;

CREATE OR REPLACE VIEW public.q_bb_qty_activem_works
 AS
 SELECT t_bb_qty.key_r_pc_l6,
    t_bb_qty.exp_base_mon
   FROM t_bb_qty
     LEFT JOIN t_rep_month ON t_bb_qty.rep_month::text = t_rep_month.rep_month::text
  WHERE t_bb_qty.exp_base_mon > t_rep_month.rep_month_date AND t_bb_qty.exp_base_qty <> 0::numeric
  ORDER BY t_bb_qty.key_r_pc_l6, t_bb_qty.exp_base_mon;

ALTER TABLE public.q_bb_qty_activem_works
    OWNER TO ictasadmin;

