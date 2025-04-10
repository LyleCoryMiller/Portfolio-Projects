-- Capital One Credit Risk Analysis SQL Queries  
-- Project #4: Credit Risk & Default Prediction  
-- Analyst: Lyle Cory Miller  
-- Tools Used: Microsoft SQL Server  
-- Description: This script analyzes credit card default risk trends by Age, Education, Credit Limit, and Payment History.

-- 1. Default Rate by Age Group
PRINT '1. Default Rate by Age Group';

SELECT AGE, COUNT(*) AS Total_Customers,
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults,
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY AGE
ORDER BY AGE;

-- 2. Default Rate by Credit Limit
PRINT '2. Default Rate by Credit Limit';
SELECT LIMIT_BAL, COUNT(*) AS Total_Customers,
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults,
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY LIMIT_BAL
ORDER BY LIMIT_BAL;

-- 3. Default Rates by Education Level
PRINT '4. Default Rates by Education Level';
SELECT EDUCATION, COUNT(*) AS Total_Customers, 
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults, 
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY EDUCATION
ORDER BY Default_Rate_Percentage DESC;

-- 4. Default Rate by Payment History (PAY_0)
PRINT '5. Default Rate by Payment History (PAY_0)';
SELECT PAY_0, COUNT(*) AS Total_Customers,
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults,
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY PAY_0
ORDER BY PAY_0;
