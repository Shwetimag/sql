SELECT PersonID,Salary,LastName,
CASE
    WHEN Salary > 1000 THEN Salary
    WHEN Salary = 1000 THEN PersonID
	 ELSE LastName
END
FROM demo;
