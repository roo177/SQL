SELECT 
CONCAT('ALTER TABLE ' ,table_schema,'.', table_name, ' RENAME COLUMN ','"',column_name,'"',' TO ',LOWER(column_name)), *
FROM information_schema.columns 
WHERE table_schema = 'public';