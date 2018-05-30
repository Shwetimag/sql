select FirstName,LastName as LN, [1000],[2000],[3000]
 from demo as pivotdemo
PIVOT(sum(salary)
for salary in ([1000],[2000],[3000])) As pivottable;
 