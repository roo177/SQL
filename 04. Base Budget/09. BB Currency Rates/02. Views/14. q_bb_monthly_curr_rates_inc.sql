-- View: public.q_bb_monthly_curr_rates_inc

DROP VIEW public.q_bb_monthly_curr_rates_inc;

CREATE OR REPLACE VIEW public.q_bb_monthly_curr_rates_inc
 AS
 SELECT q_bb_qty_activem_works_monthly.rep_month,
    q_bb_qty_activem_works_monthly.pc,
    q_bb_qty_activem_works_monthly.exp_base_mon,
    q_bb_monthly_curr_rates_activem.r_eur_try / q_bb_curr_base_val.r_eur_try - 1::numeric AS rt_eur_try,
    (1 / (q_bb_monthly_curr_rates_activem.r_usd_eur / q_bb_curr_base_val.r_usd_eur)) - 1::numeric AS rt_eur_usd,
    q_bb_monthly_curr_rates_activem.r_usd_try / q_bb_curr_base_val.r_usd_try - 1::numeric AS rt_usd_try,
    q_bb_monthly_curr_rates_activem.r_usd_eur / q_bb_curr_base_val.r_usd_eur - 1::numeric AS rt_usd_eur
   FROM q_bb_qty_activem_works_monthly
     LEFT JOIN q_bb_monthly_curr_rates_activem ON q_bb_qty_activem_works_monthly.exp_base_mon = q_bb_monthly_curr_rates_activem.exp_base_mon AND q_bb_qty_activem_works_monthly.pc = q_bb_monthly_curr_rates_activem.pc AND q_bb_qty_activem_works_monthly.rep_month::text = q_bb_monthly_curr_rates_activem.rep_month::text
     LEFT JOIN q_bb_curr_base_val ON q_bb_qty_activem_works_monthly.pc::text = q_bb_curr_base_val.pc::text AND q_bb_qty_activem_works_monthly.rep_month::text = q_bb_curr_base_val.rep_month::text
  GROUP BY q_bb_qty_activem_works_monthly.rep_month, q_bb_qty_activem_works_monthly.pc, q_bb_qty_activem_works_monthly.exp_base_mon, (q_bb_monthly_curr_rates_activem.r_eur_try / q_bb_curr_base_val.r_eur_try - 1::numeric), ((1 / (q_bb_monthly_curr_rates_activem.r_usd_eur / q_bb_curr_base_val.r_usd_eur)) - 1::numeric), (q_bb_monthly_curr_rates_activem.r_usd_try / q_bb_curr_base_val.r_usd_try - 1::numeric), (q_bb_monthly_curr_rates_activem.r_usd_eur / q_bb_curr_base_val.r_usd_eur - 1::numeric);

ALTER TABLE public.q_bb_monthly_curr_rates_inc
    OWNER TO ictasadmin;