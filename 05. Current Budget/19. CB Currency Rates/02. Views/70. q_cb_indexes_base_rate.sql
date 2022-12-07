-- View: public.q_cb_indexes_base_rate

-- DROP VIEW public.q_cb_indexes_base_rate;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_rate
 AS
 SELECT q_cb_indexes_total_rates_calculated.year,
    q_cb_indexes_total_rates_calculated.month,
    q_cb_indexes_total_rates_calculated.cb_ufe_m AS ufe,
    q_cb_indexes_total_rates_calculated.cb_tufe_m AS tufe,
    q_cb_indexes_total_rates_calculated.cb_inf_usd_m AS inf_usd,
    q_cb_indexes_total_rates_calculated.cb_inf_eur_m AS inf_eur,
    q_cb_indexes_total_rates_calculated.cb_metal_m AS metal,
    q_cb_indexes_total_rates_calculated.cb_electricity_m AS electricity,
    q_cb_indexes_total_rates_calculated.cb_cement_m AS cement,
    q_cb_indexes_total_rates_calculated.cb_petrol_m AS petrol,
    q_cb_indexes_total_rates_calculated.cb_usdtry_m AS usdtry,
    q_cb_indexes_total_rates_calculated.cb_eurtry_m AS eurtry
   FROM q_cb_indexes_actual_lastm
     LEFT JOIN q_cb_indexes_total_rates_calculated ON q_cb_indexes_actual_lastm.cb_month = q_cb_indexes_total_rates_calculated.month;

ALTER TABLE public.q_cb_indexes_base_rate
    OWNER TO ictasadmin;

