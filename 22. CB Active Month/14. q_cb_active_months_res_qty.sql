-- View: public.q_cb_active_months_res_qty

-- DROP VIEW public.q_cb_active_months_res_qty;

CREATE OR REPLACE VIEW public.q_cb_active_months_res_qty
 AS
 SELECT t_pl_analysis.rep_month,
    t_pl_analysis.p01_code AS pc,
    q_cb_qty_activem_works.exp_cb_mon,
    t_pl_analysis.an_rs_quantity,
    t_pl_analysis.key_r4,
    q_cb_qty_activem_works.key_r_pc_l6,
    t_pl_analysis.key_full,
    t_pl_analysis.l_1,
    t_pl_analysis.l_2,
    t_pl_analysis.l_3,
    t_pl_analysis.rs_l1,
    t_pl_analysis.rs_l2,
    t_pl_analysis.rs_l3,
    t_pl_analysis.rs_l4,
    t_pl_analysis.l_4,
    t_pl_analysis.l_5,
    t_pl_analysis.l_6,
    t_pl_analysis.key_r4_simple
   FROM q_cb_qty_activem_works
     LEFT JOIN t_pl_analysis ON q_cb_qty_activem_works.key_r_pc_l6::text = t_pl_analysis.key_r_pc_l6::text;

ALTER TABLE public.q_cb_active_months_res_qty
    OWNER TO ictasadmin;

