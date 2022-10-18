-- Table: public.tm_c3_code

-- DROP TABLE IF EXISTS public.tm_c3_code;

CREATE TABLE IF NOT EXISTS public.tm_c3_code
(
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default",
    desc_en_l3 character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT tm_c3_code_pkey PRIMARY KEY (t_l3)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tm_c3_code
    OWNER to ictasadmin;