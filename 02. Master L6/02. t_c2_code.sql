-- Table: public.c2_code

-- DROP TABLE IF EXISTS public.c2_code;

CREATE TABLE IF NOT EXISTS public.c2_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    desc_tr_l2 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    desc_en_l2 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    code_l2 character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((c_l1)::text || '.'::text) || (c_l2)::text)) STORED,
    CONSTRAINT c2_code_pkey PRIMARY KEY (c_l1, c_l2),
    CONSTRAINT r__c2_code__c1_code FOREIGN KEY (c_l1)
        REFERENCES public.c1_code (c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c2_code
    OWNER to ictasadmin;