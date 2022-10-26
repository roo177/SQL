-- Table: t_cb_mod_analysis

-- DROP TABLE IF EXISTS t_cb_mod_analysis;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_analysis
(
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    an_rs_quantity numeric(18,9),
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    r_loss numeric(7,5) DEFAULT 0,
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rs_l1)::text || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_r4 character varying(25) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_full character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    l_comb character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1)::text || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED
)
;

INSERT INTO t_cb_mod_analysis (pc, rs_l1, rs_l2, rs_l3, rs_l4, an_rs_quantity, l_1, l_2, l_3, l_4, l_5, l_6, rep_month, r_loss)

SELECT 
pc, rs_l1, rs_l2, rs_l3, rs_l4, an_rs_quantity, l_1, l_2, l_3, l_4, l_5, l_6, rep_month, r_loss
from t_cb_analysis
where rep_month = (SELECT MAX(rep_month) from t_rep_month);




