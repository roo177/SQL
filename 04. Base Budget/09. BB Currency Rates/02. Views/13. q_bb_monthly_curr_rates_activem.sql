-- View: public.q_bb_monthly_curr_rates_activem

DROP VIEW public.q_bb_monthly_curr_rates_activem CASCADE ;

CREATE OR REPLACE VIEW public.q_bb_monthly_curr_rates_activem
 AS
 SELECT q_bb_qty_activem_works_monthly.rep_month,
    q_bb_qty_activem_works_monthly.pc,
    t_bb_mon_curr_rates.r_eur_try,
    t_bb_mon_curr_rates.r_eur_usd,
    t_bb_mon_curr_rates.r_usd_eur,
    t_bb_mon_curr_rates.r_usd_try,
    q_bb_qty_activem_works_monthly.exp_base_mon
   FROM q_bb_qty_activem_works_monthly
     LEFT JOIN t_bb_mon_curr_rates ON q_bb_qty_activem_works_monthly.pc::text = t_bb_mon_curr_rates.pc::text AND q_bb_qty_activem_works_monthly.rep_month::text = t_bb_mon_curr_rates.rep_month::text AND q_bb_qty_activem_works_monthly.exp_base_mon = t_bb_mon_curr_rates.month
  GROUP BY q_bb_qty_activem_works_monthly.rep_month, q_bb_qty_activem_works_monthly.pc, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, q_bb_qty_activem_works_monthly.exp_base_mon;



