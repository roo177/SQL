CREATE OR REPLACE FUNCTION ccdb.fn_email_details_auto()
  RETURNS TABLE (code integer, area smallint, action smallint, flag smallint
               , ucount integer, view_cnt integer)
  LANGUAGE sql AS
$func$
   SELECT u.section_code, u.ddu_area, u.ddu_action, u.status_flag
        , u.ccdb_ucount, u.ccdb_view_cnt
   FROM   ccdb.update_qtable u
   WHERE  u.entry_time >= now()::date - 1
   AND    u.entry_time <  now()::date        -- sargable!
   ORDER  BY u.section_code, u.ddu_area, u.ddu_action;
$func$;

--Should be much faster while returning the same.
--Also, use this:

WHERE  u.entry_time >= now()::date - 1
AND    u.entry_time <  now()::date