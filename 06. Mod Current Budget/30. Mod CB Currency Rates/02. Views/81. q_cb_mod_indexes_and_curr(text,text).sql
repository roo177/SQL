-- View: public.q_cb_mod_indexes_and_curr

-- DROP VIEW public.q_cb_mod_indexes_and_curr;

CREATE OR REPLACE VIEW public.q_cb_mod_indexes_and_curr
 AS
 SELECT q_cb_mod_monthly_curr_rates_inc.rep_month,
    q_cb_mod_monthly_curr_rates_inc.user_id,
    q_cb_mod_monthly_curr_rates_inc.session_id,
    q_cb_mod_monthly_curr_rates_inc.pc,
    q_cb_mod_monthly_curr_rates_inc.exp_cb_mon,
    q_cb_mod_monthly_curr_rates_inc.rt_eur_try,
    q_cb_mod_monthly_curr_rates_inc.rt_eur_usd,
    q_cb_mod_monthly_curr_rates_inc.rt_usd_try,
    q_cb_mod_monthly_curr_rates_inc.rt_usd_eur,
    t_cb_mod_indexes.bb_ufe,
    t_cb_mod_indexes.bb_tufe,
    t_cb_mod_indexes.bb_inf_usd,
    t_cb_mod_indexes.bb_inf_eur,
    t_cb_mod_indexes.bb_metal,
    t_cb_mod_indexes.bb_petrol,
    t_cb_mod_indexes.bb_cement,
    t_cb_mod_indexes.bb_electricity,
    t_cb_mod_indexes.rep_month_userid_sessionid,
    t_cb_mod_indexes.rm_month,
    t_cb_mod_indexes.jkey_curr_index,
    (((q_cb_mod_monthly_curr_rates_inc.pc::text || '.'::text) || q_cb_mod_monthly_curr_rates_inc.rep_month::text) || '.'::text) || ((((EXTRACT(day FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text || '.'::text) || EXTRACT(month FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text) || '.'::text) || EXTRACT(year FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text) AS pc_rep_month
   FROM q_cb_mod_monthly_curr_rates_inc
     LEFT JOIN t_cb_mod_indexes ON q_cb_mod_monthly_curr_rates_inc.jkey_curr_index::text = t_cb_mod_indexes.jkey_curr_index::text
  GROUP BY ((((q_cb_mod_monthly_curr_rates_inc.pc::text || '.'::text) || q_cb_mod_monthly_curr_rates_inc.rep_month::text) || '.'::text) || ((((EXTRACT(day FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text || '.'::text) || EXTRACT(month FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text) || '.'::text) || EXTRACT(year FROM q_cb_mod_monthly_curr_rates_inc.exp_cb_mon)::text)), t_cb_mod_indexes.jkey_curr_index, t_cb_mod_indexes.rm_month, t_cb_mod_indexes.rep_month_userid_sessionid, q_cb_mod_monthly_curr_rates_inc.rep_month, q_cb_mod_monthly_curr_rates_inc.user_id, q_cb_mod_monthly_curr_rates_inc.session_id, q_cb_mod_monthly_curr_rates_inc.pc, q_cb_mod_monthly_curr_rates_inc.exp_cb_mon, q_cb_mod_monthly_curr_rates_inc.rt_eur_try, q_cb_mod_monthly_curr_rates_inc.rt_eur_usd, q_cb_mod_monthly_curr_rates_inc.rt_usd_try, q_cb_mod_monthly_curr_rates_inc.rt_usd_eur, t_cb_mod_indexes.bb_ufe, t_cb_mod_indexes.bb_tufe, t_cb_mod_indexes.bb_inf_usd, t_cb_mod_indexes.bb_inf_eur, t_cb_mod_indexes.bb_metal, t_cb_mod_indexes.bb_petrol, t_cb_mod_indexes.bb_cement, t_cb_mod_indexes.bb_electricity;

ALTER TABLE public.q_cb_mod_indexes_and_curr
    OWNER TO ictasadmin;

