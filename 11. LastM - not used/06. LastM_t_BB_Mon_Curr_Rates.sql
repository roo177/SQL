-- View: public.LastM_t_BB_Mon_Curr_Rates

-- DROP VIEW public."LastM_t_BB_Mon_Curr_Rates";

CREATE OR REPLACE VIEW public."LastM_t_BB_Mon_Curr_Rates"
 AS
 SELECT t_bb_mon_curr_rates.rep_month AS "rep_Month",
    t_bb_mon_curr_rates.p_code AS "P_Code",
    t_bb_mon_curr_rates.month AS "Month",
    t_bb_mon_curr_rates.r_eur_eur AS "r_EUR_EUR",
    t_bb_mon_curr_rates.r_eur_try AS "r_EUR_TRY",
    t_bb_mon_curr_rates.r_eur_usd AS "r_EUR_USD",
    t_bb_mon_curr_rates.r_try_eyr AS "r_TRY_EUR",
    t_bb_mon_curr_rates.r_try_try AS "r_TRY_TRY",
    t_bb_mon_curr_rates.r_try_usd AS "r_TRY_USD",
    t_bb_mon_curr_rates.r_usd_eur AS "r_USD_EUR",
    t_bb_mon_curr_rates."r_USD_TRY",
    t_bb_mon_curr_rates."r_USD_USD"
   FROM t_bb_mon_curr_rates
  WHERE t_bb_mon_curr_rates.rep_month::text = '2207'::text
  ORDER BY t_bb_mon_curr_rates.rep_month, t_bb_mon_curr_rates.p_code, t_bb_mon_curr_rates.month;

ALTER TABLE public."LastM_t_BB_Mon_Curr_Rates"
    OWNER TO ictasadmin;

