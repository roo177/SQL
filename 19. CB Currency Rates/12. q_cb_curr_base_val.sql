CREATE OR REPLACE VIEW -- ok
q_cb_curr_base_val AS
SELECT q_cb_curr_base_month.rep_month, q_cb_curr_base_month.rep_month_date, mon_curr_rates.r_eur_eur, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_try_eur, mon_curr_rates.r_try_try, mon_curr_rates.r_try_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, mon_curr_rates.r_usd_usd
FROM q_cb_curr_base_month LEFT JOIN mon_curr_rates ON (q_cb_curr_base_month.rep_month_date = mon_curr_rates.month) AND (q_cb_curr_base_month.rep_month = mon_curr_rates.rep_month)
GROUP BY q_cb_curr_base_month.rep_month, q_cb_curr_base_month.rep_month_date, mon_curr_rates.r_eur_eur, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_try_eur, mon_curr_rates.r_try_try, mon_curr_rates.r_try_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, mon_curr_rates.r_usd_usd;
