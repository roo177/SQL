--DROP VIEW IF EXISTS q_cb_mod_active_months_res_qty CASCADE;

CREATE TEMPORARY VIEW -- ok

q_cb_mod_active_months_res_qty AS

select 
  t_cb_mod_analysis.rep_month, 
  t_cb_mod_analysis.pc, 
  q_cb_mod_qty_activem_works.exp_cb_mon, 
  t_cb_mod_analysis.key_r4, 
  q_cb_mod_qty_activem_works.key_r_pc_l6, 
  t_cb_mod_analysis.key_full, 
  t_cb_mod_analysis.l_1, 
  t_cb_mod_analysis.l_2, 
  t_cb_mod_analysis.l_3, 
  t_cb_mod_analysis.l_4, 
  t_cb_mod_analysis.l_5, 
  t_cb_mod_analysis.l_6, 
  t_cb_mod_analysis.rs_l1, 
  t_cb_mod_analysis.rs_l2, 
  t_cb_mod_analysis.rs_l3, 
  t_cb_mod_analysis.rs_l4, 
  t_cb_mod_analysis.key_r4_simple, 
  (1 + r_loss)*(
    t_cb_mod_analysis.an_rs_quantity
  ) as an_rs_quantity, 
  t_cb_mod_analysis.r_loss 
from 
  q_cb_mod_qty_activem_works 
  left join t_cb_mod_analysis on q_cb_mod_qty_activem_works.key_r_pc_l6 = t_cb_mod_analysis.key_r_pc_l6;


