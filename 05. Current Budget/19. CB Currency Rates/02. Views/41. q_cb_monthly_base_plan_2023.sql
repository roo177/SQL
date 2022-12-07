-- View: public.q_cb_monthly_base_plan_2023

-- DROP VIEW public.q_cb_monthly_base_plan_2023;

CREATE OR REPLACE VIEW public.q_cb_monthly_base_plan_2023
 AS
 SELECT t_months.year,
    t_months.month,
    (1::numeric + t_cb_indexes_input.cb_ufe) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_ufe_m,
    (1::numeric + t_cb_indexes_input.cb_tufe) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_tufe_m,
    (1::numeric + t_cb_indexes_input.cb_inf_usd) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_inf_usd_m,
    (1::numeric + t_cb_indexes_input.cb_inf_eur) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_inf_eur_m,
    (1::numeric + t_cb_indexes_input.cb_metal) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_metal_m,
    (1::numeric + t_cb_indexes_input.cb_electricity) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_electricity_m,
    (1::numeric + t_cb_indexes_input.cb_cement) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_cement_m,
    (1::numeric + t_cb_indexes_input.cb_petrol) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_petrol_m,
    (1::numeric + t_cb_indexes_input.cb_usdtry) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_usdtry_m,
    (1::numeric + t_cb_indexes_input.cb_eurtry) ^ (get_month(t_months.month)::numeric / 12::numeric) AS cb_eurtry_m
   FROM t_months
     LEFT JOIN t_cb_indexes_input ON t_months.year = t_cb_indexes_input.cb_year::text
  WHERE t_months.year = '2023'::text;

ALTER TABLE public.q_cb_monthly_base_plan_2023
    OWNER TO ictasadmin;

