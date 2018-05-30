CREATE PROCEDURE uspCalcArea
                 @height float,
                 @width float,
                 @area float OUTPUT
AS
BEGIN TRY
   SELECT @area = @height * @width;
   RETURN 0
END TRY
BEGIN CATCH
   RETURN 1
END CATCH;


DECLARE @area float;
DECLARE @returnValue int;
EXECUTE @returnValue = uspCalcArea 20, 20, @area OUTPUT
SELECT @area AS area, @returnValue AS ReturnValue

