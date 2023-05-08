-- FUNCTION: public.q_cb_mod_clear_all()

DROP FUNCTION IF EXISTS public.q_cb_mod_clear_all();

CREATE OR REPLACE FUNCTION public.q_cb_mod_clear_all(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

EXECUTE format('DELETE FROM t_cb_mod_mon_curr_rates ');
EXECUTE format('DELETE FROM t_cb_mod_indexes ');
EXECUTE format('DELETE FROM t_cb_mod_exp_st ');
EXECUTE format('DELETE FROM t_cb_mod_exp_eur_st ');
EXECUTE format('DELETE FROM t_cb_mod_exp_try_st ');
EXECUTE format('DELETE FROM t_cb_mod_exp_usd_st ');
EXECUTE format('DELETE FROM t_cb_mod_inc_st ');
EXECUTE format('DELETE FROM t_cb_mod_inc_eur_st ');
EXECUTE format('DELETE FROM t_cb_mod_inc_try_st ');
EXECUTE format('DELETE FROM t_cb_mod_inc_usd_st ');
EXECUTE format('DELETE FROM t_cb_mod_profit_st ');
EXECUTE format('DELETE FROM t_cb_mod_profit_eur_st ');
EXECUTE format('DELETE FROM t_cb_mod_profit_try_st ');
EXECUTE format('DELETE FROM t_cb_mod_profit_usd_st ');

END; 
$BODY$;

ALTER FUNCTION public.q_cb_mod_clear_all()
    OWNER TO ictasadmin;
