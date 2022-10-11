-- Table: public.r2_code

-- DROP TABLE IF EXISTS public.r2_code;

CREATE TABLE IF NOT EXISTS public.r2_code
(
    r_1_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_2_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_2_desc_en character varying(150) COLLATE pg_catalog."default",
    r_2_desc_tr character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT r2_code_pkey PRIMARY KEY (r_1_code, r_2_code),
    CONSTRAINT r__r2_code__r1_code FOREIGN KEY (r_1_code)
        REFERENCES public.r1_code (r_1_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.r2_code
    OWNER to ictasadmin;