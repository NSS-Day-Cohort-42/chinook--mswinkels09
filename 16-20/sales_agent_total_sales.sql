--Provide a query that shows total sales made by each sales agent.

Select e.FirstName || ' ' || e.LastName SalesAgent,
    Round(Sum(i.Total), 2)
From Employee e
Join Customer c On c.SupportRepId = e.EmployeeId,
    Invoice i On i.CustomerId = c.CustomerId
Group By SalesAgent
Order By SalesAgent Asc