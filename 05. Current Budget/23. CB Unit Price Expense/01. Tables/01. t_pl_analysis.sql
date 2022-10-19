-- Table: public.t_pl_analysis

-- DROP TABLE IF EXISTS public.t_pl_analysis;

CREATE TABLE IF NOT EXISTS public.t_pl_analysis
(
    p01_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_comb character varying(17) COLLATE pg_catalog."default",
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
    key_r4_simple character varying(50) COLLATE pg_catalog."default",
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
    key_r4 character varying(50) COLLATE pg_catalog."default",
    key_full character varying(50) COLLATE pg_catalog."default",
    r_loss numeric(7,5) DEFAULT 0,
    CONSTRAINT t_pl_analysis_pkey PRIMARY KEY (p01_code, rs_l1, rs_l2, rs_l3, rs_l4, l_1, l_2, l_3, l_4, l_5, l_6, rep_month),
    CONSTRAINT r__t_pl_an__c6_code FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_pl_an__r4_code FOREIGN KEY (rs_l1, rs_l2, rs_l4, rs_l3)
        REFERENCES public.r4_code (r_1_code, r_2_code, r_4_code, r_3_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_pl_an__t_001_p FOREIGN KEY (p01_code)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_pl_an__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_pl_analysis
    OWNER to ictasadmin;