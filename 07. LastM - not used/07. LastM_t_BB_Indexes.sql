-- View: public.LastM_t_BB_Indexes

-- DROP VIEW public."LastM_t_BB_Indexes";

CREATE OR REPLACE VIEW public."LastM_t_BB_Indexes"
 AS
 SELECT t_BB_Indexes.g_Month,
    t_BB_Indexes.r_UFE,
    t_BB_Indexes.r_TUFE,
    t_BB_Indexes.r_INF_USD,
    t_BB_Indexes.r_INF_EUR,
    t_BB_Indexes.r_Metal,
    t_BB_Indexes.r_Petrol,
    t_BB_Indexes.r_Cement,
    t_BB_Indexes.r_Electricity,
    t_BB_Indexes.p_Code,
    t_BB_Indexes.rep_Month
   FROM t_BB_Indexes
  WHERE t_BB_Indexes.rep_Month::text = '2207'::text
  ORDER BY t_BB_Indexes.g_Month, t_BB_Indexes.p_Code, t_BB_Indexes.rep_Month;

ALTER TABLE public."LastM_t_BB_Indexes"
    OWNER TO ictasadmin;

