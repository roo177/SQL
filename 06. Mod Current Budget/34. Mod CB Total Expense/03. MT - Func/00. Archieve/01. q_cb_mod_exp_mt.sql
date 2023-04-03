-- FUNCTION: public.q_cb_mod_exp_mt()

-- DROP FUNCTION IF EXISTS public.q_cb_mod_exp_mt();

CREATE OR REPLACE FUNCTION public.q_cb_mod_exp_mt(
	)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN

DROP TABLE IF EXISTS t_cb_mod_exp_st CASCADE;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_exp_st
(
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
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

--ALTER TABLE IF EXISTS t_cb_mod_exp_st
--OWNER to ictasadmin;

Insert into t_cb_mod_exp_st
select q_cb_mod_exp.rep_month, 
q_cb_mod_exp.pc as pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
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
q_cb_mod_exp.l_6, 
q_cb_mod_exp.key_r_pc_l6
from q_cb_mod_exp left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (q_cb_mod_exp.l_1 = c3_code.c_l1) and (q_cb_mod_exp.l_2 = c3_code.c_l2) and (q_cb_mod_exp.l_3 = c3_code.c_l3)
group by q_cb_mod_exp.rep_month, q_cb_mod_exp.pc, l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, c2_code.desc_tr_l2, c3_code.desc_tr_l3, q_cb_mod_exp.month, q_cb_mod_exp.curr, q_cb_mod_exp.l_1, q_cb_mod_exp.l_2, q_cb_mod_exp.l_3, q_cb_mod_exp.l_4, q_cb_mod_exp.l_5, q_cb_mod_exp.l_6, q_cb_mod_exp.key_r_pc_l6;

RETURN TRUE;
End;

$BODY$;

ALTER FUNCTION public.q_cb_mod_exp_mt()
    OWNER TO ictasadmin;
