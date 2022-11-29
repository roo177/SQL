-- function: public.q_bb_profit_mt()

drop function if exists public.q_bb_profit_mt();

create or replace function public.q_bb_profit_mt(
	)
    returns boolean
    language 'plpgsql'
    cost 100
    volatile parallel unsafe
as $body$
begin

-- table: t_bb_profit_st

-- drop table if exists t_bb_profit_st cascade;

create table if not exists t_bb_profit_st
(   
    rep_month character varying(4) collate pg_catalog."default",
    pc character varying(3) collate pg_catalog."default",
    j_code character varying(50) collate pg_catalog."default",
    desc_tr_l2 character varying(255) collate pg_catalog."default",
    desc_tr_l3 character varying(255) collate pg_catalog."default",
    month date,
    expense double precision,
    income double precision,
    curr character varying(3) collate pg_catalog."default",
    l_1 character varying(1) collate pg_catalog."default",
    l_2 character varying(2) collate pg_catalog."default",
    l_3 character varying(2) collate pg_catalog."default",
    l_4 character varying(2) collate pg_catalog."default",
    l_5 character varying(2) collate pg_catalog."default",
    l_6 character varying(3) collate pg_catalog."default",
    profit double precision,
    desc_tr_l6 character varying(255) collate pg_catalog."default",
    key_r_pc_l6 character varying(50) collate pg_catalog."default",
    unit character varying(50) collate pg_catalog."default",
    desc_tr_l4 character varying(255) collate pg_catalog."default",
    desc_tr_l5 character varying(255) collate pg_catalog."default"
)

tablespace pg_default;

--alter table if exists t_bb_profit_st
--    owner to ictasadmin;

raise notice 'deleting existing data';
delete from t_bb_profit_st;
raise notice 'appending new data';

insert into t_bb_profit_st

select q_bb_profit.rep_month
	,q_bb_profit.pc
	,l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6 as j_code
	,c2_code.desc_tr_l2
	,c3_code.desc_tr_l3
	,q_bb_profit.month
	,q_bb_profit.expense
	,q_bb_profit.income
	,q_bb_profit.curr
	,q_bb_profit.l_1
	,q_bb_profit.l_2
	,q_bb_profit.l_3
	,q_bb_profit.l_4
	,q_bb_profit.l_5
	,q_bb_profit.l_6
	,q_bb_profit.profit
	,c6_code.desc_tr_l6
	,q_bb_profit.key_r_pc_l6
	,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5
from ((((q_bb_profit
	left join c3_code on (q_bb_profit.l_3 = c3_code.c_l3) 
	and (q_bb_profit.l_2 = c3_code.c_l2) 
	and (q_bb_profit.l_1 = c3_code.c_l1))
	left join c2_code on (q_bb_profit.l_2 = c2_code.c_l2) 
	and (q_bb_profit.l_1 = c2_code.c_l1))
	left join c6_code on (q_bb_profit.l_6 = c6_code.c_l6) 
	and (q_bb_profit.l_5 = c6_code.c_l5) 
	and (q_bb_profit.l_4 = c6_code.c_l4) 
	and (q_bb_profit.l_3 = c6_code.c_l3) 
	and (q_bb_profit.l_2 = c6_code.c_l2) 
	and (q_bb_profit.l_1 = c6_code.c_l1))
	left join c4_code on (q_bb_profit.l_4 = c4_code.c_l4) 
	and (q_bb_profit.l_3 = c4_code.c_l3) 
	and (q_bb_profit.l_2 = c4_code.c_l2) 
	and (q_bb_profit.l_1 = c4_code.c_l1))
	left join c5_code on (q_bb_profit.l_5 = c5_code.c_l5) 
	and (q_bb_profit.l_4 = c5_code.c_l4) 
	and (q_bb_profit.l_3 = c5_code.c_l3) 
	and (q_bb_profit.l_2 = c5_code.c_l2) 
	and (q_bb_profit.l_1 = c5_code.c_l1) 
group by q_bb_profit.rep_month
	,q_bb_profit.pc
	,l_1 || '.' || l_2 || '.' || l_3 || '.' || l_4 || '.' || l_5 || '.' || l_6
	,c2_code.desc_tr_l2
	,c3_code.desc_tr_l3
	,q_bb_profit.month
	,q_bb_profit.expense
	,q_bb_profit.income
	,q_bb_profit.curr
	,q_bb_profit.l_1
	,q_bb_profit.l_2
	,q_bb_profit.l_3
	,q_bb_profit.l_4
	,q_bb_profit.l_5
	,q_bb_profit.l_6
	,q_bb_profit.profit
	,c6_code.desc_tr_l6
	,q_bb_profit.key_r_pc_l6
	,c6_code.unit
	,c4_code.desc_tr_l4
	,c5_code.desc_tr_l5;


return true;
end;

$body$;

--alter function public.q_bb_profit_mt()
--    owner to ictasadmin;
