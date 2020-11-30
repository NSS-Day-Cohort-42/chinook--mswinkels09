--Provide a query that shows the count of customers assigned to each sales agent.
Select e.FirstName || ' ' || e.LastName as SalesAgent,
    Count(c.CustomerId) NumOfCustomers
From Employee e
Join Customer c On c.SupportRepId = e.EmployeeId
Where e.Title = "Sales Support Agent"
Group By SalesAgent;