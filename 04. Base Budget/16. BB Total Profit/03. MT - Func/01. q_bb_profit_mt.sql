-- FUNCTION: public.q_bb_profit_mt()

DROP FUNCTION IF EXISTS public.q_bb_profit_mt();

CREATE OR REPLACE FUNCTION public.q_bb_profit_mt(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

-- Table: t_bb_profit_st

-- DROP TABLE IF EXISTS t_bb_profit_st;

CREATE TABLE IF NOT EXISTS t_bb_profit_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    month date,
    expense double precision,
    income double precision,
    curr character varying(3) COLLATE pg_catalog."default",
    l_1 character varying(1) COLLATE pg_catalog."default",
    l_2 character varying(2) COLLATE pg_catalog."default",
    l_3 character varying(2) COLLATE pg_catalog."default",
    l_4 character varying(2) COLLATE pg_catalog."default",
    l_5 character varying(2) COLLATE pg_catalog."default",
    l_6 character varying(3) COLLATE pg_catalog."default",
    profit double precision,
    desc_tr_l6 character varying(255) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

--ALTER TABLE IF EXISTS t_bb_profit_st
--    OWNER to ictasadmin;

Raise notice 'Deleting existing data';
Delete from t_bb_profit_st;
Raise notice 'Appending new data';

Insert into t_bb_profit_st

select 
q_bb_profit.rep_month, 
q_bb_profit.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_bb_profit.month, 
q_bb_profit.expense, 
q_bb_profit.income, 
q_bb_profit.curr, 
q_bb_profit.l_1, 
q_bb_profit.l_2, 
q_bb_profit.l_3, 
q_bb_profit.l_4, 
q_bb_profit.l_5, 
q_bb_profit.l_6, 
q_bb_profit.profit, 
c6_code.desc_tr_l6, 
q_bb_profit.key_r_pc_l6
from ((q_bb_profit left join c3_code on (q_bb_profit.l_1 = c3_code.c_l1) and (q_bb_profit.l_2 = c3_code.c_l2) and (q_bb_profit.l_3 = c3_code.c_l3)) 
left join c2_code on (q_bb_profit.l_1 = c2_code.c_l1) and (q_bb_profit.l_2 = c2_code.c_l2)) left join c6_code on (q_bb_profit.l_1 = c6_code.c_l1) 
and (q_bb_profit.l_2 = c6_code.c_l2) and (q_bb_profit.l_3 = c6_code.c_l3) and (q_bb_profit.l_4 = c6_code.c_l4) and (q_bb_profit.l_5 = c6_code.c_l5) 
and (q_bb_profit.l_6 = c6_code.c_l6)
group by 
q_bb_profit.rep_month, 
q_bb_profit.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_bb_profit.month, 
q_bb_profit.expense, 
q_bb_profit.income, 
q_bb_profit.curr, 
q_bb_profit.l_1, 
q_bb_profit.l_2, 
q_bb_profit.l_3, 
q_bb_profit.l_4, 
q_bb_profit.l_5, 
q_bb_profit.l_6, 
q_bb_profit.profit, 
c6_code.desc_tr_l6, 
q_bb_profit.key_r_pc_l6;

RETURN TRUE;
End;

$BODY$;

--ALTER FUNCTION public.q_bb_profit_mt()
--    OWNER TO ictasadmin;
