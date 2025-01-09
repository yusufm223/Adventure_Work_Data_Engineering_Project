
create DATABASE SCOPED CREDENTIAL cred_yusuf
WITH 
    IDENTITY = 'Managed Identity'


create EXTERNAL DATA SOURCE source_silver
WITH
 (
    LOCATION = 'https://advadlsgen2.dfs.core.windows.net/silver',
    CREDENTIAL = cred_yusuf
 ) 


 CREATE EXTERNAL DATA SOURCE source_gold 
WITH 
   (
     LOCATION = 'https://advadlsgen2.dfs.core.windows.net/gold',
     CREDENTIAL = cred_yusuf
   )  

   CREATE EXTERNAL FILE FORMAT format_parquet
   WITH
   (
      FORMAT_TYPE = PARQUET,
      DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec' 
   )  

--------------------------------------------------------------------------------------

-- CREATE EXTERNAL TABLE EXTSALES
-------------------------------------

CREATE EXTERNAL table gold.extsales
WITH
 (
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
 )
AS
select * from gold.Sales;

SELECT * from gold.extsales;


