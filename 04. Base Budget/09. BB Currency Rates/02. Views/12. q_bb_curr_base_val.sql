-- View: public.q_bb_curr_base_val

-- DROP VIEW public.q_bb_curr_base_val;

CREATE OR REPLACE VIEW public.q_bb_curr_base_val
 AS
 SELECT q_bb_curr_base_month.rep_month,
    q_bb_curr_base_month.rep_month_date,
    t_bb_mon_curr_rates.r_eur_eur,
    t_bb_mon_curr_rates.r_eur_try,
    t_bb_mon_curr_rates.r_eur_usd,
    t_bb_mon_curr_rates.r_try_eur,
    t_bb_mon_curr_rates.r_try_try,
    t_bb_mon_curr_rates.r_try_usd,
    t_bb_mon_curr_rates.r_usd_eur,
    t_bb_mon_curr_rates.r_usd_try,
    t_bb_mon_curr_rates.r_usd_usd,
    q_bb_curr_base_month.pc
   FROM q_bb_curr_base_month
     LEFT JOIN t_bb_mon_curr_rates ON q_bb_curr_base_month.pc::text = t_bb_mon_curr_rates.pc::text AND q_bb_curr_base_month.rep_month_date = t_bb_mon_curr_rates.month AND q_bb_curr_base_month.rep_month::text = t_bb_mon_curr_rates.rep_month::text
  GROUP BY q_bb_curr_base_month.rep_month, q_bb_curr_base_month.rep_month_date, t_bb_mon_curr_rates.r_eur_eur, t_bb_mon_curr_rates.r_eur_try, t_bb_mon_curr_rates.r_eur_usd, t_bb_mon_curr_rates.r_try_eur, t_bb_mon_curr_rates.r_try_try, t_bb_mon_curr_rates.r_try_usd, t_bb_mon_curr_rates.r_usd_eur, t_bb_mon_curr_rates.r_usd_try, t_bb_mon_curr_rates.r_usd_usd, q_bb_curr_base_month.pc;

ALTER TABLE public.q_bb_curr_base_val
    OWNER TO ictasadmin;

