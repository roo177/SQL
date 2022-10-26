 

DROP VIEW IF EXISTS 
q_cb_mod_analysis_activem_with_prices;

CREATE TEMPORARY VIEW -- ok

q_cb_mod_analysis_activem_with_prices AS

select 
  q_cb_mod_active_months_res_qty.rep_month, 
  q_cb_mod_active_months_res_qty.pc, 
  q_cb_mod_active_months_res_qty.rs_l1, 
  q_cb_mod_active_months_res_qty.rs_l2, 
  q_cb_mod_active_months_res_qty.rs_l3, 
  q_cb_mod_active_months_res_qty.rs_l4, 
  q_cb_mod_active_months_res_qty.l_1, 
  q_cb_mod_active_months_res_qty.l_2, 
  q_cb_mod_active_months_res_qty.l_3, 
  q_cb_mod_active_months_res_qty.l_4, 
  q_cb_mod_active_months_res_qty.l_5, 
  q_cb_mod_active_months_res_qty.l_6, 
  q_cb_mod_active_months_res_qty.exp_cb_mon, 
  q_cb_mod_active_months_res_qty.curr, 
  q_cb_mod_active_months_res_qty.an_rs_quantity, 
  t_cb_res_up.up_cost, 
  q_cb_mod_active_months_res_qty.key_r4, 
  q_cb_mod_active_months_res_qty.key_r_pc_l6, 
  q_cb_mod_active_months_res_qty.key_full, 
  q_cb_mod_active_months_res_qty.key_r4_simple 
from 
  q_cb_mod_active_months_res_qty 
  left join t_cb_res_up on q_cb_mod_active_months_res_qty.key_r4 = t_cb_res_up.key_r4;
