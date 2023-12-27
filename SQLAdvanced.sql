



--count(row), sum(column), min(column), max(column), avg(col)

select c.CompanyName 
--, e.FirstName 
, sum(w.HoursWorked) as 'TotalWork' 
, count(1) as 'Number of Entries'
, min(w.HoursWorked) as 'Minimum'
, max(w.HoursWorked) as 'Maximum'
, avg(w.HoursWorked) as 'Average'
from dbo.WorkDone w
inner join dbo.Jobs j on w.jobId = j.id
inner join dbo.Customers c on j.CustomerId = c.id
inner join dbo.Employees e on w.EmployeeId = e.id  
--where w.id <> 9 -- for where and having clause --where operate before group by clause and having operate after group by and before order by clause
group by c.CompanyName--, e.FirstName
having sum(w.HoursWorked) > 5
order by c.CompanyName --after group by can operate if having clause is not required.


select *
from dbo.Locations

select *
from dbo.Jobs

select *
from dbo.WorkDone

select *
from dbo.Customers

select *
from dbo.Employees
