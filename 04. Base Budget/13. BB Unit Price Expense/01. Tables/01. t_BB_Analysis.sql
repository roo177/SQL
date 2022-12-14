-- Table: public.t_bb_analysis

-- DROP TABLE IF EXISTS public.t_bb_analysis;

CREATE TABLE IF NOT EXISTS public.t_bb_analysis
(
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    an_rs_quantity numeric(18,9),
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    r_loss numeric(7,5) DEFAULT 0,
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rs_l1)::text || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_r4 character varying(25) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_full character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (l_1)::text) || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    l_comb character varying(50) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((l_1)::text || '.'::text) || (l_2)::text) || '.'::text) || (l_3)::text) || '.'::text) || (l_4)::text) || '.'::text) || (l_5)::text) || '.'::text) || (l_6)::text)) STORED,
    CONSTRAINT "t_BB_Analysis_pkey" PRIMARY KEY (pc, l_1, l_2, l_3, l_4, l_5, l_6, rs_l1, rs_l2, rs_l3, rs_l4, rep_month),
    CONSTRAINT "R__t_BB_An__C6_Code" FOREIGN KEY (l_5, l_4, l_2, l_3, l_6, l_1)
        REFERENCES public.c6_code (c_l5, c_l4, c_l2, c_l3, c_l6, c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT "R__t_BB_An__R4_Code" FOREIGN KEY (rs_l1, rs_l2, rs_l4, rs_l3)
        REFERENCES public.r4_code (r_1_code, r_2_code, r_4_code, r_3_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT "R__t_BB_An__t_001_P" FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT "R__t_BB_An__t_Rep_M" FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_analysis
    OWNER to ictasadmin;