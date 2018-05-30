select
 FirstName, LastName
  from demo
  order by PersonID ASC
offset 2 rows 
fetch next 2 rows only