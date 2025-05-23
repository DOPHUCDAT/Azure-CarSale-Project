-- Query of Copy Data activity in Azure Data Factory of incremental load pipeline
select * 
from car_data 
where Date_ID > '@{activity('Last_Load').output.value[0].last_load}'
and Date_ID <= '@{activity('Current_Load').output.value[0].max_date}'
-- Query of Look up activity in Azure Data Factory of incremental load pipeline (Min)
select * from watermark
-- Query of Look up activity in Azure Data Factory of incremental load pipeline (Max)
select max(Date_ID) as Date_ID from car_data