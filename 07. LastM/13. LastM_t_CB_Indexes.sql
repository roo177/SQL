-- View: public.LastM_t_CB_Indexes

-- DROP VIEW public."LastM_t_CB_Indexes";

CREATE OR REPLACE VIEW public."LastM_t_CB_Indexes"
 AS
 SELECT t_cb_indexes.rep_month AS "rep_Month",
    t_cb_indexes.g_month AS "g_Month",
    t_cb_indexes.bb_metal AS "bb_Metal",
    t_cb_indexes.bb_electricity AS "bb_Electricity",
    t_cb_indexes.bb_cement AS "bb_Cement",
    t_cb_indexes.bb_petrol AS "bb_Petrol",
    t_cb_indexes.bb_inf_usd AS "bb_INF_USD",
    t_cb_indexes.bb_inf_eur AS "bb_INF_EUR",
    t_cb_indexes.bb_ufe AS "bb_UFE",
    t_cb_indexes.bb_tufe AS "bb_TUFE"
   FROM t_cb_indexes
  WHERE t_cb_indexes.rep_month::text = '2207'::text
  ORDER BY t_cb_indexes.rep_month, t_cb_indexes.g_month;

ALTER TABLE public."LastM_t_CB_Indexes"
    OWNER TO ictasadmin;

