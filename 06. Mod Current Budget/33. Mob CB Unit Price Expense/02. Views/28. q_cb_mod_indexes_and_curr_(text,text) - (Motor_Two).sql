-- DROP VIEW IF EXISTS q_cb_mod_indexes_and_curr CASCADE;

CREATE OR REPLACE VIEW q_cb_mod_indexes_and_curr
 AS
SELECT q_cb_mod_monthly_curr_rates_inc.rep_month
	,q_cb_mod_monthly_curr_rates_inc.user_id
	,q_cb_mod_monthly_curr_rates_inc.session_id
	,q_cb_mod_monthly_curr_rates_inc.pc
	,q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_try
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_usd
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_try
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_eur
	,t_cb_mod_indexes.bb_ufe
	,t_cb_mod_indexes.bb_tufe
	,t_cb_mod_indexes.bb_inf_usd
	,t_cb_mod_indexes.bb_inf_eur
	,t_cb_mod_indexes.bb_metal
	,t_cb_mod_indexes.bb_petrol
	,t_cb_mod_indexes.bb_cement
	,t_cb_mod_indexes.bb_electricity 
FROM q_cb_mod_monthly_curr_rates_inc
	LEFT JOIN t_cb_mod_indexes ON (q_cb_mod_monthly_curr_rates_inc.exp_cb_mon = t_cb_mod_indexes.month) 
	AND (q_cb_mod_monthly_curr_rates_inc.session_id = t_cb_mod_indexes.session_id) 
	AND (q_cb_mod_monthly_curr_rates_inc.user_id = t_cb_mod_indexes.user_id) 
	AND (q_cb_mod_monthly_curr_rates_inc.rep_month = t_cb_mod_indexes.rep_month) 
GROUP BY q_cb_mod_monthly_curr_rates_inc.rep_month
	,q_cb_mod_monthly_curr_rates_inc.user_id
	,q_cb_mod_monthly_curr_rates_inc.session_id
	,q_cb_mod_monthly_curr_rates_inc.pc
	,q_cb_mod_monthly_curr_rates_inc.exp_cb_mon
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_try
	,q_cb_mod_monthly_curr_rates_inc.rt_eur_usd
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_try
	,q_cb_mod_monthly_curr_rates_inc.rt_usd_eur
	,t_cb_mod_indexes.bb_ufe
	,t_cb_mod_indexes.bb_tufe
	,t_cb_mod_indexes.bb_inf_usd
	,t_cb_mod_indexes.bb_inf_eur
	,t_cb_mod_indexes.bb_metal
	,t_cb_mod_indexes.bb_petrol
	,t_cb_mod_indexes.bb_cement
	,t_cb_mod_indexes.bb_electricity;