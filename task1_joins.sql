-- INNER JOIN 
SELECT Employees.EmpID, Employees.Name, Departments.DeptName
FROM Employees
INNER JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- LEFT JOIN
SELECT Employees.EmpID, Employees.Name, Departments.DeptName
FROM Employees
LEFT JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- RIGHT JOIN
SELECT Employees.EmpID, Employees.Name, Departments.DeptName
FROM Employees
RIGHT JOIN Departments ON Employees.DeptID = Departments.DeptID;

-- FULL OUTER JOIN
SELECT Employees.EmpID, Employees.Name, Departments.DeptName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DeptID = Departments.DeptID;
