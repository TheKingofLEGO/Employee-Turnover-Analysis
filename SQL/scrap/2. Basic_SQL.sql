/* Answer basic questions with SQL
What's the total number of employees?
How many left vs. stayed?
What departments exist in the data?
What job roles exist?
What's the age range? Salary range */

--SELECT * FROM turnover;

--What's the total number of employees?
SELECT
	COUNT(DISTINCT EmployeeNumber) AS total_employees,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	SUM(CASE WHEN Attrition = 0 THEN 1 ELSE 0 END) AS 'Stayed',
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS 'Left'
FROM turnover;

--How many left vs. stayed?
SELECT
CASE 
	WHEN Attrition = 0 THEN 'Stayed'
	ELSE 'Left'
END employees,
COUNT(*) AS Leftvrsstayed,
CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY Attrition;

--What departments exist in the data?
SELECT
	Department,
	COUNT(Department) AS total_employees,
	SUM(CASE WHEN Attrition = 0 THEN 1 ELSE 0 END) AS 'Stayed',
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS 'Left',
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY Department
ORDER BY COUNT(Department) DESC;

--What job roles exist?
SELECT
	jobRole,
	COUNT(jobrole) AS total_jobs,
	SUM(CASE WHEN Attrition = 0 THEN 1 ELSE 0 END) AS 'Employees_Stayed',
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS 'Employees_Left',
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
    CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM turnover
GROUP BY jobrole
ORDER BY COUNT(jobrole) DESC;

--What's the age average and salary avg
SELECT
	AVG(Age) AS avg_age,
	AVG(monthlyIncome) AS avg_income
FROM turnover;

--What's the Age Range?
WITH employee_range AS 
(SELECT
	Attrition,
	CASE
		WHEN age >= 40 THEN 'ABOVE 40'
        WHEN age BETWEEN 30 AND 39 THEN '30 - 39'
        WHEN age BETWEEN 20 AND 29 THEN '20 - 29'
        ELSE 'Below 20'
	END age_range
FROM turnover
)
SELECT
age_range,
COUNT(age_range) AS total,
SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM employee_range
GROUP BY age_range
ORDER BY age_range;


--What's the salary range
--Monthly Salary
WITH employee_range AS (
  SELECT
    Attrition,
    CASE
      WHEN monthlyIncome >= 10000 THEN 'More than 10k'
      WHEN monthlyIncome BETWEEN 8000 AND 9999 THEN 'Between 8000-9000'
      WHEN monthlyIncome BETWEEN 6000 AND 7999 THEN 'Between 6000-7000'
      WHEN monthlyIncome BETWEEN 4000 AND 5999 THEN 'Between 4000-5000'
      WHEN monthlyIncome BETWEEN 2000 AND 3999 THEN 'Between 2000-3000'
	  ELSE 'Less than 2000'
    END monthly_making
  FROM turnover
)
SELECT
  monthly_making,
  COUNT(monthly_making) AS total,
  SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS employees_left,
  CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
  CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / SUM(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)) OVER (), 2), '%') AS Turnover_Percentage,
  CONCAT(ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2), '%') AS company_headcount_percent
FROM employee_range
GROUP BY monthly_making
ORDER BY COUNT(monthly_making);


SELECT 
MAX(monthlyIncome) AS avgincome,
AVG(monthlyIncome) AS avgincome,
MIN(monthlyIncome) AS avgincome,
SUM(monthlyIncome) AS avgincome,
COUNT(*) AS employee_count,
Department
FROM turnover
GROUP BY Department;

SELECT 
MAX(monthlyIncome) AS avgincome,
AVG(monthlyIncome) AS avgincome,
MIN(monthlyIncome) AS avgincome,
SUM(monthlyIncome) AS avgincome,
COUNT(*) AS employee_count,
JobRole
FROM turnover
GROUP BY JobRole;