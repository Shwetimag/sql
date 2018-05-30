DECLARE @statement NVARCHAR(4000)
DECLARE @parameterDefinition NVARCHAR(4000)

SET @statement = N'SELECT @a + @b'
SET @parameterDefinition = N'@a int, @b int'

EXECUTE sp_executesql  @statement, @parameterDefinition, @a=10, @b=5