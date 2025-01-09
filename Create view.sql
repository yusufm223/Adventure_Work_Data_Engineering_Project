-- CREATE VIEW CALENDAT
--------------------------
create view gold.calender
AS

   select 
        *  
    from
        OPENROWSET(
                     bulk 'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
                     format = 'PARQUET' 
                   )a
;

--------------------------------------------------------------------------------------------------------
--CREATE VIEW CUSTOMERS
------------------------
create view gold.customers
AS

    select 
        * 
    FROM
        OPENROWSET(
                    BULK 'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_Customers/',
                    FORMAT = 'PARQUET'
                    )b  ; 
------------------------------------------------------------------------------------------------------------
-- CREATE VIEW PRODUCTCATEGORY
------------------------------
create view gold.ProductCategory
AS

    select 
        * 
    FROM 
        OPENROWSET(
                    BULK'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_ProductCategory',
                    FORMAT = 'PARQUET'
                )c;  
-------------------------------------------------------------------------------------------------------------

-- CREATE VIEW PRODUCTS
------------------------
 
create view gold.Products
AS

select 
       *
FROM   
      OPENROWSET(
                   bulk'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_Products',
                   FORMAT = 'PARQUET'
                )d;  
---------------------------------------------------------------------------------------------------------

-- CREATE VIEW RETURNS
------------------------

create view gold.returns
AS

select 
       *
from 
     OPENROWSET(
                  BULK 'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_Returns',
                  FORMAT = 'PARQUET'
                ) e ; 
--------------------------------------------------------------------------------------------------------

-- CREATE VIEW TERRITORY
------------------------

create view gold.Territory
AS

SELECT 
      *
FROM 
     OPENROWSET
              (
                BULK 'https://advadlsgen2.dfs.core.windows.net/silver/AdventureWorks_Territory',
                FORMAT = 'PARQUET'
              ) f;   
-------------------------------------------------------------------------------------------------------------------

-- CREATE VIEW SUBCATEGORIES
--------------------------

create view gold.Subcategories
AS
  select 
        *
  FROM
        OPENROWSET(
                    bulk 'https://advadlsgen2.dfs.core.windows.net/silver/Product_Subcategories',
                    FORMAT = 'PARQUET'
                  ) h;   

------------------------------------------------------------------------------------------------------------
-- CREATE VIEW SALES

create view gold.Sales
AS
 SELECT
        *
 FROM
       OPENROWSET(
                    bulk'https://advadlsgen2.dfs.core.windows.net/silver/sales',
                    FORMAT = 'PARQUET'
                  )x ;      









