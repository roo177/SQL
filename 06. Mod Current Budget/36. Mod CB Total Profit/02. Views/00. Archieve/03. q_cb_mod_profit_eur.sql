-- View: q_cb_mod_profit_eur

DROP VIEW IF EXISTS q_cb_mod_profit_eur;

CREATE TEMPORARY VIEW q_cb_mod_profit_eur
 AS
 SELECT t_cb_mod_profit_st.rep_month,
    t_cb_mod_profit_st.pc,
    t_cb_mod_profit_st.l_1,
    t_cb_mod_profit_st.l_2,
    t_cb_mod_profit_st.l_3,
    t_cb_mod_profit_st.l_4,
    t_cb_mod_profit_st.l_5,
    t_cb_mod_profit_st.l_6,
    t_cb_mod_profit_st.month,
    'EUR'::text AS curr,
    s1.income,
    s1.expense,
    s1.income - s1.expense AS profit,
    t_cb_mod_profit_st.key_r_pc_l6
   FROM t_cb_mod_profit_st
     LEFT JOIN mon_curr_rates ON t_cb_mod_profit_st.rep_month::text = mon_curr_rates.rep_month::text AND t_cb_mod_profit_st.month = mon_curr_rates.month,
    LATERAL ( SELECT
                CASE
                    WHEN t_cb_mod_profit_st.curr::text = 'USD'::text THEN t_cb_mod_profit_st.income * mon_curr_rates.r_usd_eur::double precision
                    ELSE
                    CASE
                        WHEN t_cb_mod_profit_st.curr::text = 'TRY'::text THEN t_cb_mod_profit_st.income * mon_curr_rates.r_try_eur::double precision
                        ELSE t_cb_mod_profit_st.income
                    END
                END AS income,
                CASE
                    WHEN t_cb_mod_profit_st.curr::text = 'USD'::text THEN t_cb_mod_profit_st.expense * mon_curr_rates.r_usd_eur::double precision
                    ELSE
                    CASE
                        WHEN t_cb_mod_profit_st.curr::text = 'TRY'::text THEN t_cb_mod_profit_st.expense * mon_curr_rates.r_try_eur::double precision
                        ELSE t_cb_mod_profit_st.expense
                    END
                END AS expense) s1(income, expense)
  ORDER BY t_cb_mod_profit_st.rep_month, t_cb_mod_profit_st.pc, t_cb_mod_profit_st.l_1, t_cb_mod_profit_st.l_2, t_cb_mod_profit_st.l_3, t_cb_mod_profit_st.l_4, t_cb_mod_profit_st.l_5, t_cb_mod_profit_st.l_6;

ALTER TABLE q_cb_mod_profit_eur
    OWNER TO ictasadmin;

