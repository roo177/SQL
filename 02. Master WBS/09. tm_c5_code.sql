-- Table: public.tm_c5_code

-- DROP TABLE IF EXISTS public.tm_c5_code;

CREATE TABLE IF NOT EXISTS public.tm_c5_code
(
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    t_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    t_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    code_l5 character varying(255) COLLATE pg_catalog."default",
    desc_tr_l5 character varying(255) COLLATE pg_catalog."default",
    desc_en_l5 character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_c5_code_pkey PRIMARY KEY (t_l3, t_l4, t_l5),
    CONSTRAINT r__tm_c5_c__tm_c4_c FOREIGN KEY (t_l3, t_l4)
        REFERENCES public.tm_c4_code (t_l3, t_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_c5_code
    OWNER to ictasadmin;