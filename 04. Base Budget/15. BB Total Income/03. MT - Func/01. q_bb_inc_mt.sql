-- FUNCTION: public.q_bb_inc_mt()

DROP FUNCTION IF EXISTS public.q_bb_inc_mt();

CREATE OR REPLACE FUNCTION public.q_bb_inc_mt(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

--DROP TABLE IF EXISTS public.t_bb_inc_st;

CREATE TABLE IF NOT EXISTS public.t_bb_inc_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(255) COLLATE pg_catalog."default",
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
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

--ALTER TABLE IF EXISTS public.t_bb_inc_st
--    OWNER to ictasadmin;

Raise notice 'Deleting existing data';
Delete from t_bb_inc_st;
Raise notice 'Appending new data';

Insert into t_bb_inc_st

SELECT 
q_bb_inc.rep_month, 
q_bb_inc.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 AS j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_bb_inc.inc_base_mon, 
sum(q_bb_inc.inc_total) AS inc_total, 
q_bb_inc.curr, 
q_bb_inc.l_1, 
q_bb_inc.l_2, 
q_bb_inc.l_3, 
q_bb_inc.l_4, 
q_bb_inc.l_5, 
q_bb_inc.l_6, 
c6_code.desc_tr_l6, 
q_bb_inc.key_r_pc_l6
FROM (q_bb_inc LEFT JOIN (c2_code RIGHT JOIN c3_code ON (c2_code.c_l1 = c3_code.c_l1) AND (c2_code.c_l2 = c3_code.c_l2)) ON (q_bb_inc.l_3 = c3_code.c_l3) 
AND (q_bb_inc.l_2 = c3_code.c_l2) AND (q_bb_inc.l_1 = c3_code.c_l1)) LEFT JOIN c6_code ON (q_bb_inc.l_6 = c6_code.c_l6) 
AND (q_bb_inc.l_5 = c6_code.c_l5) AND (q_bb_inc.l_4 = c6_code.c_l4) AND (q_bb_inc.l_3 = c6_code.c_l3) AND (q_bb_inc.l_2 = c6_code.c_l2) 
AND (q_bb_inc.l_1 = c6_code.c_l1)
GROUP BY 
q_bb_inc.rep_month, 
q_bb_inc.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
c2_code.desc_tr_l2,
c3_code.desc_tr_l3, 
q_bb_inc.inc_base_mon, 
q_bb_inc.curr, 
q_bb_inc.l_1, 
q_bb_inc.l_2, 
q_bb_inc.l_3, 
q_bb_inc.l_4, 
q_bb_inc.l_5, 
q_bb_inc.l_6, 
c6_code.desc_tr_l6, 
q_bb_inc.key_r_pc_l6;

RETURN TRUE;
End;

$BODY$;

--ALTER FUNCTION public.q_bb_inc_mt()
--   OWNER TO ictasadmin;
