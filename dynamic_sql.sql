DECLARE @birthYear int = 1978
DECLARE @statement NVARCHAR(4000)

WHILE @birthYear <= 1981
BEGIN
   SET @statement = '
        SELECT   FirstName,  Count(PersonID)
        FROM    demo
        WHERE    Year(BirthDate) = ' + CAST(@birthYear as NVARCHAR) +
      ' GROUP BY FirstName'

   EXECUTE sp_executesql @statement
   SET @birthYear = @birthYear + 1
   END

   --select * from demo
   