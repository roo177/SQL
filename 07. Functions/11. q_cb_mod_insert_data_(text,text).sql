-- FUNCTION: public.q_cb_mod_insert_data(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_insert_data(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_insert_data(
	_user_id text,
	_session_id text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

EXECUTE format('DELETE FROM t_cb_mod_mon_curr_rates where user_id = %L AND session_id = %L', _user_id, _session_id);

EXECUTE format('INSERT INTO t_cb_mod_mon_curr_rates (user_id, session_id, rep_month, month, r_eur_try, r_usd_try)
SELECT
%L,
%L,
rep_month, 
"month",
r_eur_try,
r_usd_try
from mon_curr_rates 
where rep_month = (SELECT MAX(rep_month) from t_rep_month);
', _user_id, _session_id);

EXECUTE format('DELETE FROM t_cb_mod_indexes where user_id = %L AND session_id = %L', _user_id, _session_id);

EXECUTE format('INSERT INTO t_cb_mod_indexes (user_id, session_id, rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe)
SELECT 
%L, %L, rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe
from t_cb_indexes
where rep_month = (SELECT MAX(rep_month) from t_rep_month);
', _user_id, _session_id);

END
$BODY$;

ALTER FUNCTION public.q_cb_mod_insert_data(text, text)
    OWNER TO ictasadmin;
