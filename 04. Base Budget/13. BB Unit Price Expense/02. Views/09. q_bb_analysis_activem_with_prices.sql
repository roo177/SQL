-- View: public.q_bb_analysis_activem_with_prices

DROP VIEW public.q_bb_analysis_activem_with_prices;

CREATE OR REPLACE VIEW public.q_bb_analysis_activem_with_prices
 AS
 SELECT q_bb_active_months_res_qty.rep_month,
    q_bb_active_months_res_qty.pc,
    q_bb_active_months_res_qty.exp_base_mon,
    q_bb_active_months_res_qty.an_rs_quantity,
    q_bb_active_months_res_qty.key_r4,
    q_bb_active_months_res_qty.key_r_pc_l6,
    q_bb_active_months_res_qty.key_full,
    t_bb_res_up.up_cost,
    q_bb_active_months_res_qty.l_1,
    q_bb_active_months_res_qty.l_2,
    q_bb_active_months_res_qty.l_3,
    q_bb_active_months_res_qty.l_4,
    q_bb_active_months_res_qty.l_5,
    q_bb_active_months_res_qty.l_6,
    q_bb_active_months_res_qty.rs_l1,
    q_bb_active_months_res_qty.rs_l2,
    q_bb_active_months_res_qty.rs_l3,
    q_bb_active_months_res_qty.rs_l4,
    r4_code.currency AS curr,
    q_bb_active_months_res_qty.key_r4_simple
   FROM q_bb_active_months_res_qty
     LEFT JOIN t_bb_res_up ON q_bb_active_months_res_qty.key_r4::text = t_bb_res_up.key_r4::text
     LEFT JOIN r4_code ON q_bb_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text;

ALTER TABLE public.q_bb_analysis_activem_with_prices
    OWNER TO ictasadmin;

