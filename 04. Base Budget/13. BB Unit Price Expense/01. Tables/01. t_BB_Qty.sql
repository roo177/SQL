-- Table: public.t_bb_qty

-- DROP TABLE IF EXISTS public.t_bb_qty;

CREATE TABLE IF NOT EXISTS public.t_bb_qty
(
    rep_month character varying(255) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(255) COLLATE pg_catalog."default" NOT NULL,
    exp_base_mon date NOT NULL,
    exp_base_qty numeric(15,9),
    CONSTRAINT t_bb_qty_pkey PRIMARY KEY (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, exp_base_mon),
    CONSTRAINT pcode FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT repmonth FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_qty
    OWNER to ictasadmin;