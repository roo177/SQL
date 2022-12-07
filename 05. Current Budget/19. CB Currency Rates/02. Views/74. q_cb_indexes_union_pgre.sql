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
