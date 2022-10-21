-- Table: public.c3_code

-- DROP TABLE IF EXISTS public.c3_code;

CREATE TABLE IF NOT EXISTS public.c3_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    desc_tr_l3 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    desc_en_l3 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    code_l2 character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((c_l1)::text || '.'::text) || (c_l2)::text)) STORED,
    code_l3 character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((c_l1)::text || '.'::text) || (c_l2)::text) || '.'::text) || (c_l3)::text)) STORED,
    CONSTRAINT c3_code_pkey PRIMARY KEY (c_l1, c_l2, c_l3),
    CONSTRAINT r__c3_code__c1_code FOREIGN KEY (c_l1)
        REFERENCES public.c1_code (c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c3_code__c2_code FOREIGN KEY (c_l2, c_l1)
        REFERENCES public.c2_code (c_l2, c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c3_code__tm_c3_c FOREIGN KEY (t_l3)
        REFERENCES public.tm_c3_code (t_l3) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c3_code
    OWNER to ictasadmin;