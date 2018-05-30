DECLARE @statement NVARCHAR(4000)
SET @statement = N'SELECT getdate()'
EXECUTE sp_executesql  @statement

