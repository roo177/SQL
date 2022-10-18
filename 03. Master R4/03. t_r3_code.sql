-- Table: public.r3_code

-- DROP TABLE IF EXISTS public.r3_code;

CREATE TABLE IF NOT EXISTS public.r3_code
(
    r_1_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_2_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_3_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_3_desc_en character varying(150) COLLATE pg_catalog."default",
    r_3_desc_tr character varying(150) COLLATE pg_catalog."default",
    CONSTRAINT r3_code_pkey PRIMARY KEY (r_1_code, r_2_code, r_3_code),
    CONSTRAINT r__r3_code__r1_code FOREIGN KEY (r_1_code)
        REFERENCES public.r1_code (r_1_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__r3_code__r2_code FOREIGN KEY (r_1_code, r_2_code)
        REFERENCES public.r2_code (r_1_code, r_2_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.r3_code
    OWNER to ictasadmin;