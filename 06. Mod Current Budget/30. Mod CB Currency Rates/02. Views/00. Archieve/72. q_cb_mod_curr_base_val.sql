DROP VIEW IF EXISTS q_cb_mod_curr_base_val;

CREATE TEMPORARY VIEW -- ok
q_cb_mod_curr_base_val AS
select 
q_cb_mod_curr_base_month.rep_month_date, 
t_cb_mod_mon_curr_rates.r_eur_eur, 
t_cb_mod_mon_curr_rates.r_eur_try, 
t_cb_mod_mon_curr_rates.r_eur_usd, 
t_cb_mod_mon_curr_rates.r_try_eur, 
t_cb_mod_mon_curr_rates.r_try_try, 
t_cb_mod_mon_curr_rates.r_try_usd, 
t_cb_mod_mon_curr_rates.r_usd_eur, 
t_cb_mod_mon_curr_rates.r_usd_try, 
t_cb_mod_mon_curr_rates.r_usd_usd, 
q_cb_mod_curr_base_month.rep_month
from q_cb_mod_curr_base_month left join t_cb_mod_mon_curr_rates on q_cb_mod_curr_base_month.rep_month_date = t_cb_mod_mon_curr_rates.month
group by q_cb_mod_curr_base_month.rep_month_date, t_cb_mod_mon_curr_rates.r_eur_eur, t_cb_mod_mon_curr_rates.r_eur_try, t_cb_mod_mon_curr_rates.r_eur_usd, t_cb_mod_mon_curr_rates.r_try_eur, t_cb_mod_mon_curr_rates.r_try_try, t_cb_mod_mon_curr_rates.r_try_usd, t_cb_mod_mon_curr_rates.r_usd_eur, t_cb_mod_mon_curr_rates.r_usd_try, t_cb_mod_mon_curr_rates.r_usd_usd, q_cb_mod_curr_base_month.rep_month;
