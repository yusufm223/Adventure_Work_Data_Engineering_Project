# Adventure_Work_Data_Engineering_Project

Introduction
This project performs the end-to-end Data Engineering implementation for the AdventureWorks data using Microsoft Azure services. This project helps to understand the data ingestion from github, storing the data, transforming, performing analysis and visualization of the AdventureWorks data.

### Project Overview
This project uses the AdventureWorks dataset, fetched directly from Github. With this data we process, transform and deliver data for Business Intelligence (BI) purpose, using the resources like Azure Data Factory, Azure Databricks, Azure Synapse Analytics, and Power BI.

### Architecture Diagram
Architecture Diagram The data flows through the following steps:

Data Source: The source of the data is AdventureWorks data which is stored in Github.
Data Ingestion: Data from the Github is ingested to Azure Data Factory. In the Data Factory the data is prepared for processing.
Raw Data Storage: The ingested raw data is stored in Azure Data Lake Gen2.
Transformation: Azure Databricks is used for data transformation. Various operations are performed to process the raw data.
Serving: Azure Synapse Analytics is used for generating insights from the transformed data.
Reporting: The data visualizations are done with Power BI.
Azure Servies Used
Microsoft Azure
Resource Groups
Azure Data Factory
Azure Data Lake Gen2
Azure Databricks
Microsoft Entra ID
Azure Syanpse Analytcis
Power BI

### Data Source
The project data is used from AdventureWorks data stored in Github. The dataset involves multiple files with information about

Calendar
Customers
Product Categories
Product Subcategories
Products
Returns
Sales 2015
Sales 2016
Sales 2017
Territories

### Resource Groups
Resource Groups in Azure are logical containers used to manage and organize project related Azure resources. They support lifecycle management by enabling easy deletion of associated resources. Additionally, resource groups help track costs and usage across services. The first step here is to setup Resource groups. Following image shows the resource groups implementation

Resource Groups

### Data Ingestion
We have used Azure Data Factory for data orchestration and automation. Data Factory oulls the data from GitHub using an HTTP connector and stores it in the bronze container in Azure Storage. Parameters are added to the pipeline for adaptability to changes in the data source.

Data Ingestion

### Storage Accounts
We have used Azure Data Lake Gen2 for storing the raw data. In Azure Data Engineering, the Bronze, Silver and Gold layers represent a data architecture pattern used in Data Lakes and Lakehouses for organiing and processing data. The Bronze layer is the raw data storage layer where data from various sources is ingested in its original format regardless of structure. The data is immutable and is used for data reprocessing.

### BronzeLayer

The Silver layer contains cleaned and transformed data from the Bronze layer, the data transformation is performed through Azure Databricks where the process like data standardization and basic transformations takes place making it suitable for intermediate analytics and operational reporting.

### SilverLayer

The gold layer contains curated, fully processed adventure data that is ready for advanced analytics. The data in this layer is aggregated, summarized, and enriched to support decision-making processes.

### GoldLayer

This layered approach ensures data quality, scalability, and easier data management while enabling robust analytics using Azure services like Azure data Lake Storage, Azure Synapse Analytics, Azure Data Fctory and Azure Databricks.

### Data Transformation
Azure Databricks is used to convert raw data in bronze container to a structured format. For this we have made sure a cluster for databricks is created for data efficiency. This databricks is connected to the data in the silver layer and is transformed for further analysis. Please find the attached ipynb file which performs the transformation on the data present in silver layer. The transformations include performing normalization of data formats for consistency, concatenating data to make it more usable for analysis.

### Insights and Analytics
The final step here was integrating the data with Power BI tool to visualize and generate insights. Here are the reports to present actionable insights to stakeholders. Below graph shows shows number of orders on different order dates. Insights1

### Summary of Project
The project involved building a scalable data pipeline for processing and analyzing large datasets using Azure based tools. Azure Data Factory orchestrated data ingestion into Azure Data Lake Storage for centralized storage. Data transformation was performed using Azure Databricks, implementing ETL processes to clean, aggregate, and enrich data. Processed data was loaded into Azure Synapse Analytics for analytical querying and reporting. Power BI dashboards provided real-time business insights.

Key aspects included optimizing data pipeline performance, ensuring data quality through validation checks, and implementing robust security measures. The solution supported data-driven decision-making by delivering accurate, timely, and actionable insights.
