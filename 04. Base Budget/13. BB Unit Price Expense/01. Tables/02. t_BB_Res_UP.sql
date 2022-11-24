-- Table: public.t_bb_res_up

-- DROP TABLE IF EXISTS public.t_bb_res_up;

CREATE TABLE IF NOT EXISTS public.t_bb_res_up
(
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    up_cost numeric(18,4),
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((rs_l1)::text || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    key_r4 character varying(25) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((((rep_month)::text || '.'::text) || (pc)::text) || '.'::text) || (rs_l1)::text) || '.'::text) || (rs_l2)::text) || '.'::text) || (rs_l3)::text) || '.'::text) || (rs_l4)::text)) STORED,
    price_month date,
    CONSTRAINT t_bb_res_up_pkey PRIMARY KEY (pc, rs_l1, rs_l2, rs_l3, rs_l4, rep_month),
    CONSTRAINT r__t_bb_re__r4_code FOREIGN KEY (rs_l1, rs_l2, rs_l4, rs_l3)
        REFERENCES public.r4_code (r_1_code, r_2_code, r_4_code, r_3_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_re__t_001_p FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_re__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_res_up
    OWNER to ictasadmin;