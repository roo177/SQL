-- View: public.q_cb_monthly_real_plan_2024

-- DROP VIEW public.s;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2024
 AS
 SELECT q_cb_monthly_base_plan_2024.year,
    q_cb_monthly_base_plan_2024.month,
    q_cb_monthly_base_plan_2024.cb_ufe_m * q_cb_indexes_base_year_2024.ufe AS cb_ufe,
    q_cb_monthly_base_plan_2024.cb_tufe_m * q_cb_indexes_base_year_2024.tufe AS cb_tufe,
    q_cb_monthly_base_plan_2024.cb_inf_usd_m * q_cb_indexes_base_year_2024.inf_usd AS cb_inf_usd,
    q_cb_monthly_base_plan_2024.cb_inf_eur_m * q_cb_indexes_base_year_2024.inf_eur AS cb_inf_eur,
    q_cb_monthly_base_plan_2024.cb_metal_m * q_cb_indexes_base_year_2024.metal AS cb_metal,
    q_cb_monthly_base_plan_2024.cb_electricity_m * q_cb_indexes_base_year_2024.electricity AS cb_electricity,
    q_cb_monthly_base_plan_2024.cb_cement_m * q_cb_indexes_base_year_2024.cement AS cb_cement,
    q_cb_monthly_base_plan_2024.cb_petrol_m * q_cb_indexes_base_year_2024.petrol AS cb_petrol,
    q_cb_monthly_base_plan_2024.cb_usdtry_m * q_cb_indexes_base_year_2024.usdtry AS cb_usdtry,
    q_cb_monthly_base_plan_2024.cb_eurtry_m * q_cb_indexes_base_year_2024.eurtry AS cb_eurtry
   FROM q_cb_monthly_base_plan_2024,
    q_cb_indexes_base_year_2024;

ALTER TABLE public.q_cb_monthly_real_plan_2024
    OWNER TO ictasadmin;