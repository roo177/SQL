-- View: public.q_cb_mod_curr_base_val

-- DROP VIEW public.q_cb_mod_curr_base_val;

CREATE OR REPLACE VIEW public.q_cb_mod_curr_base_val
 AS
 SELECT t_cb_mod_mon_curr_rates.user_id,
    t_cb_mod_mon_curr_rates.session_id,
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
   FROM q_cb_mod_curr_base_month
     LEFT JOIN t_cb_mod_mon_curr_rates ON q_cb_mod_curr_base_month.rep_month_date = t_cb_mod_mon_curr_rates.month AND q_cb_mod_curr_base_month.rep_month::text = t_cb_mod_mon_curr_rates.rep_month::text
  GROUP BY q_cb_mod_curr_base_month.rep_month_date, t_cb_mod_mon_curr_rates.user_id, t_cb_mod_mon_curr_rates.session_id, t_cb_mod_mon_curr_rates.r_eur_eur, t_cb_mod_mon_curr_rates.r_eur_try, t_cb_mod_mon_curr_rates.r_eur_usd, t_cb_mod_mon_curr_rates.r_try_eur, t_cb_mod_mon_curr_rates.r_try_try, t_cb_mod_mon_curr_rates.r_try_usd, t_cb_mod_mon_curr_rates.r_usd_eur, t_cb_mod_mon_curr_rates.r_usd_try, t_cb_mod_mon_curr_rates.r_usd_usd, q_cb_mod_curr_base_month.rep_month;

ALTER TABLE public.q_cb_mod_curr_base_val
    OWNER TO ictasadmin;

