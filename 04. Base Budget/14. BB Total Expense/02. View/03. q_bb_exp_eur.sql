-- View: public.q_bb_exp_eur

-- DROP VIEW public.q_bb_exp_eur;

CREATE OR REPLACE VIEW public.q_bb_exp_eur
 AS
 SELECT t_bb_exp_st.rep_month,
    t_bb_exp_st.pc,
    t_bb_exp_st.l_1,
    t_bb_exp_st.l_2,
    t_bb_exp_st.l_3,
    t_bb_exp_st.l_4,
    t_bb_exp_st.l_5,
    t_bb_exp_st.l_6,
    t_bb_exp_st.month,
    t_bb_exp_st.total_expense,
    t_bb_exp_st.curr,
        CASE
            WHEN t_bb_exp_st.curr::text = 'EUR'::text THEN t_bb_exp_st.total_expense
            ELSE
            CASE
                WHEN t_bb_exp_st.curr::text = 'USD'::text THEN t_bb_exp_st.total_expense * t_bb_mon_curr_rates.r_usd_eur::double precision
                ELSE t_bb_exp_st.total_expense * t_bb_mon_curr_rates.r_try_eur::double precision
            END
        END AS eur_expense,
    'EUR'::text AS up_curr_conv,
    t_bb_exp_st.key_r_pc_l6
   FROM t_bb_exp_st
     LEFT JOIN t_bb_mon_curr_rates ON t_bb_exp_st.month = t_bb_mon_curr_rates.month AND t_bb_exp_st.rep_month::text = t_bb_mon_curr_rates.rep_month::text AND t_bb_exp_st.pc::text = t_bb_mon_curr_rates.pc::text;

ALTER TABLE public.q_bb_exp_eur
    OWNER TO ictasadmin;

