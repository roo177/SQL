-- Table: temp_r4_code

DROP TABLE IF EXISTS temp_r4_code;

CREATE TEMPORARY TABLE IF NOT EXISTS temp_r4_code
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
    key_r4_simple character varying(15) COLLATE pg_catalog."default" GENERATED ALWAYS AS ((((((((r_1_code)::text || '.'::text) || (r_2_code)::text) || '.'::text) || (r_3_code)::text) || '.'::text) || (r_4_code)::text)) STORED
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS temp_r4_code
    OWNER to ictasadmin;

INSERT INTO temp_r4_code (r_1_code, r_2_code, r_3_code, r_4_code, unit, r_4_desc_en, r_4_desc_tr, w_ufe, w_tufe, w_inf_usd, w_inf_eur, w_metal, w_petrol, w_cement,w_electricity,
currency,administration,admin_id,r_loss)
SELECT 
r_1_code, r_2_code, r_3_code, r_4_code, unit, r_4_desc_en, r_4_desc_tr, w_ufe, w_tufe, w_inf_usd, w_inf_eur, w_metal, w_petrol, w_cement,w_electricity,
currency,administration,admin_id,r_loss
from r4_code;

