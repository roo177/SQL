-- Table: public.r1_code

-- DROP TABLE IF EXISTS public.r1_code;

CREATE TABLE IF NOT EXISTS public.r1_code
(
    r_1_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_1_desc_en character varying(150) COLLATE pg_catalog."default",
    r_1_desc_tr character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT r1_code_pkey PRIMARY KEY (r_1_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.r1_code
    OWNER to ictasadmin;