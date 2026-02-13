/* Does overtime affect attrition? (Compare Yes vs. No overtime)
Does distance from home affect attrition?
Does job satisfaction affect attrition?
Does work-life balance affect attrition?
Does business travel frequency affect attrition? */

--SELECT * FROM turnover
--Does overtime affect attrition? (Compare Yes vs. No overtime)
SELECT
    Overtime,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
    CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY Overtime;


--Does job satisfaction affect attrition?
SELECT
	jobsatisfaction,
	COUNT(jobsatisfaction) AS total,
	SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
    CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY jobsatisfaction
ORDER BY jobsatisfaction;

--Does distance from home affect attrition?
WITH employee_range AS 
(SELECT
	Attrition,
	CASE
		WHEN distancefromhome >= 20 THEN 'ABOVE 20 miles'
        WHEN distancefromhome BETWEEN 10 AND 19 THEN 'Between 10 - 19 miles'
        ELSE 'Below 10 miles'
	END distance_range
FROM turnover
)
SELECT
	distance_range,
	COUNT(distance_range) AS total,
	SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
    CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM employee_range
GROUP BY distance_range
ORDER BY distance_range;

--Does work-life balance affect attrition?
SELECT
	WorkLifeBalance,
	COUNT(WorkLifeBalance) AS total,
	SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
    CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

--Does business travel frequency affect attrition?
SELECT
	BusinessTravel,
	COUNT(BusinessTravel) AS total,
	SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
    CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY BusinessTravel
ORDER BY BusinessTravel;

-- Do new employees or tenured employees leave more?
WITH employee_range AS (
  SELECT
    Attrition,
	CASE
		WHEN YearsAtCompany >= 10 THEN '+10 years'
		WHEN YearsAtCompany BETWEEN 6 AND 10 THEN 'Between 6-10'
		WHEN YearsAtCompany BETWEEN 3 AND 5 THEN 'Between 3-5'
		ELSE 'Between 0-2'
	END total_years
  FROM turnover
)
SELECT
  total_years,
  COUNT(total_years) AS total,
  SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
  CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
  CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
  CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM employee_range
GROUP BY total_years
ORDER BY COUNT(total_years);