-- FUNCTION: public.q_cb_mod_calculate_budget(text, text)

DROP FUNCTION IF EXISTS public.q_cb_mod_calculate_budget(text, text);

CREATE OR REPLACE FUNCTION public.q_cb_mod_calculate_budget(
	_user_id text,
	_session_id text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

PERFORM q_cb_mod_exp_mt(_user_id, _session_id);
PERFORM q_cb_mod_exp_eur_mt(_user_id, _session_id);
PERFORM q_cb_mod_exp_try_mt(_user_id, _session_id);
PERFORM q_cb_mod_exp_usd_mt(_user_id, _session_id);

PERFORM q_cb_mod_inc_mt(_user_id, _session_id);
PERFORM q_cb_mod_inc_eur_mt(_user_id, _session_id);
PERFORM q_cb_mod_inc_try_mt(_user_id, _session_id);
PERFORM q_cb_mod_inc_usd_mt(_user_id, _session_id);

PERFORM q_cb_mod_profit_mt(_user_id, _session_id);
PERFORM q_cb_mod_profit_eur_mt(_user_id, _session_id);
PERFORM q_cb_mod_profit_try_mt(_user_id, _session_id);
PERFORM q_cb_mod_profit_usd_mt(_user_id, _session_id);

END; 
$BODY$;

ALTER FUNCTION public.q_cb_mod_calculate_budget(text, text)
    OWNER TO ictasadmin;
