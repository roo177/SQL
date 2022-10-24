-- View: public.q_bb_active_months_res_qty

DROP VIEW public.q_bb_active_months_res_qty;

CREATE OR REPLACE VIEW public.q_bb_active_months_res_qty
 AS
 SELECT t_bb_analysis.rep_month,
    t_bb_analysis.pc,
    t_bb_analysis.l_1,
    t_bb_analysis.l_2,
    t_bb_analysis.l_3,
    t_bb_analysis.l_4,
    t_bb_analysis.l_5,
    t_bb_analysis.l_6,
    t_bb_analysis.rs_l1,
    t_bb_analysis.rs_l2,
    t_bb_analysis.rs_l3,
    t_bb_analysis.rs_l4,
    q_bb_qty_activem_works.exp_base_mon,
    t_bb_analysis.an_rs_quantity,
    t_bb_analysis.key_full,
    q_bb_qty_activem_works.key_r_pc_l6,
    t_bb_analysis.key_r4,
    t_bb_analysis.key_r4_simple
   FROM q_bb_qty_activem_works
     LEFT JOIN t_bb_analysis ON q_bb_qty_activem_works.key_r_pc_l6::text = t_bb_analysis.key_r_pc_l6::text;

ALTER TABLE public.q_bb_active_months_res_qty
    OWNER TO ictasadmin;

