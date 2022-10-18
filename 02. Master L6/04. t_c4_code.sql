-- Table: public.c4_code

-- DROP TABLE IF EXISTS public.c4_code;

CREATE TABLE IF NOT EXISTS public.c4_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    code_l3 character varying(243) COLLATE pg_catalog."default",
    code_l4 character varying(243) COLLATE pg_catalog."default",
    desc_tr_l4 character varying(255) COLLATE pg_catalog."default",
    desc_en_l4 character varying(255) COLLATE pg_catalog."default",
    t_l3 character varying(7) COLLATE pg_catalog."default",
    t_l4 character varying(2) COLLATE pg_catalog."default",
    tmpl_l4 character varying(243) COLLATE pg_catalog."default",
    CONSTRAINT c4_code_pkey PRIMARY KEY (c_l1, c_l2, c_l3, c_l4),
    CONSTRAINT r__c4_code__c1_code FOREIGN KEY (c_l1)
        REFERENCES public.c1_code (c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c4_code__c2_code FOREIGN KEY (c_l2, c_l1)
        REFERENCES public.c2_code (c_l2, c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c4_code__c3_code FOREIGN KEY (c_l3, c_l1, c_l2)
        REFERENCES public.c3_code (c_l3, c_l1, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c4_code
    OWNER to ictasadmin;