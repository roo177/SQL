-- FUNCTION: public.q_bb_calculate_budget()

-- DROP FUNCTION IF EXISTS public.q_bb_calculate_budget();

CREATE OR REPLACE FUNCTION public.q_bb_calculate_budget(
	)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

PERFORM q_bb_exp_mt();
PERFORM q_bb_exp_eur_mt();
PERFORM q_bb_exp_try_mt();
PERFORM q_bb_exp_usd_mt();

PERFORM q_bb_inc_mt();
PERFORM q_bb_inc_eur_mt();
PERFORM q_bb_inc_try_mt();
PERFORM q_bb_inc_usd_mt();

PERFORM q_bb_profit_mt();
PERFORM q_bb_profit_eur_mt();
PERFORM q_bb_profit_try_mt();
PERFORM q_bb_profit_usd_mt();

END; 
$BODY$;

ALTER FUNCTION public.q_bb_calculate_budget()
    OWNER TO ictasadmin;
