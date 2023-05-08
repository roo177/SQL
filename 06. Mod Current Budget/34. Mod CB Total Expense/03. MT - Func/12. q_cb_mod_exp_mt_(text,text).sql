-- FUNCTION: public.q_cb_mod_exp_mt(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_exp_mt(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_exp_mt(
	_user_id text,
	_session_id text)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

--DROP TABLE IF EXISTS t_cb_mod_exp_st CASCADE;

CREATE TABLE IF NOT EXISTS t_cb_mod_exp_st
(
	user_id text COLLATE pg_catalog."default" NOT NULL,
	session_id text COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    month date,
    total_expense double precision,
    curr character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6" ) STORED,
	jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || "pc" || '.' || "curr" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6"  || '.' ||  extract(DAY FROM "month")::text|| '.' || extract(MONTH FROM "month")::text || '.' || extract(YEAR FROM "month")::text || '.' ||  "user_id" || '.'  || "session_id") STORED
	
)

TABLESPACE pg_default;
Raise notice 'Deleting existing data';
EXECUTE format('DELETE FROM t_cb_mod_exp_st where user_id = %L and session_id = %L;', _user_id, _session_id);
--ALTER TABLE IF EXISTS t_cb_mod_exp_st
--OWNER to ictasadmin;
Raise notice 'Appending new data';
EXECUTE format('Insert into t_cb_mod_exp_st
select q_cb_mod_exp.user_id,
q_cb_mod_exp.session_id,
q_cb_mod_exp.rep_month, 
q_cb_mod_exp.pc as pc, 
l_1 || ''.'' || l_2 || ''.'' || l_3 || ''.'' || l_4 || ''.'' || l_5 || ''.'' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_mod_exp.month, 
sum(q_cb_mod_exp.total_expense) as total_expense, 
q_cb_mod_exp.curr, 
q_cb_mod_exp.l_1, 
q_cb_mod_exp.l_2, 
q_cb_mod_exp.l_3, 
q_cb_mod_exp.l_4, 
q_cb_mod_exp.l_5, 
q_cb_mod_exp.l_6
from q_cb_mod_exp 
left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (q_cb_mod_exp.l_1 = c3_code.c_l1) and (q_cb_mod_exp.l_2 = c3_code.c_l2) and (q_cb_mod_exp.l_3 = c3_code.c_l3)
where q_cb_mod_exp.user_id = %L and q_cb_mod_exp.session_id = %L 
group by q_cb_mod_exp.user_id,q_cb_mod_exp.session_id,q_cb_mod_exp.rep_month, q_cb_mod_exp.pc, l_1 || ''.'' || l_2 || ''.'' || l_3 || ''.'' || l_4 || ''.'' || l_5 || ''.'' || l_6, c2_code.desc_tr_l2, c3_code.desc_tr_l3, q_cb_mod_exp.month, q_cb_mod_exp.curr, q_cb_mod_exp.l_1, q_cb_mod_exp.l_2, q_cb_mod_exp.l_3, q_cb_mod_exp.l_4, q_cb_mod_exp.l_5, q_cb_mod_exp.l_6;',_user_id,_session_id);

EXECUTE format('Insert into t_cb_mod_exp_st
select %L as user_id,
%L as session_id,
t_cb_exp.rep_month, 
t_cb_exp.pc as pc, 
l_1 || ''.'' || l_2 || ''.'' || l_3 || ''.'' || l_4 || ''.'' || l_5 || ''.'' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
t_cb_exp.exp_ac_mon, 
sum(t_cb_exp.exp_ac_exp) as total_expense, 
t_cb_exp.curr, 
t_cb_exp.l_1, 
t_cb_exp.l_2, 
t_cb_exp.l_3, 
t_cb_exp.l_4, 
t_cb_exp.l_5, 
t_cb_exp.l_6
from t_cb_exp 
left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (t_cb_exp.l_1 = c3_code.c_l1) and (t_cb_exp.l_2 = c3_code.c_l2) and (t_cb_exp.l_3 = c3_code.c_l3)
where t_cb_exp.rep_month = (SELECT MAX(rep_month) from t_rep_month)
group by t_cb_exp.rep_month, t_cb_exp.pc, l_1 || ''.'' || l_2 || ''.'' || l_3 || ''.'' || l_4 || ''.'' || l_5 || ''.'' || l_6, c2_code.desc_tr_l2, c3_code.desc_tr_l3, t_cb_exp.exp_ac_mon, t_cb_exp.exp_ac_exp, t_cb_exp.curr, t_cb_exp.l_1, t_cb_exp.l_2, t_cb_exp.l_3, t_cb_exp.l_4, t_cb_exp.l_5, t_cb_exp.l_6;',_user_id,_session_id);

Raise notice 'Append completed';
RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_cb_mod_exp_mt(text, text)
    OWNER TO ictasadmin;
