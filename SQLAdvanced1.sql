



-- UNION ALL --> amend two select statement (allow duplicates)
-- UNION --> amend two select statement (do not allow duplicates)
select FirstName, LastName
from dbo.Employees
UNION 
select FirstName, LastName
from dbo.Employees


select c.CompanyName as 'Name', c.EmailAddress
from dbo.Customers c
UNION ALL
select e.FirstName + ' ' + e.LastName as 'Name', e.EmailAddress
from dbo.Employees e


insert into dbo.Employees(FirstName, LastName, EmailAddress, PayRate)
values('Buggs', 'Bunny', 'bugs@acme.org', 130);


select *
from dbo.Employees



select top 4 *
from dbo.WorkDone
order by HoursWorked desc, DatePerformed

select top 100 *
from dbo.Customers


