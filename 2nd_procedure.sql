USE shwetimagupta
GO

CREATE PROCEDURE dbo.uspGetPrice @Salary nvarchar(30)
AS
SELECT * 
FROM Demo
WHERE Salary = @Salary
GO


EXEC dbo.uspGetPrice @Salary = '1000'