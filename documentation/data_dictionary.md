Data Dictionary

Project: Healthcare Utilization & Cost Analytics

This document describes the fields in the synthetic healthcare patient visits dataset used for this project.

Column	Description
visit_id	Unique identifier assigned to each recorded visit.
patient_id	Identifier used to distinguish individual patients.
patient_name	Synthetic name assigned to the patient.
gender	Recorded gender of the patient.
visit_date	Date the healthcare visit occurred.
diagnosis	Diagnosis recorded for the visit.
cost	Recorded healthcare cost for the visit, in Nigerian Naira (₦). Some records have missing cost values.
payment_type	Payment method recorded for the visit, such as cash, card, or insurance.
year  Study period from 2022 to 2024

Dataset Summary

• Total recorded visits: 999

• Unique patients: 51

• Study period: 2022 to 2024

• Missing cost records: 38

Data Notes

The dataset is synthetic and does not represent actual patients or real clinical records. The analysis describes patterns within the available dataset and should not be interpreted as population level estimates or causal relationships.

Missing cost values were retained and considered during the analysis. Cost summaries are based on available cost values.sql
