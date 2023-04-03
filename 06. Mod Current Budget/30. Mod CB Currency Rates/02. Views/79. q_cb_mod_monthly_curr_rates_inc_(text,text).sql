-- View: public.q_cb_mod_monthly_curr_rates_inc

-- DROP VIEW public.q_cb_mod_monthly_curr_rates_inc;

CREATE OR REPLACE VIEW public.q_cb_mod_monthly_curr_rates_inc
 AS
 SELECT q_cb_mod_monthly_curr_rates_activem.rep_month,
    q_cb_mod_monthly_curr_rates_activem.user_id,
    q_cb_mod_monthly_curr_rates_activem.session_id,
    q_cb_mod_monthly_curr_rates_activem.pc,
    q_cb_mod_monthly_curr_rates_activem.exp_cb_mon,
    q_cb_mod_monthly_curr_rates_activem.r_eur_try / q_cb_mod_curr_base_val.r_eur_try - 1::numeric AS rt_eur_try,
    q_cb_mod_monthly_curr_rates_activem.r_eur_usd / q_cb_mod_curr_base_val.r_eur_usd - 1::numeric AS rt_eur_usd,
    q_cb_mod_monthly_curr_rates_activem.r_usd_try / q_cb_mod_curr_base_val.r_usd_try - 1::numeric AS rt_usd_try,
    q_cb_mod_monthly_curr_rates_activem.r_usd_eur / q_cb_mod_curr_base_val.r_usd_eur - 1::numeric AS rt_usd_eur
   FROM q_cb_mod_monthly_curr_rates_activem
     LEFT JOIN q_cb_mod_curr_base_val ON q_cb_mod_monthly_curr_rates_activem.rep_month::text = q_cb_mod_curr_base_val.rep_month::text AND q_cb_mod_monthly_curr_rates_activem.user_id::text = q_cb_mod_curr_base_val.user_id::text AND q_cb_mod_monthly_curr_rates_activem.session_id = q_cb_mod_curr_base_val.session_id
  GROUP BY q_cb_mod_monthly_curr_rates_activem.rep_month, q_cb_mod_monthly_curr_rates_activem.user_id, q_cb_mod_monthly_curr_rates_activem.session_id, q_cb_mod_monthly_curr_rates_activem.pc, q_cb_mod_monthly_curr_rates_activem.exp_cb_mon, (q_cb_mod_monthly_curr_rates_activem.r_eur_try / q_cb_mod_curr_base_val.r_eur_try - 1::numeric), (q_cb_mod_monthly_curr_rates_activem.r_eur_usd / q_cb_mod_curr_base_val.r_eur_usd - 1::numeric), (q_cb_mod_monthly_curr_rates_activem.r_usd_try / q_cb_mod_curr_base_val.r_usd_try - 1::numeric), (q_cb_mod_monthly_curr_rates_activem.r_usd_eur / q_cb_mod_curr_base_val.r_usd_eur - 1::numeric);

ALTER TABLE public.q_cb_mod_monthly_curr_rates_inc
    OWNER TO ictasadmin;

