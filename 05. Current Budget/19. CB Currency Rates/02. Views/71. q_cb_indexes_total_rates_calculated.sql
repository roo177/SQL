-- View: public.q_cb_indexes_total_rates_calculated

-- DROP VIEW public.q_cb_indexes_total_rates_calculated;

CREATE OR REPLACE VIEW public.q_cb_indexes_total_rates_calculated
 AS
 SELECT q_cb_monthly_real_plan_2022.year,
    q_cb_monthly_real_plan_2022.month,
    q_cb_monthly_real_plan_2022.cb_ufe_m,
    q_cb_monthly_real_plan_2022.cb_tufe_m,
    q_cb_monthly_real_plan_2022.cb_inf_usd_m,
    q_cb_monthly_real_plan_2022.cb_inf_eur_m,
    q_cb_monthly_real_plan_2022.cb_metal_m,
    q_cb_monthly_real_plan_2022.cb_electricity_m,
    q_cb_monthly_real_plan_2022.cb_cement_m,
    q_cb_monthly_real_plan_2022.cb_petrol_m,
    q_cb_monthly_real_plan_2022.cb_usdtry_m,
    q_cb_monthly_real_plan_2022.cb_eurtry_m
   FROM q_cb_monthly_real_plan_2022
UNION
 SELECT q_cb_monthly_real_plan_2023.year,
    q_cb_monthly_real_plan_2023.month,
    q_cb_monthly_real_plan_2023.cb_ufe AS cb_ufe_m,
    q_cb_monthly_real_plan_2023.cb_tufe AS cb_tufe_m,
    q_cb_monthly_real_plan_2023.cb_inf_usd AS cb_inf_usd_m,
    q_cb_monthly_real_plan_2023.cb_inf_eur AS cb_inf_eur_m,
    q_cb_monthly_real_plan_2023.cb_metal AS cb_metal_m,
    q_cb_monthly_real_plan_2023.cb_electricity AS cb_electricity_m,
    q_cb_monthly_real_plan_2023.cb_cement AS cb_cement_m,
    q_cb_monthly_real_plan_2023.cb_petrol AS cb_petrol_m,
    q_cb_monthly_real_plan_2023.cb_usdtry AS cb_usdtry_m,
    q_cb_monthly_real_plan_2023.cb_eurtry AS cb_eurtry_m
   FROM q_cb_monthly_real_plan_2023
UNION
 SELECT q_cb_monthly_real_plan_2024.year,
    q_cb_monthly_real_plan_2024.month,
    q_cb_monthly_real_plan_2024.cb_ufe AS cb_ufe_m,
    q_cb_monthly_real_plan_2024.cb_tufe AS cb_tufe_m,
    q_cb_monthly_real_plan_2024.cb_inf_usd AS cb_inf_usd_m,
    q_cb_monthly_real_plan_2024.cb_inf_eur AS cb_inf_eur_m,
    q_cb_monthly_real_plan_2024.cb_metal AS cb_metal_m,
    q_cb_monthly_real_plan_2024.cb_electricity AS cb_electricity_m,
    q_cb_monthly_real_plan_2024.cb_cement AS cb_cement_m,
    q_cb_monthly_real_plan_2024.cb_petrol AS cb_petrol_m,
    q_cb_monthly_real_plan_2024.cb_usdtry AS cb_usdtry_m,
    q_cb_monthly_real_plan_2024.cb_eurtry AS cb_eurtry_m
   FROM q_cb_monthly_real_plan_2024
UNION
 SELECT q_cb_monthly_real_plan_2025.year,
    q_cb_monthly_real_plan_2025.month,
    q_cb_monthly_real_plan_2025.cb_ufe AS cb_ufe_m,
    q_cb_monthly_real_plan_2025.cb_tufe AS cb_tufe_m,
    q_cb_monthly_real_plan_2025.cb_inf_usd AS cb_inf_usd_m,
    q_cb_monthly_real_plan_2025.cb_inf_eur AS cb_inf_eur_m,
    q_cb_monthly_real_plan_2025.cb_metal AS cb_metal_m,
    q_cb_monthly_real_plan_2025.cb_electricity AS cb_electricity_m,
    q_cb_monthly_real_plan_2025.cb_cement AS cb_cement_m,
    q_cb_monthly_real_plan_2025.cb_petrol AS cb_petrol_m,
    q_cb_monthly_real_plan_2025.cb_usdtry AS cb_usdtry_m,
    q_cb_monthly_real_plan_2025.cb_eurtry AS cb_eurtry_m
   FROM q_cb_monthly_real_plan_2025
UNION
 SELECT q_cb_monthly_real_plan_2026.year,
    q_cb_monthly_real_plan_2026.month,
    q_cb_monthly_real_plan_2026.cb_ufe AS cb_ufe_m,
    q_cb_monthly_real_plan_2026.cb_tufe AS cb_tufe_m,
    q_cb_monthly_real_plan_2026.cb_inf_usd AS cb_inf_usd_m,
    q_cb_monthly_real_plan_2026.cb_inf_eur AS cb_inf_eur_m,
    q_cb_monthly_real_plan_2026.cb_metal AS cb_metal_m,
    q_cb_monthly_real_plan_2026.cb_electricity AS cb_electricity_m,
    q_cb_monthly_real_plan_2026.cb_cement AS cb_cement_m,
    q_cb_monthly_real_plan_2026.cb_petrol AS cb_petrol_m,
    q_cb_monthly_real_plan_2026.cb_usdtry AS cb_usdtry_m,
    q_cb_monthly_real_plan_2026.cb_eurtry AS cb_eurtry_m
   FROM q_cb_monthly_real_plan_2026
UNION
 SELECT q_cb_monthly_real_plan_2027.year,
    q_cb_monthly_real_plan_2027.month,
    q_cb_monthly_real_plan_2027.cb_ufe AS cb_ufe_m,
    q_cb_monthly_real_plan_2027.cb_tufe AS cb_tufe_m,
    q_cb_monthly_real_plan_2027.cb_inf_usd AS cb_inf_usd_m,
    q_cb_monthly_real_plan_2027.cb_inf_eur AS cb_inf_eur_m,
    q_cb_monthly_real_plan_2027.cb_metal AS cb_metal_m,
    q_cb_monthly_real_plan_2027.cb_electricity AS cb_electricity_m,
    q_cb_monthly_real_plan_2027.cb_cement AS cb_cement_m,
    q_cb_monthly_real_plan_2027.cb_petrol AS cb_petrol_m,
    q_cb_monthly_real_plan_2027.cb_usdtry AS cb_usdtry_m,
    q_cb_monthly_real_plan_2027.cb_eurtry AS cb_eurtry_m
   FROM q_cb_monthly_real_plan_2027;

ALTER TABLE public.q_cb_indexes_total_rates_calculated
    OWNER TO ictasadmin;

