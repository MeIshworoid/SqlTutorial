
CREATE PROCEDURE dbo.spJobsForCompany_Lookup
	@CompanyName varchar(100)
AS
BEGIN

	SET NOCOUNT ON;
	select j.JobName
	from dbo.Jobs j
	inner join dbo.Customers c on j.CustomerId = c.id
	where c.CompanyName =@CompanyName;
END
GO
