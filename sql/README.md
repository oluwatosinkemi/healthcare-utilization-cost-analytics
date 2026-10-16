SQL Analysis

This folder contains the SQL scripts used to validate the imported healthcare dataset and perform exploratory analysis for the Healthcare Utilization & Cost Analytics project.

Files

1. data_cleaning.sql

Documents SQL validation and preparation checks performed after the cleaned dataset was imported into SQL Server. These checks include total row counts, duplicate identifiers, missing values, visit distributions, date ranges, and healthcare cost summaries.

Note: The primary data cleaning was performed in Microsoft Excel.

2. exploratory_analysis.sql

Contains queries analysing patient visit frequency, unique patients, diagnoses, healthcare costs, annual trends, payment methods, gender distribution, and cost patterns by diagnosis and year.

Database Details

• Database: HealthcareAnalytics

• Table: dbo.Patient_Visits_Import

• Platform: Microsoft SQL Server

Data Quality Note

The dataset contains 999 recorded visits, including 38 records with missing cost values. These missing values were retained and not imputed. Cost summaries use available cost values only.

The dataset is synthetic and does not represent real patients or actual clinical records.
