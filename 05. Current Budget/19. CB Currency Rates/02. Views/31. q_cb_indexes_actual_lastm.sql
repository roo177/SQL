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

