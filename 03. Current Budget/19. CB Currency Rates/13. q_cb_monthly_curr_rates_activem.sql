-- View: public.q_cb_monthly_curr_rates_activem

-- DROP VIEW public.q_cb_monthly_curr_rates_activem;

CREATE OR REPLACE VIEW public.q_cb_monthly_curr_rates_activem
 AS
 SELECT q_cb_qty_activem_works_monthly.rep_month,
    mon_curr_rates.r_eur_try,
    mon_curr_rates.r_eur_usd,
    mon_curr_rates.r_usd_eur,
    mon_curr_rates.r_usd_try,
    q_cb_qty_activem_works_monthly.exp_cb_mon
   FROM q_cb_qty_activem_works_monthly
     LEFT JOIN mon_curr_rates ON q_cb_qty_activem_works_monthly.exp_cb_mon = mon_curr_rates.month AND q_cb_qty_activem_works_monthly.rep_month::text = mon_curr_rates.rep_month::text
  GROUP BY q_cb_qty_activem_works_monthly.rep_month, mon_curr_rates.r_eur_try, mon_curr_rates.r_eur_usd, mon_curr_rates.r_usd_eur, mon_curr_rates.r_usd_try, q_cb_qty_activem_works_monthly.exp_cb_mon;

ALTER TABLE public.q_cb_monthly_curr_rates_activem
    OWNER TO ictasadmin;

