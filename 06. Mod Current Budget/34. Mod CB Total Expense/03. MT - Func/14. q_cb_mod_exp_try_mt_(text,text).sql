-- FUNCTION: public.q_cb_mod_exp_try_mt(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_exp_try_mt(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_exp_try_mt(
	_user_id text,
	_session_id text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

--DROP TABLE IF EXISTS t_cb_mod_exp_try_st;

CREATE TABLE IF NOT EXISTS t_cb_mod_exp_try_st
(
	user_id text COLLATE pg_catalog."default" NOT NULL,
	session_id text COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    month date,
    try_expense double precision,
    up_curr_conv character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

--DROP VIEW IF EXISTS q_cb_mod_exp_try;

CREATE OR REPLACE VIEW q_cb_mod_exp_try
 AS
 SELECT t_cb_mod_exp_st.user_id,
    t_cb_mod_exp_st.session_id,
	t_cb_mod_exp_st.rep_month,
    t_cb_mod_exp_st.pc,
    t_cb_mod_exp_st.l_1,
    t_cb_mod_exp_st.l_2,
    t_cb_mod_exp_st.l_3,
    t_cb_mod_exp_st.l_4,
    t_cb_mod_exp_st.l_5,
    t_cb_mod_exp_st.l_6,
    t_cb_mod_exp_st.month,
    t_cb_mod_exp_st.total_expense,
    t_cb_mod_exp_st.curr,
        CASE
            WHEN t_cb_mod_exp_st.curr::text = 'TRY'::text THEN t_cb_mod_exp_st.total_expense
            ELSE
            CASE
                WHEN t_cb_mod_exp_st.curr::text = 'USD'::text THEN t_cb_mod_exp_st.total_expense * t_cb_mod_mon_curr_rates.r_usd_try::double precision
                ELSE t_cb_mod_exp_st.total_expense * t_cb_mod_mon_curr_rates.r_eur_try::double precision
            END
        END AS try_expense,
    'TRY'::text AS up_curr_conv,
    t_cb_mod_exp_st.key_r_pc_l6
    FROM t_cb_mod_exp_st
        LEFT JOIN t_cb_mod_mon_curr_rates ON (t_cb_mod_exp_st.month = t_cb_mod_mon_curr_rates.month) 
        AND (t_cb_mod_exp_st.rep_month = t_cb_mod_mon_curr_rates.rep_month) 
        AND (t_cb_mod_exp_st.session_id = t_cb_mod_mon_curr_rates.session_id) 
        AND (t_cb_mod_exp_st.user_id = t_cb_mod_mon_curr_rates.user_id); 

ALTER TABLE q_cb_mod_exp_try
    OWNER TO ictasadmin;

Raise notice 'Deleting existing data';
EXECUTE format('Delete from t_cb_mod_exp_try_st where user_id = %L and session_id = %L;', _user_id, _session_id);
Raise notice 'Appending new data';

Insert into t_cb_mod_exp_try_st
select q_cb_mod_exp_try.user_id,
q_cb_mod_exp_try.session_id,
q_cb_mod_exp_try.rep_month, 
q_cb_mod_exp_try.pc as pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_exp_try.month, 
sum(q_cb_mod_exp_try.try_expense) as try_expense, 
q_cb_mod_exp_try.up_curr_conv, 
q_cb_mod_exp_try.l_1, 
q_cb_mod_exp_try.l_2, 
q_cb_mod_exp_try.l_3, 
q_cb_mod_exp_try.l_4, 
q_cb_mod_exp_try.l_5, 
q_cb_mod_exp_try.l_6, 
q_cb_mod_exp_try.key_r_pc_l6
from q_cb_mod_exp_try left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (q_cb_mod_exp_try.l_1 = c3_code.c_l1) and (q_cb_mod_exp_try.l_2 = c3_code.c_l2) and (q_cb_mod_exp_try.l_3 = c3_code.c_l3)
group by q_cb_mod_exp_try.user_id,q_cb_mod_exp_try.session_id,q_cb_mod_exp_try.rep_month, q_cb_mod_exp_try.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, c2_code.desc_tr_l2, c3_code.desc_tr_l3, q_cb_mod_exp_try.month, q_cb_mod_exp_try.up_curr_conv, q_cb_mod_exp_try.l_1, q_cb_mod_exp_try.l_2, q_cb_mod_exp_try.l_3, q_cb_mod_exp_try.l_4, q_cb_mod_exp_try.l_5, q_cb_mod_exp_try.l_6, q_cb_mod_exp_try.key_r_pc_l6;

RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_cb_mod_exp_try_mt(text, text)
    OWNER TO ictasadmin;
