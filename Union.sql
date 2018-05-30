SELECT emp.PersonID,emp.FirstName,emp.LastName
FROM   Demo AS emp
UNION ALL
SELECT e.Id,e.empName,e.empPhone
FROM   Employee AS e