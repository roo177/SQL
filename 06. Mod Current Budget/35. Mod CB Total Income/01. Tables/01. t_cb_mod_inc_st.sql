
DROP TABLE IF EXISTS t_cb_mod_inc_st;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_inc_st
(
    rep_month character varying(4) COLLATE pg_catalog."default",
    pc character varying(3) COLLATE pg_catalog."default",
    j_code character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1)::text || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
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
;

INSERT INTO t_cb_mod_inc_st ( rep_month, pc, desc_tr_l2, desc_tr_l3, inc_base_mon, inc_total, curr, l_1, l_2, l_3, l_4, l_5, l_6, desc_tr_l6, key_r_pc_l6 )
SELECT 
rep_month, pc, desc_tr_l2, desc_tr_l3, inc_base_mon, inc_total, curr, l_1, l_2, l_3, l_4, l_5, l_6, desc_tr_l6, key_r_pc_l6
from t_cb_inc_st
    where rep_month = (SELECT MAX(rep_month) from t_rep_month);