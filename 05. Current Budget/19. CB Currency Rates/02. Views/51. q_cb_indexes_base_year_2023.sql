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

