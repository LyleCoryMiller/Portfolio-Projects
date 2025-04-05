-- Global Logistics Performance SQL Queries
-- Project #3: International Supply Chain & LPI Score Assessment
-- Analyst: Lyle Cory Miller
-- Tools Used: Microsoft SQL Server
-- Description:
--   This script analyzes global logistics performance using the World Bank's
--   Logistics Performance Index (LPI) dataset. Queries focus on identifying
--   top and bottom performing countries by LPI and infrastructure scores,
--   tracking global performance trends over time, and providing insight into
--   regional disparities for strategic trade development.
-- 
-- Database: LPI_International_Logistics_Analysis
-- Last Updated: November 2024

-- 1. Retrieve Available Years
PRINT '1. Retrieve Available Years';
SELECT DISTINCT Current_Year
FROM LPI_International_Logistics_Analysis;

-- 2. Top 3 Countries by LPI Score (2023)
PRINT '2. Top 3 Countries by LPI Score (2023)';
SELECT TOP 6 Economy, LPI_Score
FROM LPI_International_Logistics_Analysis
WHERE Current_Year = 2023
ORDER BY LPI_Score DESC;

-- 3. Bottom 3 Countries by LPI Score (2023)
PRINT '3. Bottom 3 Countries by LPI Score (2023)';
SELECT TOP 3 Economy, LPI_Score
FROM LPI_International_Logistics_Analysis
WHERE Current_Year = 2023
ORDER BY LPI_Score ASC;

-- 4. Global Average LPI Score Over Time
PRINT '4. Global Average LPI Score Over Time';
SELECT Current_Year, AVG(LPI_Score) AS Avg_LPI_Score
FROM LPI_International_Logistics_Analysis
GROUP BY Current_Year
ORDER BY Current_Year ASC;

-- 5. Infrastructure Scores by Country (2023)
PRINT '5. Infrastructure Score by Country (2023)';
SELECT Economy, Infrastructure_Score
FROM LPI_International_Logistics_Analysis
WHERE Current_Year = 2023
ORDER BY Infrastructure_Score DESC;

