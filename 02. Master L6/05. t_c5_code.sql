-- Table: public.c5_code

-- DROP TABLE IF EXISTS public.c5_code;

CREATE TABLE IF NOT EXISTS public.c5_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    desc_tr_l5 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    desc_en_l5 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    t_l3 character varying(7) COLLATE pg_catalog."default" NOT NULL,
    t_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    t_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    unit character varying(10) COLLATE pg_catalog."default",
    d_pre_tr character varying(7) COLLATE pg_catalog."default",
    d_pre_en character varying(255) COLLATE pg_catalog."default",
    code_l4 character varying(12) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((c_l1)::text || '.'::text) || (c_l2)::text) || '.'::text) || (c_l3)::text) || '.'::text) || (c_l4)::text)) STORED,
    code_l5 character varying(16) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((((c_l1)::text || '.'::text) || (c_l2)::text) || '.'::text) || (c_l3)::text) || '.'::text) || (c_l4)::text) || '.'::text) || (c_l5)::text)) STORED,
    templ_15 character(20) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((t_l3)::text || '.'::text) || (t_l4)::text) || '.'::text) || (t_l5)::text)) STORED,
    CONSTRAINT c5_code_pkey PRIMARY KEY (c_l1, c_l2, c_l3, c_l4, c_l5),
    CONSTRAINT r__c5_code__c1_code FOREIGN KEY (c_l1)
        REFERENCES public.c1_code (c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c5_code__c2_code FOREIGN KEY (c_l1, c_l2)
        REFERENCES public.c2_code (c_l1, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c5_code__c3_code FOREIGN KEY (c_l3, c_l1, c_l2)
        REFERENCES public.c3_code (c_l3, c_l1, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c5_code__c4_code FOREIGN KEY (c_l4, c_l3, c_l1, c_l2)
        REFERENCES public.c4_code (c_l4, c_l3, c_l1, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c5_code__tm_c5_c FOREIGN KEY (t_l4, t_l3, t_l5)
        REFERENCES public.tm_c5_code (t_l4, t_l3, t_l5) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c5_code
    OWNER to ictasadmin;