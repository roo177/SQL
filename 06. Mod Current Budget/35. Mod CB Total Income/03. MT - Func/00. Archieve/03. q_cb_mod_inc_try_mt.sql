-- FUNCTION: q_cb_mod_inc_try_mt()RFORM 

DROP FUNCTION IF EXISTS q_cb_mod_inc_try_mt();

CREATE OR REPLACE FUNCTION q_cb_mod_inc_try_mt(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

-- Table: t_cb_mod_inc_try_st

--DROP TABLE IF EXISTS t_cb_mod_inc_try_st;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_inc_try_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(255) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    month date,
    try_income double precision,
    up_curr_conv character varying(255) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    desc_tr_l6 character varying(150) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

--ALTER TABLE IF EXISTS t_cb_mod_inc_try_st
--    OWNER to ictasadmin;
DROP VIEW IF EXISTS q_cb_mod_inc_try;
CREATE TEMPORARY VIEW q_cb_mod_inc_try
 AS
 SELECT t_cb_mod_inc_st.rep_month,
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
     LEFT JOIN t_cb_mod_mon_curr_rates ON t_cb_mod_inc_st.rep_month::text = t_cb_mod_mon_curr_rates.rep_month::text AND t_cb_mod_inc_st.inc_base_mon = t_cb_mod_mon_curr_rates.month;

ALTER TABLE q_cb_mod_inc_try
    OWNER TO ictasadmin;

Raise notice 'Deleting existing data';
Delete from t_cb_mod_inc_try_st;
Raise notice 'Appending new data';

Insert into t_cb_mod_inc_try_st

Select 
q_cb_mod_inc_try.rep_month, 
q_cb_mod_inc_try.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_inc_try.month, 
sum(q_cb_mod_inc_try.try_income) as try_income, 
q_cb_mod_inc_try.up_curr_conv, 
q_cb_mod_inc_try.l_1, 
q_cb_mod_inc_try.l_2, 
q_cb_mod_inc_try.l_3, 
q_cb_mod_inc_try.l_4, 
q_cb_mod_inc_try.l_5, 
q_cb_mod_inc_try.l_6, 
c6_code.desc_tr_l6, 
q_cb_mod_inc_try.key_r_pc_l6
from (q_cb_mod_inc_try left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (q_cb_mod_inc_try.l_3 = c3_code.c_l3) and 
(q_cb_mod_inc_try.l_2 = c3_code.c_l2) and (q_cb_mod_inc_try.l_1 = c3_code.c_l1)) left join c6_code on (q_cb_mod_inc_try.l_6 = c6_code.c_l6) and (q_cb_mod_inc_try.l_5 = c6_code.c_l5) and 
(q_cb_mod_inc_try.l_4 = c6_code.c_l4) and (q_cb_mod_inc_try.l_3 = c6_code.c_l3) and (q_cb_mod_inc_try.l_2 = c6_code.c_l2) and (q_cb_mod_inc_try.l_1 = c6_code.c_l1)
group by 
q_cb_mod_inc_try.rep_month, 
q_cb_mod_inc_try.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_inc_try.month, 
q_cb_mod_inc_try.up_curr_conv, 
q_cb_mod_inc_try.l_1, 
q_cb_mod_inc_try.l_2, 
q_cb_mod_inc_try.l_3, 
q_cb_mod_inc_try.l_4, 
q_cb_mod_inc_try.l_5, 
q_cb_mod_inc_try.l_6, 
c6_code.desc_tr_l6, 
q_cb_mod_inc_try.key_r_pc_l6;

RETURN TRUE;
End;

$BODY$;

--ALTER FUNCTION q_cb_mod_inc_try_mt()
--    OWNER TO ictasadmin;
