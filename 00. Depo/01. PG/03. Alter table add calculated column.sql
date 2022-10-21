alter table t_ac_bb_exp
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

 alter table t_ac_exp
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;


alter table t_bb_analysis
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "p01_code" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

alter table t_bb_analysis
add column key_r4_simple varchar(15) generated always as ( "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_bb_analysis
add column key_r4 varchar(25) generated always as ( "rep_month" || '.' || "p01_code" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_bb_analysis
add column key_full varchar(50) generated always as ( "rep_month" || '.' || "p01_code" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table r4_code
add column key_r4_simple varchar(15) generated always as ( "r_1_code" || '.' || "r_2_code" || '.' || "r_3_code" || '.' || "r_4_code") STORED;

alter table c2_code
add column code_l2 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" ) STORED;

alter table c3_code
add column code_l2 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" ) STORED;

alter table c3_code
add column code_l3 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" ) STORED;

alter table c4_code
add column code_l3 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" ) STORED;

alter table c4_code
add column code_l4 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" || '.' || "c_l4" ) STORED;

alter table c5_code
add column code_l4 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" || '.' || "c_l4" ) STORED;

alter table c5_code
add column code_l5 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" || '.' || "c_l4" || '.' || "c_l5" ) STORED;

alter table c6_code
add column code_l5 varchar(15) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" || '.' || "c_l4" || '.' || "c_l5" ) STORED;

alter table c6_code
add column code_l6 varchar(25) generated always as ( "c_l1" || '.' || "c_l2" || '.' || "c_l3" || '.' || "c_l4" || '.' || "c_l5" || '.' || "c_l6" ) STORED;


alter table t_bb_inc_qty
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

 alter table t_bb_inc_wbs
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

alter table t_bb_analysis
add column l_comb varchar(50) generated always as ("l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;


alter table t_bb_mon_curr_rates
add column r_eur_eur numeric(12,6) generated always as (1) STORED;

alter table t_bb_mon_curr_rates
add column r_eur_usd numeric(12,6) generated always as ("r_eur_try"/"r_usd_try") STORED;

alter table t_bb_mon_curr_rates
add column r_try_eur numeric(12,6) generated always as (1/"r_eur_try") STORED;

alter table t_bb_mon_curr_rates
add column r_try_try numeric(12,6) generated always as (1) STORED;

alter table t_bb_mon_curr_rates
add column r_usd_usd numeric(12,6) generated always as (1) STORED;

alter table t_bb_mon_curr_rates
add column r_usd_eur numeric(12,6) generated always as ("r_usd_try"/"r_eur_try") STORED;

alter table t_bb_mon_curr_rates
add column r_try_usd numeric(12,6) generated always as (1/"r_usd_try") STORED;

alter table t_bb_res_up
add column key_r4_simple varchar(15) generated always as ( "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_bb_res_up
add column key_r4 varchar(25) generated always as ( "rep_month" || '.' || "pc" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_bb_qty
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

alter table t_cb_inc_wbs
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

 alter table t_cb_inc_qty
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

  alter table t_cb_qty
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;



alter table t_pl_analysis
add column key_r_pc_l6 varchar(50) generated always as ("rep_month" || '.' ||  "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

alter table t_pl_analysis
add column key_r4_simple varchar(15) generated always as ( "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_pl_analysis
add column key_r4 varchar(25) generated always as ( "rep_month" || '.' || "pc" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_pl_analysis
add column key_full varchar(50) generated always as ( "rep_month" || '.' || "pc" || '.' || "l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_pl_analysis
add column l_comb varchar(50) generated always as ("l_1" || '.' || "l_2" || '.' || "l_3" || '.' || "l_4" ||
 '.' || "l_5" || '.' || "l_6") STORED;

alter table t_cb_res_up
add column key_r4_simple varchar(15) generated always as ( "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;

alter table t_cb_res_up
add column key_r4 varchar(25) generated always as ( "rep_month" || '.' || "pc" || '.' || "rs_l1" || '.' || "rs_l2" || '.' || "rs_l3" || '.' || "rs_l4") STORED;