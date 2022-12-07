CREATE OR REPLACE FUNCTION month(date) RETURNS integer
AS $$
      SELECT extract(MONTH FROM $1)::integer;
$$ LANGUAGE sql IMMUTABLE;


-- View: public.q_cb_indexes_actual_lastm

-- DROP VIEW public.q_cb_indexes_actual_lastm;

CREATE OR REPLACE VIEW public.q_cb_indexes_actual_lastm
 AS
 SELECT t.cb_month,
    t.cb_ufe_a,
    t.cb_tufe_a,
    t.cb_inf_usd_a,
    t.cb_inf_eur_a,
    t.cb_metal_a,
    t.cb_electricity_a,
    t.cb_cement_a,
    t.cb_petrol_a,
    t.cb_usdtry_a,
    t.cb_eurtry_a
   FROM ( SELECT t_cb_indexes_monthly_input.cb_month,
            t_cb_indexes_monthly_input.cb_ufe AS cb_ufe_a,
            t_cb_indexes_monthly_input.cb_tufe AS cb_tufe_a,
            t_cb_indexes_monthly_input.cb_inf_usd AS cb_inf_usd_a,
            t_cb_indexes_monthly_input.cb_inf_eur AS cb_inf_eur_a,
            t_cb_indexes_monthly_input.cb_metal AS cb_metal_a,
            t_cb_indexes_monthly_input.cb_electricity AS cb_electricity_a,
            t_cb_indexes_monthly_input.cb_cement AS cb_cement_a,
            t_cb_indexes_monthly_input.cb_petrol AS cb_petrol_a,
            t_cb_indexes_monthly_input.cb_usdtry AS cb_usdtry_a,
            t_cb_indexes_monthly_input.cb_eurtry AS cb_eurtry_a
           FROM t_cb_indexes_monthly_input
          ORDER BY t_cb_indexes_monthly_input.cb_month DESC) t
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_actual_lastm
    OWNER TO ictasadmin;

-- View: public.q_cb_monthly_real_plan_2022

-- DROP VIEW public.q_cb_monthly_real_plan_2022;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2022
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
  WHERE t_months.year = '2022'::text;

ALTER TABLE public.q_cb_monthly_real_plan_2022
    OWNER TO ictasadmin;


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

-- View: public.q_cb_monthly_base_plan_2024

-- DROP VIEW public.q_cb_monthly_base_plan_2024;

CREATE OR REPLACE VIEW public.q_cb_monthly_base_plan_2024
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
  WHERE t_months.year = '2024'::text;

ALTER TABLE public.q_cb_monthly_base_plan_2024
    OWNER TO ictasadmin;

-- View: public.q_cb_monthly_base_plan_2025

-- DROP VIEW public.q_cb_monthly_base_plan_2025;

CREATE OR REPLACE VIEW public.q_cb_monthly_base_plan_2025
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
  WHERE t_months.year = '2025'::text;

ALTER TABLE public.q_cb_monthly_base_plan_2025
    OWNER TO ictasadmin;

-- View: public.q_cb_monthly_base_plan_2026

-- DROP VIEW public.q_cb_monthly_base_plan_2026;

CREATE OR REPLACE VIEW public.q_cb_monthly_base_plan_2026
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
  WHERE t_months.year = '2026'::text;

ALTER TABLE public.q_cb_monthly_base_plan_2026
    OWNER TO ictasadmin;

-- View: public.q_cb_monthly_base_plan_2027

-- DROP VIEW public.q_cb_monthly_base_plan_2027;

CREATE OR REPLACE VIEW public.q_cb_monthly_base_plan_2027
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
  WHERE t_months.year = '2027'::text;

ALTER TABLE public.q_cb_monthly_base_plan_2027
    OWNER TO ictasadmin;

-- View: public.q_cb_indexes_base_year_2023

-- DROP VIEW public.q_cb_indexes_base_year_2023;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2023
 AS
 SELECT t_cb_indexes_input.cb_ufe + 1::numeric AS ufe,
    t_cb_indexes_input.cb_tufe + 1::numeric AS tufe,
    t_cb_indexes_input.cb_inf_usd + 1::numeric AS inf_usd,
    t_cb_indexes_input.cb_inf_eur + 1::numeric AS inf_eur,
    t_cb_indexes_input.cb_metal + 1::numeric AS metal,
    t_cb_indexes_input.cb_electricity + 1::numeric AS electricity,
    t_cb_indexes_input.cb_cement + 1::numeric AS cement,
    t_cb_indexes_input.cb_petrol + 1::numeric AS petrol,
    t_cb_indexes_input.cb_usdtry + 1::numeric AS usdtry,
    t_cb_indexes_input.cb_eurtry + 1::numeric AS eurtry,
    2023 AS base_year
   FROM t_cb_indexes_input
  WHERE t_cb_indexes_input.cb_year::text = '2022'::text;

ALTER TABLE public.q_cb_indexes_base_year_2023
    OWNER TO ictasadmin;

-- View: public.q_cb_monthly_real_plan_2023

-- DROP VIEW public.s;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2023
 AS
 SELECT q_cb_monthly_base_plan_2023.year,
    q_cb_monthly_base_plan_2023.month,
    q_cb_monthly_base_plan_2023.cb_ufe_m * q_cb_indexes_base_year_2023.ufe AS cb_ufe,
    q_cb_monthly_base_plan_2023.cb_tufe_m * q_cb_indexes_base_year_2023.tufe AS cb_tufe,
    q_cb_monthly_base_plan_2023.cb_inf_usd_m * q_cb_indexes_base_year_2023.inf_usd AS cb_inf_usd,
    q_cb_monthly_base_plan_2023.cb_inf_eur_m * q_cb_indexes_base_year_2023.inf_eur AS cb_inf_eur,
    q_cb_monthly_base_plan_2023.cb_metal_m * q_cb_indexes_base_year_2023.metal AS cb_metal,
    q_cb_monthly_base_plan_2023.cb_electricity_m * q_cb_indexes_base_year_2023.electricity AS cb_electricity,
    q_cb_monthly_base_plan_2023.cb_cement_m * q_cb_indexes_base_year_2023.cement AS cb_cement,
    q_cb_monthly_base_plan_2023.cb_petrol_m * q_cb_indexes_base_year_2023.petrol AS cb_petrol,
    q_cb_monthly_base_plan_2023.cb_usdtry_m * q_cb_indexes_base_year_2023.usdtry AS cb_usdtry,
    q_cb_monthly_base_plan_2023.cb_eurtry_m * q_cb_indexes_base_year_2023.eurtry AS cb_eurtry
   FROM q_cb_monthly_base_plan_2023,
    q_cb_indexes_base_year_2023;

ALTER TABLE public.q_cb_monthly_real_plan_2023
    OWNER TO ictasadmin;

-- View: public.q_cb_indexes_base_year_2024

-- DROP VIEW public.q_cb_indexes_base_year_2024;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2024
 AS
 SELECT foo.year,
    foo.month,
    foo.ufe,
    foo.tufe,
    foo.inf_usd,
    foo.inf_eur,
    foo.metal,
    foo.electricity,
    foo.cement,
    foo.petrol,
    foo.usdtry,
    foo.eurtry
   FROM ( SELECT q_cb_monthly_real_plan_2023.year,
            q_cb_monthly_real_plan_2023.month,
            q_cb_monthly_real_plan_2023.cb_ufe AS ufe,
            q_cb_monthly_real_plan_2023.cb_tufe AS tufe,
            q_cb_monthly_real_plan_2023.cb_inf_usd AS inf_usd,
            q_cb_monthly_real_plan_2023.cb_inf_eur AS inf_eur,
            q_cb_monthly_real_plan_2023.cb_metal AS metal,
            q_cb_monthly_real_plan_2023.cb_electricity AS electricity,
            q_cb_monthly_real_plan_2023.cb_cement AS cement,
            q_cb_monthly_real_plan_2023.cb_petrol AS petrol,
            q_cb_monthly_real_plan_2023.cb_usdtry AS usdtry,
            q_cb_monthly_real_plan_2023.cb_eurtry AS eurtry
           FROM q_cb_monthly_real_plan_2023
          GROUP BY q_cb_monthly_real_plan_2023.year, q_cb_monthly_real_plan_2023.month, q_cb_monthly_real_plan_2023.cb_ufe, q_cb_monthly_real_plan_2023.cb_tufe, q_cb_monthly_real_plan_2023.cb_inf_usd, q_cb_monthly_real_plan_2023.cb_inf_eur, q_cb_monthly_real_plan_2023.cb_metal, q_cb_monthly_real_plan_2023.cb_electricity, q_cb_monthly_real_plan_2023.cb_cement, q_cb_monthly_real_plan_2023.cb_petrol, q_cb_monthly_real_plan_2023.cb_usdtry, q_cb_monthly_real_plan_2023.cb_eurtry
          ORDER BY q_cb_monthly_real_plan_2023.month DESC) foo
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_base_year_2024
    OWNER TO ictasadmin;

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


    -- View: public.q_cb_indexes_base_year_2025

-- DROP VIEW public.q_cb_indexes_base_year_2025;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2025
 AS
 SELECT foo.year,
    foo.month,
    foo.ufe,
    foo.tufe,
    foo.inf_usd,
    foo.inf_eur,
    foo.metal,
    foo.electricity,
    foo.cement,
    foo.petrol,
    foo.usdtry,
    foo.eurtry
   FROM ( SELECT q_cb_monthly_real_plan_2024.year,
            q_cb_monthly_real_plan_2024.month,
            q_cb_monthly_real_plan_2024.cb_ufe AS ufe,
            q_cb_monthly_real_plan_2024.cb_tufe AS tufe,
            q_cb_monthly_real_plan_2024.cb_inf_usd AS inf_usd,
            q_cb_monthly_real_plan_2024.cb_inf_eur AS inf_eur,
            q_cb_monthly_real_plan_2024.cb_metal AS metal,
            q_cb_monthly_real_plan_2024.cb_electricity AS electricity,
            q_cb_monthly_real_plan_2024.cb_cement AS cement,
            q_cb_monthly_real_plan_2024.cb_petrol AS petrol,
            q_cb_monthly_real_plan_2024.cb_usdtry AS usdtry,
            q_cb_monthly_real_plan_2024.cb_eurtry AS eurtry
           FROM q_cb_monthly_real_plan_2024
          GROUP BY q_cb_monthly_real_plan_2024.year, q_cb_monthly_real_plan_2024.month, q_cb_monthly_real_plan_2024.cb_ufe, q_cb_monthly_real_plan_2024.cb_tufe, q_cb_monthly_real_plan_2024.cb_inf_usd, q_cb_monthly_real_plan_2024.cb_inf_eur, q_cb_monthly_real_plan_2024.cb_metal, q_cb_monthly_real_plan_2024.cb_electricity, q_cb_monthly_real_plan_2024.cb_cement, q_cb_monthly_real_plan_2024.cb_petrol, q_cb_monthly_real_plan_2024.cb_usdtry, q_cb_monthly_real_plan_2024.cb_eurtry
          ORDER BY q_cb_monthly_real_plan_2024.month DESC) foo
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_base_year_2025
    OWNER TO ictasadmin;

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

    -- View: public.q_cb_indexes_base_year_2026

-- DROP VIEW public.q_cb_indexes_base_year_2026;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2026
 AS
 SELECT foo.year,
    foo.month,
    foo.ufe,
    foo.tufe,
    foo.inf_usd,
    foo.inf_eur,
    foo.metal,
    foo.electricity,
    foo.cement,
    foo.petrol,
    foo.usdtry,
    foo.eurtry
   FROM ( SELECT q_cb_monthly_real_plan_2025.year,
            q_cb_monthly_real_plan_2025.month,
            q_cb_monthly_real_plan_2025.cb_ufe AS ufe,
            q_cb_monthly_real_plan_2025.cb_tufe AS tufe,
            q_cb_monthly_real_plan_2025.cb_inf_usd AS inf_usd,
            q_cb_monthly_real_plan_2025.cb_inf_eur AS inf_eur,
            q_cb_monthly_real_plan_2025.cb_metal AS metal,
            q_cb_monthly_real_plan_2025.cb_electricity AS electricity,
            q_cb_monthly_real_plan_2025.cb_cement AS cement,
            q_cb_monthly_real_plan_2025.cb_petrol AS petrol,
            q_cb_monthly_real_plan_2025.cb_usdtry AS usdtry,
            q_cb_monthly_real_plan_2025.cb_eurtry AS eurtry
           FROM q_cb_monthly_real_plan_2025
          GROUP BY q_cb_monthly_real_plan_2025.year, q_cb_monthly_real_plan_2025.month, q_cb_monthly_real_plan_2025.cb_ufe, q_cb_monthly_real_plan_2025.cb_tufe, q_cb_monthly_real_plan_2025.cb_inf_usd, q_cb_monthly_real_plan_2025.cb_inf_eur, q_cb_monthly_real_plan_2025.cb_metal, q_cb_monthly_real_plan_2025.cb_electricity, q_cb_monthly_real_plan_2025.cb_cement, q_cb_monthly_real_plan_2025.cb_petrol, q_cb_monthly_real_plan_2025.cb_usdtry, q_cb_monthly_real_plan_2025.cb_eurtry
          ORDER BY q_cb_monthly_real_plan_2025.month DESC) foo
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_base_year_2026
    OWNER TO ictasadmin;

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

    -- View: public.q_cb_indexes_base_year_2027

-- DROP VIEW public.q_cb_indexes_base_year_2027;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2027
 AS
 SELECT foo.year,
    foo.month,
    foo.ufe,
    foo.tufe,
    foo.inf_usd,
    foo.inf_eur,
    foo.metal,
    foo.electricity,
    foo.cement,
    foo.petrol,
    foo.usdtry,
    foo.eurtry
   FROM ( SELECT q_cb_monthly_real_plan_2026.year,
            q_cb_monthly_real_plan_2026.month,
            q_cb_monthly_real_plan_2026.cb_ufe AS ufe,
            q_cb_monthly_real_plan_2026.cb_tufe AS tufe,
            q_cb_monthly_real_plan_2026.cb_inf_usd AS inf_usd,
            q_cb_monthly_real_plan_2026.cb_inf_eur AS inf_eur,
            q_cb_monthly_real_plan_2026.cb_metal AS metal,
            q_cb_monthly_real_plan_2026.cb_electricity AS electricity,
            q_cb_monthly_real_plan_2026.cb_cement AS cement,
            q_cb_monthly_real_plan_2026.cb_petrol AS petrol,
            q_cb_monthly_real_plan_2026.cb_usdtry AS usdtry,
            q_cb_monthly_real_plan_2026.cb_eurtry AS eurtry
           FROM q_cb_monthly_real_plan_2026
          GROUP BY q_cb_monthly_real_plan_2026.year, q_cb_monthly_real_plan_2026.month, q_cb_monthly_real_plan_2026.cb_ufe, q_cb_monthly_real_plan_2026.cb_tufe, q_cb_monthly_real_plan_2026.cb_inf_usd, q_cb_monthly_real_plan_2026.cb_inf_eur, q_cb_monthly_real_plan_2026.cb_metal, q_cb_monthly_real_plan_2026.cb_electricity, q_cb_monthly_real_plan_2026.cb_cement, q_cb_monthly_real_plan_2026.cb_petrol, q_cb_monthly_real_plan_2026.cb_usdtry, q_cb_monthly_real_plan_2026.cb_eurtry
          ORDER BY q_cb_monthly_real_plan_2026.month DESC) foo
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_base_year_2027
    OWNER TO ictasadmin;

    -- View: public.q_cb_monthly_real_plan_2027

-- DROP VIEW public.s;

CREATE OR REPLACE VIEW public.q_cb_monthly_real_plan_2027
 AS
 SELECT q_cb_monthly_base_plan_2027.year,
    q_cb_monthly_base_plan_2027.month,
    q_cb_monthly_base_plan_2027.cb_ufe_m * q_cb_indexes_base_year_2027.ufe AS cb_ufe,
    q_cb_monthly_base_plan_2027.cb_tufe_m * q_cb_indexes_base_year_2027.tufe AS cb_tufe,
    q_cb_monthly_base_plan_2027.cb_inf_usd_m * q_cb_indexes_base_year_2027.inf_usd AS cb_inf_usd,
    q_cb_monthly_base_plan_2027.cb_inf_eur_m * q_cb_indexes_base_year_2027.inf_eur AS cb_inf_eur,
    q_cb_monthly_base_plan_2027.cb_metal_m * q_cb_indexes_base_year_2027.metal AS cb_metal,
    q_cb_monthly_base_plan_2027.cb_electricity_m * q_cb_indexes_base_year_2027.electricity AS cb_electricity,
    q_cb_monthly_base_plan_2027.cb_cement_m * q_cb_indexes_base_year_2027.cement AS cb_cement,
    q_cb_monthly_base_plan_2027.cb_petrol_m * q_cb_indexes_base_year_2027.petrol AS cb_petrol,
    q_cb_monthly_base_plan_2027.cb_usdtry_m * q_cb_indexes_base_year_2027.usdtry AS cb_usdtry,
    q_cb_monthly_base_plan_2027.cb_eurtry_m * q_cb_indexes_base_year_2027.eurtry AS cb_eurtry
   FROM q_cb_monthly_base_plan_2027,
    q_cb_indexes_base_year_2027;

ALTER TABLE public.q_cb_monthly_real_plan_2027
    OWNER TO ictasadmin;


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

    
-- View: public.q_cb_indexes_union_pgre

-- DROP VIEW public.q_cb_indexes_union_pgre;

CREATE OR REPLACE VIEW public.q_cb_indexes_union_pgre
 AS
 SELECT t_cb_indexes_monthly_input.cb_month,
    t_cb_indexes_monthly_input.cb_ufe,
    t_cb_indexes_monthly_input.cb_tufe,
    t_cb_indexes_monthly_input.cb_inf_usd,
    t_cb_indexes_monthly_input.cb_inf_eur,
    t_cb_indexes_monthly_input.cb_metal,
    t_cb_indexes_monthly_input.cb_electricity,
    t_cb_indexes_monthly_input.cb_cement,
    t_cb_indexes_monthly_input.cb_petrol,
    t_cb_indexes_monthly_input.cb_usdtry,
    t_cb_indexes_monthly_input.cb_eurtry
   FROM t_cb_indexes_monthly_input
UNION
 SELECT q_cb_indexes_calculated.month AS cb_month,
    q_cb_indexes_calculated.cb_ufe,
    q_cb_indexes_calculated.cb_tufe,
    q_cb_indexes_calculated.cb_inf_usd,
    q_cb_indexes_calculated.cb_inf_eur,
    q_cb_indexes_calculated.cb_metal,
    q_cb_indexes_calculated.cb_electricity,
    q_cb_indexes_calculated.cb_cement,
    q_cb_indexes_calculated.cb_petrol,
    q_cb_indexes_calculated.cb_usdtry,
    q_cb_indexes_calculated.cb_eurtry
   FROM q_cb_indexes_calculated;

ALTER TABLE public.q_cb_indexes_union_pgre
    OWNER TO ictasadmin;
