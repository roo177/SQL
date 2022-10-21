-- View: public.q_cb_analysis_activem_with_prices

DROP VIEW public.q_cb_analysis_activem_with_prices;

CREATE OR REPLACE VIEW public.q_cb_analysis_activem_with_prices
 AS
 SELECT q_cb_active_months_res_qty.rep_month,
    q_cb_active_months_res_qty.pc,
    q_cb_active_months_res_qty.l_1,
    q_cb_active_months_res_qty.l_2,
    q_cb_active_months_res_qty.l_3,
    q_cb_active_months_res_qty.l_4,
    q_cb_active_months_res_qty.l_5,
    q_cb_active_months_res_qty.l_6,
    q_cb_active_months_res_qty.rs_l1,
    q_cb_active_months_res_qty.rs_l2,
    q_cb_active_months_res_qty.rs_l3,
    q_cb_active_months_res_qty.rs_l4,
    q_cb_active_months_res_qty.exp_cb_mon,
    t_cb_res_up.up_cost,
    r4_code.currency as curr,
    q_cb_active_months_res_qty.an_rs_quantity,
    q_cb_active_months_res_qty.key_r4,
    q_cb_active_months_res_qty.key_r_pc_l6,
    q_cb_active_months_res_qty.key_full,
    q_cb_active_months_res_qty.key_r4_simple
   FROM q_cb_active_months_res_qty
     LEFT JOIN t_cb_res_up ON q_cb_active_months_res_qty.key_r4::text = t_cb_res_up.key_r4::text
     LEFT JOIN r4_code ON q_cb_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text;

ALTER TABLE public.q_cb_analysis_activem_with_prices
    OWNER TO ictasadmin;

