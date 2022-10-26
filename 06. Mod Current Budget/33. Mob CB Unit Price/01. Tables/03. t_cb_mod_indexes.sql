-- Table: t_cb_mod_indexes

-- DROP TABLE IF EXISTS t_cb_mod_indexes;

CREATE TEMPORARY TABLE IF NOT EXISTS t_cb_mod_indexes
(
    rep_month character varying(4) COLLATE pg_catalog."default" NOT NULL,
    month date NOT NULL,
    bb_metal numeric(18,4),
    bb_electricity numeric(18,4),
    bb_cement numeric(18,4),
    bb_petrol numeric(18,4),
    bb_inf_usd numeric(18,4),
    bb_inf_eur numeric(18,4),
    bb_ufe numeric(18,4),
    bb_tufe numeric(18,4)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS t_cb_mod_indexes
    OWNER to ictasadmin;


INSERT INTO t_cb_mod_indexes (rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe)

SELECT 
rep_month, month, bb_metal, bb_electricity, bb_cement, bb_petrol, bb_inf_usd, bb_inf_eur, bb_ufe, bb_tufe
from t_cb_indexes
where rep_month = (SELECT MAX(rep_month) from t_rep_month);

