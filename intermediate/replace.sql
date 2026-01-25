/*
SELECT 
'123-456-7890' as phone,
REPLACE ('123-456-7890', '-',' ') as clean_phone

*/
SELECT 
'report.txt' as old_file,
REPLACE ('report.txt','.txt','.csv') as new_file