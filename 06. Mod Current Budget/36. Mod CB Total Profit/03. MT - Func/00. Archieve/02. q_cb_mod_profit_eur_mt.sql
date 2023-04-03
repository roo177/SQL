-- FUNCTION: q_cb_mod_profit_eur_mt()

DROP FUNCTION IF EXISTS q_cb_mod_profit_eur_mt();


CREATE OR REPLACE FUNCTION q_cb_mod_profit_eur_mt() returns BOOLEAN AS
$$
BEGIN

-- Table: t_cb_mod_profit_eur_st

--DROP TABLE IF EXISTS t_cb_mod_profit_eur_st;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_profit_eur_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    expense double precision,
    income double precision,
    month date,
    curr character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    profit double precision,
    desc_tr_l6 character varying(255) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
    unit character varying(50) collate pg_catalog."default",
    desc_tr_l4 character varying(255) collate pg_catalog."default",
    desc_tr_l5 character varying(255) collate pg_catalog."default",
    desc_tr_l1 character varying(255) collate pg_catalog."default"
)


TABLESPACE pg_default;

--ALTER TABLE IF EXISTS t_cb_mod_profit_eur_st
--    OWNER to ictasadmin;
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


Raise notice 'Deleting existing data';
Delete from t_cb_mod_profit_eur_st;
Raise notice 'Appending new data';

Insert into t_cb_mod_profit_eur_st

select 
q_cb_mod_profit_eur.rep_month, 
q_cb_mod_profit_eur.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
sum(q_cb_mod_profit_eur.expense) as expense, 
sum(q_cb_mod_profit_eur.income) as income, 
q_cb_mod_profit_eur.month, 
q_cb_mod_profit_eur.curr, 
q_cb_mod_profit_eur.l_1, 
q_cb_mod_profit_eur.l_2, 
q_cb_mod_profit_eur.l_3, 
q_cb_mod_profit_eur.l_4, 
q_cb_mod_profit_eur.l_5, 
q_cb_mod_profit_eur.l_6, 
sum(q_cb_mod_profit_eur.profit) as profit, 
c6_code.desc_tr_l6, 
q_cb_mod_profit_eur.key_r_pc_l6	
    ,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5
    ,c1_code.desc_tr_l1
from ((((q_cb_mod_profit_eur
	left join c3_code on (q_cb_mod_profit_eur.l_3 = c3_code.c_l3) 
	and (q_cb_mod_profit_eur.l_2 = c3_code.c_l2) 
	and (q_cb_mod_profit_eur.l_1 = c3_code.c_l1))
	left join c2_code on (q_cb_mod_profit_eur.l_2 = c2_code.c_l2) 
	and (q_cb_mod_profit_eur.l_1 = c2_code.c_l1))
    left join c1_code on (q_cb_mod_profit_eur.l_1 = c1_code.c_l1)
	left join c6_code on (q_cb_mod_profit_eur.l_6 = c6_code.c_l6) 
	and (q_cb_mod_profit_eur.l_5 = c6_code.c_l5) 
	and (q_cb_mod_profit_eur.l_4 = c6_code.c_l4) 
	and (q_cb_mod_profit_eur.l_3 = c6_code.c_l3) 
	and (q_cb_mod_profit_eur.l_2 = c6_code.c_l2) 
	and (q_cb_mod_profit_eur.l_1 = c6_code.c_l1))
	left join c4_code on (q_cb_mod_profit_eur.l_4 = c4_code.c_l4) 
	and (q_cb_mod_profit_eur.l_3 = c4_code.c_l3) 
	and (q_cb_mod_profit_eur.l_2 = c4_code.c_l2) 
	and (q_cb_mod_profit_eur.l_1 = c4_code.c_l1))
	left join c5_code on (q_cb_mod_profit_eur.l_5 = c5_code.c_l5) 
	and (q_cb_mod_profit_eur.l_4 = c5_code.c_l4) 
	and (q_cb_mod_profit_eur.l_3 = c5_code.c_l3) 
	and (q_cb_mod_profit_eur.l_2 = c5_code.c_l2) 
	and (q_cb_mod_profit_eur.l_1 = c5_code.c_l1) 
group by 
q_cb_mod_profit_eur.rep_month, 
q_cb_mod_profit_eur.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_profit_eur.month, 
q_cb_mod_profit_eur.curr, 
q_cb_mod_profit_eur.l_1, 
q_cb_mod_profit_eur.l_2, 
q_cb_mod_profit_eur.l_3, 
q_cb_mod_profit_eur.l_4, 
q_cb_mod_profit_eur.l_5, 
q_cb_mod_profit_eur.l_6, 
c6_code.desc_tr_l6, 
q_cb_mod_profit_eur.key_r_pc_l6	
    ,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5
    ,c1_code.desc_tr_l1;

RETURN TRUE;
End;

$$
language plpgsql;

--ALTER FUNCTION q_cb_mod_profit_eur_mt()
 --   OWNER TO ictasadmin;