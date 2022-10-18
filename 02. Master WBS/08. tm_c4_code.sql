-- Table: public.tm_c4_code

-- DROP TABLE IF EXISTS public.tm_c4_code;

CREATE TABLE IF NOT EXISTS public.tm_c4_code
(
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    t_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    code character varying(243) COLLATE pg_catalog."default",
    desc_tr_l4 character varying(255) COLLATE pg_catalog."default",
    desc_en_l4 character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_c4_code_pkey PRIMARY KEY (t_l3, t_l4),
    CONSTRAINT r__tm_c4_c__tm_c3_c FOREIGN KEY (t_l3)
        REFERENCES public.tm_c3_code (t_l3) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_c4_code
    OWNER to ictasadmin;