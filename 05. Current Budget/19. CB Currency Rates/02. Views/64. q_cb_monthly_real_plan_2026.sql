-- View: public.q_cb_monthly_real_plan_2026

-- DROP VIEW public.s;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2026
 AS
 SELECT q_cb_monthly_base_plan_2026.year,
    q_cb_monthly_base_plan_2026.month,
    q_cb_monthly_base_plan_2026.cb_ufe_m * q_cb_indexes_base_year_2026.ufe AS cb_ufe,
    q_cb_monthly_base_plan_2026.cb_tufe_m * q_cb_indexes_base_year_2026.tufe AS cb_tufe,
    q_cb_monthly_base_plan_2026.cb_inf_usd_m * q_cb_indexes_base_year_2026.inf_usd AS cb_inf_usd,
    q_cb_monthly_base_plan_2026.cb_inf_eur_m * q_cb_indexes_base_year_2026.inf_eur AS cb_inf_eur,
    q_cb_monthly_base_plan_2026.cb_metal_m * q_cb_indexes_base_year_2026.metal AS cb_metal,
    q_cb_monthly_base_plan_2026.cb_electricity_m * q_cb_indexes_base_year_2026.electricity AS cb_electricity,
    q_cb_monthly_base_plan_2026.cb_cement_m * q_cb_indexes_base_year_2026.cement AS cb_cement,
    q_cb_monthly_base_plan_2026.cb_petrol_m * q_cb_indexes_base_year_2026.petrol AS cb_petrol,
    q_cb_monthly_base_plan_2026.cb_usdtry_m * q_cb_indexes_base_year_2026.usdtry AS cb_usdtry,
    q_cb_monthly_base_plan_2026.cb_eurtry_m * q_cb_indexes_base_year_2026.eurtry AS cb_eurtry
   FROM q_cb_monthly_base_plan_2026,
    q_cb_indexes_base_year_2026;

ALTER TABLE public.q_cb_monthly_real_plan_2026
    OWNER TO ictasadmin;