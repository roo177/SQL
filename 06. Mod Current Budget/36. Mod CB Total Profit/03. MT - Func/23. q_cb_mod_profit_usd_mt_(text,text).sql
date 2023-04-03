-- FUNCTION: public.q_cb_mod_profit_usd_mt(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_profit_usd_mt(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_profit_usd_mt(
	_user_id text,
	_session_id text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

-- Table: t_cb_mod_profit_usd_st

-- DROP TABLE IF EXISTS t_cb_mod_profit_usd_st;

CREATE TABLE IF NOT EXISTS  t_cb_mod_profit_usd_st
(
	user_id text COLLATE pg_catalog."default" NOT NULL,
	session_id text COLLATE pg_catalog."default" NOT NULL,
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

--ALTER TABLE IF EXISTS t_cb_mod_profit_usd_st
--    OWNER to ictasadmin;
-- View: q_cb_mod_profit_usd

CREATE OR REPLACE VIEW q_cb_mod_profit_usd
 AS
 SELECT t_cb_mod_profit_st.user_id,
 	t_cb_mod_profit_st.session_id,
	t_cb_mod_profit_st.rep_month,
    t_cb_mod_profit_st.pc,
    t_cb_mod_profit_st.l_1,
    t_cb_mod_profit_st.l_2,
    t_cb_mod_profit_st.l_3,
    t_cb_mod_profit_st.l_4,
    t_cb_mod_profit_st.l_5,
    t_cb_mod_profit_st.l_6,
	concat("l_1",'.',"l_2",'.',"l_3",'.',"l_4",'.',"l_5",'.',"l_6") as j_code,
    t_cb_mod_profit_st.month,
    'USD'::text AS curr,
    s1.income,
    s1.expense,
    s1.income - s1.expense AS profit,
    t_cb_mod_profit_st.key_r_pc_l6
   FROM t_cb_mod_profit_st
     LEFT JOIN  t_cb_mod_mon_curr_rates ON t_cb_mod_profit_st.rep_month::text =  t_cb_mod_mon_curr_rates.rep_month::text AND t_cb_mod_profit_st.month =  t_cb_mod_mon_curr_rates.month AND t_cb_mod_profit_st.user_id =  t_cb_mod_mon_curr_rates.user_id AND t_cb_mod_profit_st.session_id =  t_cb_mod_mon_curr_rates.session_id,
    LATERAL ( SELECT
                CASE
                    WHEN t_cb_mod_profit_st.curr::text = 'EUR'::text THEN t_cb_mod_profit_st.income * t_cb_mod_mon_curr_rates.r_eur_usd::double precision
                    ELSE
                    CASE
                        WHEN t_cb_mod_profit_st.curr::text = 'TRY'::text THEN t_cb_mod_profit_st.income * t_cb_mod_mon_curr_rates.r_try_usd::double precision
                        ELSE t_cb_mod_profit_st.income
                    END
                END AS income,
                CASE
                    WHEN t_cb_mod_profit_st.curr::text = 'EUR'::text THEN t_cb_mod_profit_st.expense * t_cb_mod_mon_curr_rates.r_eur_usd::double precision
                    ELSE
                    CASE
                        WHEN t_cb_mod_profit_st.curr::text = 'TRY'::text THEN t_cb_mod_profit_st.expense * t_cb_mod_mon_curr_rates.r_try_usd::double precision
                        ELSE t_cb_mod_profit_st.expense
                    END
                END AS expense) s1(income, expense)
  ORDER BY t_cb_mod_profit_st.user_id,t_cb_mod_profit_st.session_id,t_cb_mod_profit_st.rep_month, t_cb_mod_profit_st.pc, t_cb_mod_profit_st.l_1, t_cb_mod_profit_st.l_2, t_cb_mod_profit_st.l_3, t_cb_mod_profit_st.l_4, t_cb_mod_profit_st.l_5, t_cb_mod_profit_st.l_6;			   

ALTER TABLE q_cb_mod_profit_usd
    OWNER TO ictasadmin;

Raise notice 'Deleting existing data';
EXECUTE format('DELETE FROM t_cb_mod_profit_usd_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
Raise notice 'Appending new data';

EXECUTE format('Insert into t_cb_mod_profit_usd_st

select 
q_cb_mod_profit_usd.user_id,
q_cb_mod_profit_usd.session_id,
q_cb_mod_profit_usd.rep_month, 
q_cb_mod_profit_usd.pc, 
q_cb_mod_profit_usd.j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
sum(q_cb_mod_profit_usd.expense) as expense, 
sum(q_cb_mod_profit_usd.income) as income, 
q_cb_mod_profit_usd.month, 
q_cb_mod_profit_usd.curr, 
q_cb_mod_profit_usd.l_1, 
q_cb_mod_profit_usd.l_2, 
q_cb_mod_profit_usd.l_3, 
q_cb_mod_profit_usd.l_4, 
q_cb_mod_profit_usd.l_5, 
q_cb_mod_profit_usd.l_6, 
sum(q_cb_mod_profit_usd.profit) as profit, 
c6_code.desc_tr_l6, 
q_cb_mod_profit_usd.key_r_pc_l6
,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5
    ,c1_code.desc_tr_l1
from ((((q_cb_mod_profit_usd
	left join c3_code on (q_cb_mod_profit_usd.l_3 = c3_code.c_l3) 
	and (q_cb_mod_profit_usd.l_2 = c3_code.c_l2) 
	and (q_cb_mod_profit_usd.l_1 = c3_code.c_l1))
	left join c2_code on (q_cb_mod_profit_usd.l_2 = c2_code.c_l2) 
	and (q_cb_mod_profit_usd.l_1 = c2_code.c_l1))
    left join c1_code on (q_cb_mod_profit_usd.l_1 = c1_code.c_l1)
	left join c6_code on (q_cb_mod_profit_usd.l_6 = c6_code.c_l6) 
	and (q_cb_mod_profit_usd.l_5 = c6_code.c_l5) 
	and (q_cb_mod_profit_usd.l_4 = c6_code.c_l4) 
	and (q_cb_mod_profit_usd.l_3 = c6_code.c_l3) 
	and (q_cb_mod_profit_usd.l_2 = c6_code.c_l2) 
	and (q_cb_mod_profit_usd.l_1 = c6_code.c_l1))
	left join c4_code on (q_cb_mod_profit_usd.l_4 = c4_code.c_l4) 
	and (q_cb_mod_profit_usd.l_3 = c4_code.c_l3) 
	and (q_cb_mod_profit_usd.l_2 = c4_code.c_l2) 
	and (q_cb_mod_profit_usd.l_1 = c4_code.c_l1))
	left join c5_code on (q_cb_mod_profit_usd.l_5 = c5_code.c_l5) 
	and (q_cb_mod_profit_usd.l_4 = c5_code.c_l4) 
	and (q_cb_mod_profit_usd.l_3 = c5_code.c_l3) 
	and (q_cb_mod_profit_usd.l_2 = c5_code.c_l2) 
	and (q_cb_mod_profit_usd.l_1 = c5_code.c_l1) 
where q_cb_mod_profit_usd.user_id = %L and q_cb_mod_profit_usd.session_id = %L
group by 
q_cb_mod_profit_usd.user_id,
q_cb_mod_profit_usd.session_id,
q_cb_mod_profit_usd.rep_month, 
q_cb_mod_profit_usd.pc, 
q_cb_mod_profit_usd.j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_profit_usd.month, 
q_cb_mod_profit_usd.curr, 
q_cb_mod_profit_usd.l_1, 
q_cb_mod_profit_usd.l_2, 
q_cb_mod_profit_usd.l_3, 
q_cb_mod_profit_usd.l_4, 
q_cb_mod_profit_usd.l_5, 
q_cb_mod_profit_usd.l_6, 
c6_code.desc_tr_l6, 
q_cb_mod_profit_usd.key_r_pc_l6
,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5
    ,c1_code.desc_tr_l1;',_user_id,_session_id);
Raise notice 'Append completed';
RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_cb_mod_profit_usd_mt(text, text)
    OWNER TO ictasadmin;
