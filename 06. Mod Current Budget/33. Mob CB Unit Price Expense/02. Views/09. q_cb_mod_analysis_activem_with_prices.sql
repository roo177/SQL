 

DROP VIEW IF EXISTS 
q_cb_mod_analysis_activem_with_prices;

CREATE TEMPORARY VIEW -- ok
q_cb_mod_analysis_activem_with_prices AS
SELECT q_cb_mod_active_months_res_qty.rep_month,
       q_cb_mod_active_months_res_qty.pc,
       q_cb_mod_active_months_res_qty.exp_cb_mon,
       q_cb_mod_active_months_res_qty.an_rs_quantity,
       q_cb_mod_active_months_res_qty.key_r4,
       q_cb_mod_active_months_res_qty.key_r_pc_l6,
       q_cb_mod_active_months_res_qty.key_full,
       t_cb_mod_res_up.up_cost,
       q_cb_mod_active_months_res_qty.l_1,
       q_cb_mod_active_months_res_qty.l_2,
       q_cb_mod_active_months_res_qty.l_3,
       q_cb_mod_active_months_res_qty.l_4,
       q_cb_mod_active_months_res_qty.l_5,
       q_cb_mod_active_months_res_qty.l_6,
       q_cb_mod_active_months_res_qty.rs_l1,
       q_cb_mod_active_months_res_qty.rs_l2,
       q_cb_mod_active_months_res_qty.rs_l3,
       q_cb_mod_active_months_res_qty.rs_l4,
       temp_r4_code.currency,
       q_cb_mod_active_months_res_qty.key_r4_simple
FROM   (q_cb_mod_active_months_res_qty
        LEFT JOIN t_cb_mod_res_up
               ON q_cb_mod_active_months_res_qty.key_r4 = t_cb_mod_res_up.key_r4)
       LEFT JOIN temp_r4_code
              ON q_cb_mod_active_months_res_qty.key_r4_simple =
                 temp_r4_code.key_r4_simple; 