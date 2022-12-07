-- View: public.q_cb_monthly_real_plan_2025

-- DROP VIEW public.s;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2025
 AS
 SELECT q_cb_monthly_base_plan_2025.year,
    q_cb_monthly_base_plan_2025.month,
    q_cb_monthly_base_plan_2025.cb_ufe_m * q_cb_indexes_base_year_2025.ufe AS cb_ufe,
    q_cb_monthly_base_plan_2025.cb_tufe_m * q_cb_indexes_base_year_2025.tufe AS cb_tufe,
    q_cb_monthly_base_plan_2025.cb_inf_usd_m * q_cb_indexes_base_year_2025.inf_usd AS cb_inf_usd,
    q_cb_monthly_base_plan_2025.cb_inf_eur_m * q_cb_indexes_base_year_2025.inf_eur AS cb_inf_eur,
    q_cb_monthly_base_plan_2025.cb_metal_m * q_cb_indexes_base_year_2025.metal AS cb_metal,
    q_cb_monthly_base_plan_2025.cb_electricity_m * q_cb_indexes_base_year_2025.electricity AS cb_electricity,
    q_cb_monthly_base_plan_2025.cb_cement_m * q_cb_indexes_base_year_2025.cement AS cb_cement,
    q_cb_monthly_base_plan_2025.cb_petrol_m * q_cb_indexes_base_year_2025.petrol AS cb_petrol,
    q_cb_monthly_base_plan_2025.cb_usdtry_m * q_cb_indexes_base_year_2025.usdtry AS cb_usdtry,
    q_cb_monthly_base_plan_2025.cb_eurtry_m * q_cb_indexes_base_year_2025.eurtry AS cb_eurtry
   FROM q_cb_monthly_base_plan_2025,
    q_cb_indexes_base_year_2025;

ALTER TABLE public.q_cb_monthly_real_plan_2025
    OWNER TO ictasadmin;