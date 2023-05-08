-- FUNCTION: public.q_cb_mod_clear(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_clear(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_clear(
	_user_id text,
	_session_id text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

EXECUTE format('DELETE FROM t_cb_mod_exp_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_exp_eur_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_exp_try_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_exp_usd_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_inc_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_inc_eur_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_inc_try_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_inc_usd_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_profit_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_profit_eur_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_profit_try_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_profit_usd_st WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_indexes WHERE user_id = %L and session_id = %L;', _user_id, _session_id);
EXECUTE format('DELETE FROM t_cb_mod_mon_curr_rates WHERE user_id = %L and session_id = %L;', _user_id, _session_id);

END; 
$BODY$;

ALTER FUNCTION public.q_cb_mod_clear(text, text)
    OWNER TO ictasadmin;
