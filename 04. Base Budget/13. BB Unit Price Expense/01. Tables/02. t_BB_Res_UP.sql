-- Table: public.t_bb_res_up

-- DROP TABLE IF EXISTS public.t_bb_res_up;

CREATE TABLE IF NOT EXISTS public.t_bb_res_up
(
    up_pr_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    up_rs_l1 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    up_rs_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    up_rs_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    up_rs_l4 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    up_cost numeric(18,4),
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    key_r4 character varying(50) COLLATE pg_catalog."default",
    key_r4_simple character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT t_bb_res_up_pkey PRIMARY KEY (up_pr_code, up_rs_l1, up_rs_l2, up_rs_l3, up_rs_l4, rep_month),
    CONSTRAINT r__t_bb_re__r4_code FOREIGN KEY (up_rs_l4, up_rs_l2, up_rs_l1, up_rs_l3)
        REFERENCES public.r4_code (r_4_code, r_2_code, r_1_code, r_3_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__t_bb_re__t_001_p FOREIGN KEY (up_pr_code)
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