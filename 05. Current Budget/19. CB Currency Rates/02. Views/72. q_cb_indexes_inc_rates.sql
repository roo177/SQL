-- View: public.q_cb_indexes_inc_rates

-- DROP VIEW public.q_cb_indexes_inc_rates;

CREATE OR REPLACE VIEW public.q_cb_indexes_inc_rates
 AS
 SELECT q_cb_indexes_total_rates_calculated.year,
    q_cb_indexes_total_rates_calculated.month,
    q_cb_indexes_total_rates_calculated.cb_ufe_m / q_cb_indexes_base_rate.ufe AS cba_ufe,
    q_cb_indexes_total_rates_calculated.cb_tufe_m / q_cb_indexes_base_rate.tufe AS cba_tufe,
    q_cb_indexes_total_rates_calculated.cb_inf_usd_m / q_cb_indexes_base_rate.inf_usd AS cba_inf_usd,
    q_cb_indexes_total_rates_calculated.cb_inf_eur_m / q_cb_indexes_base_rate.inf_eur AS cba_inf_eur,
    q_cb_indexes_total_rates_calculated.cb_metal_m / q_cb_indexes_base_rate.metal AS cba_metal,
    q_cb_indexes_total_rates_calculated.cb_electricity_m / q_cb_indexes_base_rate.electricity AS cba_electricity,
    q_cb_indexes_total_rates_calculated.cb_cement_m / q_cb_indexes_base_rate.cement AS cba_cement,
    q_cb_indexes_total_rates_calculated.cb_petrol_m / q_cb_indexes_base_rate.petrol AS cba_petrol,
    q_cb_indexes_total_rates_calculated.cb_usdtry_m / q_cb_indexes_base_rate.usdtry AS cba_usdtry,
    q_cb_indexes_total_rates_calculated.cb_eurtry_m / q_cb_indexes_base_rate.eurtry AS cba_eurtry
   FROM q_cb_indexes_total_rates_calculated,
    q_cb_indexes_base_rate;

ALTER TABLE public.q_cb_indexes_inc_rates
    OWNER TO ictasadmin;

