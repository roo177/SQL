CREATE OR REPLACE FUNCTION q_cb_inc_try_mt() returns BOOLEAN AS
$$
BEGIN

-- Table: public.t_cb_inc_try_st

-- DROP TABLE IF EXISTS public.t_cb_inc_try_st;

CREATE TABLE IF NOT EXISTS public.t_cb_inc_try_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(255) COLLATE pg_catalog."default",
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    month date,
    try_income double precision,
    up_curr_conv character varying(255) COLLATE pg_catalog."default",
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

ALTER TABLE IF EXISTS public.t_cb_inc_try_st
    OWNER to ictasadmin;

Raise notice 'Deleting existing data';
Delete from t_cb_inc_try_st;
Raise notice 'Appending new data';


Insert into t_cb_inc_try_st

Select 
q_cb_inc_try.rep_month, 
q_cb_inc_try.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_inc_try.month, 
sum(q_cb_inc_try.try_income) as try_income, 
q_cb_inc_try.up_curr_conv, 
q_cb_inc_try.l_1, 
q_cb_inc_try.l_2, 
q_cb_inc_try.l_3, 
q_cb_inc_try.l_4, 
q_cb_inc_try.l_5, 
q_cb_inc_try.l_6, 
c6_code.desc_tr_l6, 
q_cb_inc_try.key_r_pc_l6
from (q_cb_inc_try left join (c2_code right join c3_code on (c2_code.c_l1 = c3_code.c_l1) and (c2_code.c_l2 = c3_code.c_l2)) on (q_cb_inc_try.l_3 = c3_code.c_l3) and 
(q_cb_inc_try.l_2 = c3_code.c_l2) and (q_cb_inc_try.l_1 = c3_code.c_l1)) left join c6_code on (q_cb_inc_try.l_6 = c6_code.c_l6) and (q_cb_inc_try.l_5 = c6_code.c_l5) and 
(q_cb_inc_try.l_4 = c6_code.c_l4) and (q_cb_inc_try.l_3 = c6_code.c_l3) and (q_cb_inc_try.l_2 = c6_code.c_l2) and (q_cb_inc_try.l_1 = c6_code.c_l1)
group by 
q_cb_inc_try.rep_month, 
q_cb_inc_try.pc, 
l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6, 
c2_code.desc_tr_l2, 
c3_code.desc_tr_l3, 
q_cb_inc_try.month, 
q_cb_inc_try.up_curr_conv, 
q_cb_inc_try.l_1, 
q_cb_inc_try.l_2, 
q_cb_inc_try.l_3, 
q_cb_inc_try.l_4, 
q_cb_inc_try.l_5, 
q_cb_inc_try.l_6, 
c6_code.desc_tr_l6, 
q_cb_inc_try.key_r_pc_l6;


RETURN TRUE;
End;

$$
language plpgsql;
