-- ============================================
-- DATA EXPLORATION
-- Purpose: Understand what we're working with
-- Author: William Fowler
-- Date: February 2026
-- ============================================
--Total Record
SELECT 
    COUNT(*) - COUNT(Age) as Age_Nulls,
    COUNT(*) - COUNT(Attrition) as Attrition_Nulls,
    COUNT(*) - COUNT(BusinessTravel) as BusinessTravel_Nulls,
    COUNT(*) - COUNT(Department) as Department_Nulls,
    COUNT(*) - COUNT(DistanceFromHome) as DistanceFromHome_Nulls,
    COUNT(*) - COUNT(Education) as Education_Nulls,
    COUNT(*) - COUNT(EmployeeNumber) as EmployeeNumber_Nulls,
    COUNT(*) - COUNT(Gender) as Gender_Nulls,
    COUNT(*) - COUNT(JobRole) as JobRole_Nulls,
    COUNT(*) - COUNT(JobSatisfaction) as JobSatisfaction_Nulls,
    COUNT(*) - COUNT(MaritalStatus) as MaritalStatus_Nulls,
    COUNT(*) - COUNT(MonthlyIncome) as MonthlyIncome_Nulls,
    COUNT(*) - COUNT(OverTime) as OverTime_Nulls,
    COUNT(*) - COUNT(YearsAtCompany) as YearsAtCompany_Nulls
FROM turnover;

-- Check if Age has nulls
SELECT COUNT(*) as Null_Count
FROM turnover
WHERE Age IS NULL;

-- Check if Attrition has nulls
SELECT COUNT(*) as Null_Count
FROM turnover
WHERE Attrition IS NULL;

-- Check if MonthlyIncome has nulls
SELECT COUNT(*) as Null_Count
FROM turnover
WHERE MonthlyIncome IS NULL;

-- Show all rows that have any NULL in key columns
SELECT *
FROM employee_attrition
WHERE Age IS NULL
   OR Attrition IS NULL
   OR Department IS NULL
   OR MonthlyIncome IS NULL
   OR YearsAtCompany IS NULL;
SELECT 
    Age,
    Attrition,
    Department,
    EmployeeNumber,
    JobRole,
    MonthlyIncome,
    YearsAtCompany,
    COUNT(*) as Duplicate_Count
FROM turnover
GROUP BY 
    Age,
    Attrition,
    Department,
    EmployeeNumber,
    JobRole,
    MonthlyIncome,
    YearsAtCompany
HAVING COUNT(*) > 1;

-- Find if any EmployeeNumber appears more than once
SELECT 
    EmployeeNumber,
    COUNT(*) as Times_Appears
FROM turnover
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1
ORDER BY Times_Appears DESC;

-- Check if total row count matches unique employee count
SELECT 
    COUNT(*) as Total_Rows,
    COUNT(DISTINCT EmployeeNumber) as Unique_Employees,
    COUNT(*) - COUNT(DISTINCT EmployeeNumber) as Duplicate_Rows
FROM turnover;

-- Show me which employees are duplicated
SELECT *
FROM turnover
WHERE EmployeeNumber IN (
    SELECT EmployeeNumber
    FROM turnover
    GROUP BY EmployeeNumber
    HAVING COUNT(*) > 1
)
ORDER BY EmployeeNumber;