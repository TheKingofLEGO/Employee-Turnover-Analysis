/*Which department has the highest attrition rate?
Which age group leaves most often?
Do high earners or low earners leave more?
Do new employees or tenured employees leave more?*/

KEY FINDINGS FROM SQL ANALYSIS:

Overall Metrics:
- Total employees: [1470]
- Overall attrition rate: [16%]
- Average age: [36]
- Average salary: [6,502]

Department Analysis:
- Highest attrition department: [Sales] at [20%?]
- Lowest attrition department: [Research And Development] at [13%?]

Age Group Analysis:
- Highest risk age group: [20-29] at [21%?]
- Most stable age group: [above 40] at [10%?]

Salary Analysis:
- [less than 2000] earners have highest attrition at [54%]
- [More than 10k] earners have lowest attrition at [8%]

Work Factors:
- Overtime workers: [30%] attrition vs Non-overtime: [10%] attrition
- Job satisfaction level [#1] has highest attrition
- Work-life balance level [#1] has highest attrition
- Employees living [Above 20 miles] from home have highest attrition

--What's the total number of employees?
SELECT
	COUNT(DISTINCT EmployeeNumber) AS total_employees,
	CONCAT(ROUND(100 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*), 2), '%') AS attrition_rate_percent,
	SUM(CASE WHEN Attrition = 0 THEN 1 ELSE 0 END) AS 'Stayed',
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS 'Left',
	AVG(Age) AS avg_age,
	AVG(monthlyIncome) AS avg_income
FROM turnover;