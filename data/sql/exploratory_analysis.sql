/*
Healthcare Utilization & Cost Analytics
Exploratory Analysis

Database: HealthcareAnalytics
Table: dbo.Patient_Visits_Import
*/

USE HealthcareAnalytics;
GO

SELECT
    COUNT(*) AS Total_Visits,
    COUNT(DISTINCT patient_id) AS Unique_Patients,
    COUNT(*) - COUNT(DISTINCT patient_id) AS Repeat_Visits
FROM dbo.Patient_Visits_Import;
GO

SELECT
    patient_id,
    patient_name,
    gender,
    COUNT(*) AS Number_of_Visits
FROM dbo.Patient_Visits_Import
GROUP BY
    patient_id,
    patient_name,
    gender
ORDER BY Number_of_Visits DESC;
GO

SELECT
    diagnosis,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY diagnosis
ORDER BY Visit_Count DESC;
GO

SELECT
    diagnosis,
    SUM(cost) AS Total_Cost,
    AVG(cost) AS Average_Cost
FROM dbo.Patient_Visits_Import
GROUP BY diagnosis
ORDER BY Total_Cost DESC;
GO

SELECT
    YEAR(visit_date) AS Visit_Year,
    COUNT(*) AS Total_Visits,
    COUNT(cost) AS Records_With_Cost,
    SUM(cost) AS Total_Cost,
    AVG(cost) AS Average_Cost
FROM dbo.Patient_Visits_Import
GROUP BY YEAR(visit_date)
ORDER BY Visit_Year;
GO

SELECT
    payment_type,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY payment_type
ORDER BY Visit_Count DESC;
GO

SELECT
    gender,
    COUNT(*) AS Visit_Count
FROM dbo.Patient_Visits_Import
GROUP BY gender
ORDER BY Visit_Count DESC;
GO

SELECT
    gender,
    COUNT(cost) AS Records_With_Cost,
    AVG(cost) AS Average_Cost
FROM dbo.Patient_Visits_Import
GROUP BY gender
ORDER BY Average_Cost DESC;
GO

SELECT
    YEAR(visit_date) AS Visit_Year,
    diagnosis,
    COUNT(*) AS Visit_Count,
    SUM(cost) AS Total_Cost,
    AVG(cost) AS Average_Cost
FROM dbo.Patient_Visits_Import
GROUP BY
    YEAR(visit_date),
    diagnosis
ORDER BY
    Visit_Year,
    Total_Cost DESC;
GO

SELECT TOP 10
    visit_id,
    patient_id,
    patient_name,
    visit_date,
    diagnosis,
    cost
FROM dbo.Patient_Visits_Import
WHERE cost IS NOT NULL
ORDER BY cost DESC;
GO

SELECT
    COUNT(*) AS Total_Records,
    COUNT(cost) AS Records_With_Cost,
    SUM(CASE WHEN cost IS NULL THEN 1 ELSE 0 END) AS Missing_Cost_Records
FROM dbo.Patient_Visits_Import;
GO
