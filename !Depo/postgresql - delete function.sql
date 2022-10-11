CREATE OR REPLACE FUNCTION test5() returns BOOLEAN AS
$$
DECLARE
id varchar := 'T';

BEGIN
raise notice 'Testing %', id;
Delete from c1_code where c_l1 = id;

RETURN TRUE;
End;

$$
language plpgsql;

 

CREATE OR REPLACE FUNCTION test5(tbl regclass, col text, val text, out success bool) returns BOOLEAN AS
$$
BEGIN
EXECUTE format('
   DELETE FROM %s
   WHERE  %I = $1
   RETURNING TRUE', tbl, col)
USING   val
INTO    success;

RETURN;
End;
$$
language plpgsql;

SELECT test5('public.c1_code', 'desc_en_l1', 'test');