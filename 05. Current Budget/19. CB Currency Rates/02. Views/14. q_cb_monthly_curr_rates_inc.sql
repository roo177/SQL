-- View: public.q_cb_monthly_curr_rates_inc

-- DROP VIEW public.q_cb_monthly_curr_rates_inc;

CREATE OR REPLACE VIEW public.q_cb_monthly_curr_rates_inc
 AS
 SELECT q_cb_qty_activem_works_monthly.rep_month,
    q_cb_qty_activem_works_monthly.pc,
    q_cb_qty_activem_works_monthly.exp_cb_mon,
    q_cb_monthly_curr_rates_activem.r_eur_try / q_cb_curr_base_val.r_eur_try - 1::numeric AS rt_eur_try,
    q_cb_monthly_curr_rates_activem.r_eur_usd / q_cb_curr_base_val.r_eur_usd - 1::numeric AS rt_eur_usd,
    q_cb_monthly_curr_rates_activem.r_usd_try / q_cb_curr_base_val.r_usd_try - 1::numeric AS rt_usd_try,
    q_cb_monthly_curr_rates_activem.r_usd_eur / q_cb_curr_base_val.r_usd_eur - 1::numeric AS rt_usd_eur
   FROM q_cb_qty_activem_works_monthly
     LEFT JOIN q_cb_monthly_curr_rates_activem ON q_cb_qty_activem_works_monthly.exp_cb_mon = q_cb_monthly_curr_rates_activem.exp_cb_mon AND q_cb_qty_activem_works_monthly.rep_month::text = q_cb_monthly_curr_rates_activem.rep_month::text
     LEFT JOIN q_cb_curr_base_val ON q_cb_qty_activem_works_monthly.rep_month::text = q_cb_curr_base_val.rep_month::text
  GROUP BY q_cb_qty_activem_works_monthly.rep_month, q_cb_qty_activem_works_monthly.pc, q_cb_qty_activem_works_monthly.exp_cb_mon, (q_cb_monthly_curr_rates_activem.r_eur_try / q_cb_curr_base_val.r_eur_try - 1::numeric), (q_cb_monthly_curr_rates_activem.r_eur_usd / q_cb_curr_base_val.r_eur_usd - 1::numeric), (q_cb_monthly_curr_rates_activem.r_usd_try / q_cb_curr_base_val.r_usd_try - 1::numeric), (q_cb_monthly_curr_rates_activem.r_usd_eur / q_cb_curr_base_val.r_usd_eur - 1::numeric);

ALTER TABLE public.q_cb_monthly_curr_rates_inc
    OWNER TO ictasadmin;

