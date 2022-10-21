-- View: public.q_cb_exp_try

-- DROP VIEW public.q_cb_exp_try;

CREATE OR REPLACE VIEW public.q_cb_exp_try
 AS
 SELECT t_cb_exp_st.rep_month,
    t_cb_exp_st.pc,
    t_cb_exp_st.l_1,
    t_cb_exp_st.l_2,
    t_cb_exp_st.l_3,
    t_cb_exp_st.l_4,
    t_cb_exp_st.l_5,
    t_cb_exp_st.l_6,
    t_cb_exp_st.month,
    t_cb_exp_st.total_expense,
    t_cb_exp_st.curr,
        CASE
            WHEN t_cb_exp_st.curr::text = 'TRY'::text THEN t_cb_exp_st.total_expense
            ELSE
            CASE
                WHEN t_cb_exp_st.curr::text = 'USD'::text THEN t_cb_exp_st.total_expense * mon_curr_rates.r_usd_try::double precision
                ELSE t_cb_exp_st.total_expense * mon_curr_rates.r_eur_try::double precision
            END
        END AS try_expense,
    'TRY'::text AS up_curr_conv,
    t_cb_exp_st.key_r_pc_l6
   FROM t_cb_exp_st
     LEFT JOIN mon_curr_rates ON t_cb_exp_st.month = mon_curr_rates.month AND t_cb_exp_st.rep_month::text = mon_curr_rates.rep_month::text;

ALTER TABLE public.q_cb_exp_try
    OWNER TO ictasadmin;

