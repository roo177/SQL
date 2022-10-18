-- Table: public.tm_c6_code

-- DROP TABLE IF EXISTS public.tm_c6_code;

CREATE TABLE IF NOT EXISTS public.tm_c6_code
(
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    t_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    t_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    t_l6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    code_l5 character varying(30) COLLATE pg_catalog."default",
    code_l6 character varying(30) COLLATE pg_catalog."default",
    desc_tr_l6 character varying(255) COLLATE pg_catalog."default",
    desc_en_l6 character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_c6_code_pkey PRIMARY KEY (t_l3, t_l4, t_l5, t_l6),
    CONSTRAINT r__tm_c6_c__tm_c5_c FOREIGN KEY (t_l4, t_l3, t_l5)
        REFERENCES public.tm_c5_code (t_l4, t_l3, t_l5) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_c6_code
    OWNER to ictasadmin;