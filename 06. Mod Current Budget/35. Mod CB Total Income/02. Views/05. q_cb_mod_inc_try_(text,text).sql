-- View: public.q_cb_mod_inc_try

DROP VIEW public.q_cb_mod_inc_try;

CREATE OR REPLACE VIEW public.q_cb_mod_inc_try
 AS
 SELECT t_cb_mod_inc_st.user_id,
    t_cb_mod_inc_st.session_id,
    t_cb_mod_inc_st.rep_month,
    t_cb_mod_inc_st.pc,
    t_cb_mod_inc_st.l_1,
    t_cb_mod_inc_st.l_2,
    t_cb_mod_inc_st.l_3,
    t_cb_mod_inc_st.l_4,
    t_cb_mod_inc_st.l_5,
    t_cb_mod_inc_st.l_6,
    t_cb_mod_inc_st.inc_total,
    t_cb_mod_inc_st.curr,
        CASE
            WHEN t_cb_mod_inc_st.curr::text = 'TRY'::text THEN t_cb_mod_inc_st.inc_total
            ELSE
            CASE
                WHEN t_cb_mod_inc_st.curr::text = 'EUR'::text THEN t_cb_mod_inc_st.inc_total * t_cb_mod_mon_curr_rates.r_eur_try::double precision
                ELSE t_cb_mod_inc_st.inc_total * t_cb_mod_mon_curr_rates.r_usd_try::double precision
            END
        END AS try_income,
    'TRY'::text AS up_curr_conv,
    t_cb_mod_inc_st.inc_base_mon AS month,
    t_cb_mod_inc_st.key_r_pc_l6
   FROM t_cb_mod_inc_st
     LEFT JOIN t_cb_mod_mon_curr_rates ON t_cb_mod_inc_st.inc_base_mon = t_cb_mod_mon_curr_rates.month AND t_cb_mod_inc_st.rep_month::text = t_cb_mod_mon_curr_rates.rep_month::text AND t_cb_mod_inc_st.session_id = t_cb_mod_mon_curr_rates.session_id::text AND t_cb_mod_inc_st.user_id = t_cb_mod_mon_curr_rates.user_id::text;

ALTER TABLE public.q_cb_mod_inc_try
    OWNER TO ictasadmin;

