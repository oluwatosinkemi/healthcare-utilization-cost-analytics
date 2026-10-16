/*
Healthcare Utilization & Cost Analytics
SQL Data Validation and Preparation

Database: HealthcareAnalytics
Table: dbo.Patient_Visits_Import

Note:
The primary data cleaning was performed in Microsoft Excel.
This script documents the SQL validation and preparation checks
performed after the cleaned dataset was imported into SQL Server.
*/

USE HealthcareAnalytics;
GO

SELECT COUNT(*) AS Total_Rows
FROM dbo.Patient_Visits_Import;
GO

SELECT
    visit_id,
    COUNT(*) AS Duplicate_Count
FROM dbo.Patient_Visits_Import
GROUP BY visit_id
HAVING COUNT(*) > 1;
GO

SELECT
    SUM(CASE WHEN patient_id IS NULL THEN 1 ELSE 0 END) AS Missing_Patient_ID,
    SUM(CASE WHEN patient_name IS NULL THEN 1 ELSE 0 END) AS Missing_Name,
    SUM(CASE WHEN diagnosis IS NULL THEN 1 ELSE 0 END) AS Missing_Diagnosis,
    SUM(CASE WHEN cost IS NULL THEN 1 ELSE 0 END) AS Missing_Cost
FROM dbo.Patient_Visits_Import;
GO

SELECT
    gender,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY gender
ORDER BY Visit_Count DESC;
GO

SELECT
    diagnosis,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY diagnosis
ORDER BY Visit_Count DESC;
GO

SELECT
    payment_type,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY payment_type
ORDER BY Visit_Count DESC;
GO

SELECT
    MIN(visit_date) AS Earliest_Visit_Date,
    MAX(visit_date) AS Latest_Visit_Date
FROM dbo.Patient_Visits_Import;
GO

SELECT
    COUNT(*) AS Missing_Cost_Records
FROM dbo.Patient_Visits_Import
WHERE cost IS NULL;
GO

SELECT
    COUNT(cost) AS Records_With_Cost,
    SUM(cost) AS Total_Cost,
    AVG(cost) AS Average_Cost
FROM dbo.Patient_Visits_Import;
GO
