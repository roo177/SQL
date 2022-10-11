-- Table: public.c6_code

-- DROP TABLE IF EXISTS public.c6_code;

CREATE TABLE IF NOT EXISTS public.c6_code
(
    c_l1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    c_l2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    c_l6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    code_l5 character varying(243) COLLATE pg_catalog."default",
    code_l6 character varying(243) COLLATE pg_catalog."default",
    desc_tr_l6 character varying(150) COLLATE pg_catalog."default",
    desc_en_l6 character varying(150) COLLATE pg_catalog."default",
    unit character varying(10) COLLATE pg_catalog."default",
    t_l3 character varying(7) COLLATE pg_catalog."default",
    t_l4 character varying(2) COLLATE pg_catalog."default",
    t_l5 character varying(2) COLLATE pg_catalog."default",
    t_l6 character varying(3) COLLATE pg_catalog."default",
    f2_lm character varying(6) COLLATE pg_catalog."default",
    CONSTRAINT c6_code_pkey PRIMARY KEY (c_l1, c_l2, c_l3, c_l4, c_l5, c_l6),
    CONSTRAINT r__c6_code__c1_code FOREIGN KEY (c_l1)
        REFERENCES public.c1_code (c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c6_code__c2_code FOREIGN KEY (c_l2, c_l1)
        REFERENCES public.c2_code (c_l2, c_l1) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c6_code__c3_code FOREIGN KEY (c_l3, c_l1, c_l2)
        REFERENCES public.c3_code (c_l3, c_l1, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c6_code__c4_code FOREIGN KEY (c_l4, c_l1, c_l3, c_l2)
        REFERENCES public.c4_code (c_l4, c_l1, c_l3, c_l2) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT r__c6_code__c5_code FOREIGN KEY (c_l2, c_l5, c_l4, c_l1, c_l3)
        REFERENCES public.c5_code (c_l2, c_l5, c_l4, c_l1, c_l3) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.c6_code
    OWNER to ictasadmin;