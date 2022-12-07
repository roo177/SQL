-- View: public.q_cb_indexes_calculated

-- DROP VIEW public.q_cb_indexes_calculated;

CREATE OR REPLACE VIEW public.q_cb_indexes_calculated
 AS
 SELECT q_cb_indexes_inc_rates.month,
    q_cb_indexes_inc_rates.cba_ufe * q_cb_indexes_actual_lastm.cb_ufe_a AS cb_ufe,
    q_cb_indexes_inc_rates.cba_tufe * q_cb_indexes_actual_lastm.cb_tufe_a AS cb_tufe,
    q_cb_indexes_inc_rates.cba_inf_usd * q_cb_indexes_actual_lastm.cb_inf_usd_a AS cb_inf_usd,
    q_cb_indexes_inc_rates.cba_inf_eur * q_cb_indexes_actual_lastm.cb_inf_eur_a AS cb_inf_eur,
    q_cb_indexes_inc_rates.cba_metal * q_cb_indexes_actual_lastm.cb_metal_a AS cb_metal,
    q_cb_indexes_inc_rates.cba_electricity * q_cb_indexes_actual_lastm.cb_electricity_a AS cb_electricity,
    q_cb_indexes_inc_rates.cba_cement * q_cb_indexes_actual_lastm.cb_cement_a AS cb_cement,
    q_cb_indexes_inc_rates.cba_petrol * q_cb_indexes_actual_lastm.cb_petrol_a AS cb_petrol,
    q_cb_indexes_inc_rates.cba_usdtry * q_cb_indexes_actual_lastm.cb_usdtry_a AS cb_usdtry,
    q_cb_indexes_inc_rates.cba_eurtry * q_cb_indexes_actual_lastm.cb_eurtry_a AS cb_eurtry
   FROM q_cb_indexes_actual_lastm,
    q_cb_indexes_inc_rates
  WHERE q_cb_indexes_inc_rates.month > q_cb_indexes_actual_lastm.cb_month;

ALTER TABLE public.q_cb_indexes_calculated
    OWNER TO ictasadmin;
