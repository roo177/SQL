-- Table: t_rep_month

-- DROP TABLE IF EXISTS t_rep_month;

CREATE TEMP TABLE IF NOT EXISTS t_rep_month
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    rep_month_date timestamp with time zone,
    CONSTRAINT t_rep_month_pkey PRIMARY KEY (rep_month)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS t_rep_month
    OWNER to ictasadmin;