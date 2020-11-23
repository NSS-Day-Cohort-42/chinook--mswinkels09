--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.


Select e.FirstName || ' ' || e.LastName SalesAgentFullName,
    i.*
From Invoice i
Join Customer c On i.CustomerId = c.CustomerId,
    Employee e On e.EmployeeId = c.SupportRepId
Where e.Title = 'Sales Support Agent'
ORDER By SalesAgentFullName;
