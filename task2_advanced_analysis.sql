-- Window Function: Rank employees by salary within each department
SELECT EmpID, Name, DeptID, Salary,
       RANK() OVER (PARTITION BY DeptID ORDER BY Salary DESC) AS SalaryRank
FROM Employees;

-- CTE to get average salary per department
WITH DeptAvg AS (
    SELECT DeptID, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY DeptID
)
SELECT e.EmpID, e.Name, e.Salary, d.AvgSalary,
       CASE WHEN e.Salary > d.AvgSalary THEN 'Above Avg' ELSE 'Below Avg' END AS SalaryComparison
FROM Employees e
JOIN DeptAvg d ON e.DeptID = d.DeptID;

-- Subquery: Find employees earning above department average
SELECT EmpID, Name, Salary
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
