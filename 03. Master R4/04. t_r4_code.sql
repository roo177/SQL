-- Table: public.r4_code

-- DROP TABLE IF EXISTS public.r4_code;

CREATE TABLE IF NOT EXISTS public.r4_code
(
    r_1_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_2_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_3_code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    r_4_code character varying(3) COLLATE pg_catalog."default" NOT NULL,
    unit character varying(25) COLLATE pg_catalog."default",
    r_4_desc_en character varying(160) COLLATE pg_catalog."default",
    r_4_desc_tr character varying(160) COLLATE pg_catalog."default",
    w_ufe numeric(7,5),
    w_tufe numeric(7,5),
    w_inf_usd numeric(7,5),
    w_inf_eur numeric(7,5),
    w_metal numeric(7,5),
    w_petrol numeric(7,5),
    w_cement numeric(7,5),
    w_electricity numeric(7,5),
    currency character varying(3) COLLATE pg_catalog."default",
    administration character varying(50) COLLATE pg_catalog."default",
    admin_id character varying(50) COLLATE pg_catalog."default",
    r_loss numeric(7,5) DEFAULT 0,
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((r_1_code)::text || '.'::text) || (r_2_code)::text) || '.'::text) || (r_3_code)::text) || '.'::text) || (r_4_code)::text)) STORED,
    code_r4 character varying(12) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((r_1_code)::text || '.'::text) || (r_2_code)::text) || '.'::text) || (r_3_code)::text) || '.'::text) || (r_4_code)::text)) STORED,
    CONSTRAINT r4_code_pkey PRIMARY KEY (r_1_code, r_2_code, r_3_code, r_4_code),
    CONSTRAINT code_r4_unique UNIQUE (code_r4),
    CONSTRAINT r4_unit FOREIGN KEY (unit)
        REFERENCES public.t_units (unit) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
        NOT VALID,
    CONSTRAINT r__r4_code__r1_code FOREIGN KEY (r_1_code)
        REFERENCES public.r1_code (r_1_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__r4_code__r2_code FOREIGN KEY (r_2_code, r_1_code)
        REFERENCES public.r2_code (r_2_code, r_1_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__r4_code__r3_code FOREIGN KEY (r_2_code, r_1_code, r_3_code)
        REFERENCES public.r3_code (r_2_code, r_1_code, r_3_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.r4_code
    OWNER to ictasadmin;