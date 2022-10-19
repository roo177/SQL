-- Table: public.t_bb_inc_qty

-- DROP TABLE IF EXISTS public.t_bb_inc_qty;

CREATE TABLE IF NOT EXISTS public.t_bb_inc_qty
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    pc character varying(3) COLLATE pg_catalog."default" NOT NULL,
    l_1 character varying(1) COLLATE pg_catalog."default" NOT NULL,
    l_2 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_3 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_4 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_5 character varying(2) COLLATE pg_catalog."default" NOT NULL,
    l_6 character varying(3) COLLATE pg_catalog."default" NOT NULL,
    inc_base_mon date NOT NULL,
    inc_base_qty numeric(18,9),
    key_r_pc_l6 character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT t_bb_inc_qty_pkey PRIMARY KEY (rep_month, pc, l_1, l_2, l_3, l_4, l_5, l_6, inc_base_mon)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.t_bb_inc_qty
    OWNER to ictasadmin;