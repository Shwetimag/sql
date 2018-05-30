with demodemo as
(select LastName, FirstName,
row_number() over (order by PersonID) as ID
from demo)
select 
LastName,FirstName,ID
from demodemo
where ID<=2