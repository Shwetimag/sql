CREATE PROCEDURE uspCalcuateSalesSummaryDynamic2
                 @returnAverage bit,
                 @salary int
AS
DECLARE @statement NVARCHAR(4000),
        @parameterDefinition NVARCHAR(4000),
        @function NVARCHAR(10)

IF (@returnAverage = 1) SET @function = 'Avg'
ELSE SET @function = 'Sum'

SET @parameterDefinition = '@salary int'
SET @statement =
    'SELECT   PersonID,' +
              @function +   + @function + '
     FROM     demo
                WHERE (Salary) = @salary
     GROUP BY PersonID'
