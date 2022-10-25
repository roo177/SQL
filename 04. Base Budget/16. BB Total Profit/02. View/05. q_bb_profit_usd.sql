-- View: public.q_bb_profit_usd

-- DROP VIEW public.q_bb_profit_usd;

CREATE OR REPLACE VIEW public.q_bb_profit_usd
 AS
 SELECT t_bb_profit_st.rep_month,
    t_bb_profit_st.pc,
    t_bb_profit_st.l_1,
    t_bb_profit_st.l_2,
    t_bb_profit_st.l_3,
    t_bb_profit_st.l_4,
    t_bb_profit_st.l_5,
    t_bb_profit_st.l_6,
    t_bb_profit_st.month,
    'USD'::text AS curr,
    s1.income,
    s1.expense,
    s1.income - s1.expense AS profit,
    t_bb_profit_st.key_r_pc_l6
   FROM t_bb_profit_st
     LEFT JOIN mon_curr_rates ON t_bb_profit_st.rep_month::text = mon_curr_rates.rep_month::text AND t_bb_profit_st.month = mon_curr_rates.month,
    LATERAL ( SELECT
                CASE
                    WHEN t_bb_profit_st.curr::text = 'EUR'::text THEN t_bb_profit_st.income * mon_curr_rates.r_eur_usd::double precision
                    ELSE
                    CASE
                        WHEN t_bb_profit_st.curr::text = 'TRY'::text THEN t_bb_profit_st.income * mon_curr_rates.r_try_usd::double precision
                        ELSE t_bb_profit_st.income
                    END
                END AS income,
                CASE
                    WHEN t_bb_profit_st.curr::text = 'EUR'::text THEN t_bb_profit_st.expense * mon_curr_rates.r_eur_usd::double precision
                    ELSE
                    CASE
                        WHEN t_bb_profit_st.curr::text = 'TRY'::text THEN t_bb_profit_st.expense * mon_curr_rates.r_try_usd::double precision
                        ELSE t_bb_profit_st.expense
                    END
                END AS expense) s1(income, expense)
  ORDER BY t_bb_profit_st.rep_month, t_bb_profit_st.pc, t_bb_profit_st.l_1, t_bb_profit_st.l_2, t_bb_profit_st.l_3, t_bb_profit_st.l_4, t_bb_profit_st.l_5, t_bb_profit_st.l_6;

ALTER TABLE public.q_bb_profit_usd
    OWNER TO ictasadmin;

