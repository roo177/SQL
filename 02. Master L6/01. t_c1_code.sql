-- Table: public.c1_code

-- DROP TABLE IF EXISTS public.c1_code;

CREATE TABLE IF NOT EXISTS public.c1_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    desc_en_l1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    desc_tr_l1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT c1_code_pkey PRIMARY KEY (c_l1)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c1_code
    OWNER to ictasadmin;