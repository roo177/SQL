alter table t_ac_bb_exp add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;
        

alter table t_ac_exp add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;
        
alter table t_bb_analysis add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;
        
alter table t_bb_analysis add
CONSTRAINT r4_code FOREIGN KEY (rs_l4, rs_l1, rs_l2, rs_l3)
REFERENCES public.r4_code (r_4_code, r_1_code, r_2_code, r_3_code) MATCH SIMPLE
ON UPDATE CASCADE
ON DELETE RESTRICT,


alter table t_bb_inc_qty add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;


alter table t_bb_indexes add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_bb_qty add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_cb_inc_wbs add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_cb_inc_qty add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_cb_indexes add
    CONSTRAINT pcode FOREIGN KEY (pc)
        REFERENCES public.t_001_projects (p_code) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_cb_indexes add
    CONSTRAINT r__t_cb_in__t_rep_m FOREIGN KEY (rep_month)
        REFERENCES public.t_rep_month (rep_month) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;

alter table t_cb_qty add
CONSTRAINT l6 FOREIGN KEY (l_1, l_3, l_2, l_5, l_6, l_4)
        REFERENCES public.c6_code (c_l1, c_l3, c_l2, c_l5, c_l6, c_l4) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE RESTRICT;