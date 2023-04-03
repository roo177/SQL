-- View: public.q_cb_mod_active_months_res_qty

-- DROP VIEW public.q_cb_mod_active_months_res_qty;

CREATE OR REPLACE VIEW public.q_cb_mod_active_months_res_qty
 AS
 SELECT t_cb_analysis.rep_month,
    t_cb_analysis.pc,
    q_cb_mod_qty_activem_works.exp_cb_mon,
    t_cb_analysis.key_r4,
    q_cb_mod_qty_activem_works.key_r_pc_l6,
    t_cb_analysis.key_full,
    t_cb_analysis.l_1,
    t_cb_analysis.l_2,
    t_cb_analysis.l_3,
    t_cb_analysis.l_4,
    t_cb_analysis.l_5,
    t_cb_analysis.l_6,
    t_cb_analysis.rs_l1,
    t_cb_analysis.rs_l2,
    t_cb_analysis.rs_l3,
    t_cb_analysis.rs_l4,
    t_cb_analysis.key_r4_simple,
    (1::numeric + t_cb_analysis.r_loss) * t_cb_analysis.an_rs_quantity AS an_rs_quantity,
    t_cb_analysis.r_loss
   FROM q_cb_mod_qty_activem_works
     LEFT JOIN t_cb_analysis ON q_cb_mod_qty_activem_works.key_r_pc_l6::text = t_cb_analysis.key_r_pc_l6::text;

ALTER TABLE public.q_cb_mod_active_months_res_qty
    OWNER TO ictasadmin;

