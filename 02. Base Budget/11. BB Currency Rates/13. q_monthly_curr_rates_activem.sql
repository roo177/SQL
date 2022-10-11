CREATE OR REPLACE VIEW --ok
q_monthly_curr_rates_activem AS

select q_bb_qty_activem_works_monthly.rep_month, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, q_bb_qty_activem_works_monthly.exp_base_mon
from q_bb_qty_activem_works_monthly left join t_bb_mon_curr_rates on (q_bb_qty_activem_works_monthly.pc = t_bb_mon_curr_rates.p_code) and (q_bb_qty_activem_works_monthly.rep_month = t_bb_mon_curr_rates.rep_month) and (q_bb_qty_activem_works_monthly.exp_base_mon = t_bb_mon_curr_rates.month)
group by q_bb_qty_activem_works_monthly.rep_month, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, q_bb_qty_activem_works_monthly.exp_base_mon;
