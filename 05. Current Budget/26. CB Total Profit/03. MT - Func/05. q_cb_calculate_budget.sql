
CREATE OR REPLACE FUNCTION public.q_cb_calculate_budget(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

select q_cb_exp_mt();
select q_cb_exp_eur_mt();
select q_cb_exp_try_mt();
select q_cb_exp_usd_mt();

select q_cb_inc_mt();
select q_cb_inc_eur_mt();
select q_cb_inc_try_mt();
select q_cb_inc_usd_mt();

select q_cb_profit_mt();
select q_cb_profit_eur_mt();
select q_cb_profit_try_mt();
select q_cb_profit_usd_mt();

RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_cb_calculate_budget()
    OWNER TO ictasadmin;
