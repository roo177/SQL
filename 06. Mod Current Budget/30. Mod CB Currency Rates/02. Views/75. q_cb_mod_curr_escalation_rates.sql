DROP 
  VIEW IF EXISTS q_cb_mod_curr_escalation_rates;
CREATE TEMPORARY VIEW -- ok
q_cb_mod_curr_escalation_rates AS 
select 
  q_cb_mod_active_months_res_qty.rep_month, 
  q_cb_mod_active_months_res_qty.pc, 
  q_cb_mod_active_months_res_qty.l_1, 
  q_cb_mod_active_months_res_qty.l_2, 
  q_cb_mod_active_months_res_qty.l_3, 
  q_cb_mod_active_months_res_qty.l_4, 
  q_cb_mod_active_months_res_qty.l_5, 
  q_cb_mod_active_months_res_qty.l_6, 
  q_cb_mod_active_months_res_qty.exp_cb_mon as month, 
  q_cb_mod_active_months_res_qty.rs_l1, 
  q_cb_mod_active_months_res_qty.rs_l2, 
  q_cb_mod_active_months_res_qty.rs_l3, 
  q_cb_mod_active_months_res_qty.rs_l4, 
  CASE WHEN r4_code.currency = 'TRY' 
  and w_inf_usd <> 0 THEN 1 + rt_usd_try * w_inf_usd ELSE CASE WHEN r4_code.currency = 'EUR' 
  and w_inf_usd <> 0 THEN 1 + rt_usd_eur * w_inf_usd ELSE 1 end end as k_usd, 
  CASE WHEN r4_code.currency = 'TRY' 
  and w_inf_eur <> 0 THEN 1 + rt_eur_try * w_inf_eur ELSE CASE WHEN r4_code.currency = 'USD' 
  and w_inf_eur <> 0 THEN 1 + rt_eur_usd * w_inf_eur ELSE 1 end END as k_eur, 
  r4_code.w_inf_usd, 
  r4_code.w_inf_eur, 
  r4_code.currency as curr, 
  q_cb_mod_active_months_res_qty.key_r4_simple, 
  q_cb_mod_active_months_res_qty.key_full, 
  q_cb_mod_active_months_res_qty.key_r_pc_l6, 
  q_cb_mod_active_months_res_qty.key_r4, 
  key_full || '.' || currency || '.' || q_cb_mod_active_months_res_qty.exp_cb_mon as key_full_comb 
from 
  (
    q_cb_mod_active_months_res_qty 
    left join q_cb_mod_monthly_curr_rates_inc on (
      q_cb_mod_active_months_res_qty.exp_cb_mon = q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
    ) 
    and (
      q_cb_mod_active_months_res_qty.pc = q_cb_mod_monthly_curr_rates_inc.pc
    ) 
    and (
      q_cb_mod_active_months_res_qty.rep_month = q_cb_mod_monthly_curr_rates_inc.rep_month
    )
  ) 
  left join r4_code on q_cb_mod_active_months_res_qty.key_r4_simple = r4_code.key_r4_simple;
