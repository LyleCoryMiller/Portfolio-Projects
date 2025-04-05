-- Credit Risk Default Analysis SQL Queries
-- Project #4: Credit Risk & Default Prediction
-- Analyst: Lyle Cory Miller
-- Tools Used: Microsoft SQL Server
-- Description: This script analyzes credit card default trends across Age, Education, Credit Limit, and Payment History.

-- 1. Age vs Default Rate
PRINT '1. Age vs Default Rate';

SELECT AGE, COUNT(*) AS Total_Customers,
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults,
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY AGE
ORDER BY AGE;

-- 2. Credit Limit vs Default Rate
PRINT '2. Credit Limit vs Default Rate';
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

-- 4. Global Average LPI Scores Over Time
PRINT '5. Global Average LPI Scores Over Time';
SELECT PAY_0, COUNT(*) AS Total_Customers,
       SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) AS Defaults,
       (SUM(CAST(DEFAULT_NEXT_MONTH AS INT)) * 100.0 / COUNT(*)) AS Default_Rate_Percentage
FROM Credit_Risk_Analysis_Table
GROUP BY PAY_0
ORDER BY PAY_0;
