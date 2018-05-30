create procedure uspdemo
@PersonID [int]
as 
begin
set nocount on;	
select * from demo
where PersonID=@PersonID
end

EXECUTE uspdemo 1
