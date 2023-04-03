-- FUNCTION: public.q_cb_mod_inc_mt(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_inc_mt(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_inc_mt(
	_user_id text,
	_session_id text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

--DROP TABLE IF EXISTS t_cb_mod_inc_st CASCADE;

CREATE TABLE IF NOT EXISTS t_cb_mod_inc_st
(
	user_id text COLLATE pg_catalog."default" NOT NULL,
	session_id text COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6") STORED,
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    inc_base_mon date,
    inc_total double precision,
    curr character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    desc_tr_l6 character varying(150) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6" ) STORED,
	jkey character varying(150) COLLATE pg_catalog."default" GENERATED ALWAYS AS ("rep_month" || '.' || "pc" || '.' || "curr" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" || '.' || "l_5" || '.' || "l_6"  || '.' ||  extract(DAY FROM "inc_base_mon")::text|| '.' || extract(MONTH FROM "inc_base_mon")::text || '.' || extract(YEAR FROM "inc_base_mon")::text || '.' ||  "user_id" || '.'  || "session_id") STORED
	)
	
;
    Raise notice 'Deleting existing data';
EXECUTE format('DELETE FROM t_cb_mod_inc_st where user_id = %L AND session_id = %L', _user_id, _session_id);
    Raise notice 'Appending new data';
EXECUTE format('INSERT INTO t_cb_mod_inc_st ( rep_month, user_id, session_id,  pc, desc_tr_l2, desc_tr_l3, inc_base_mon, inc_total, curr, l_1, l_2, l_3, l_4, l_5, l_6, desc_tr_l6 )
SELECT 
rep_month, %L, %L, pc, desc_tr_l2, desc_tr_l3, inc_base_mon, inc_total, curr, l_1, l_2, l_3, l_4, l_5, l_6, desc_tr_l6
from t_cb_inc_st
    where rep_month = (SELECT MAX(rep_month) from t_rep_month);' 
    , _user_id, _session_id );
    Raise notice 'Append completed';
END; 
$BODY$;

ALTER FUNCTION public.q_cb_mod_inc_mt(text, text)
    OWNER TO ictasadmin;
