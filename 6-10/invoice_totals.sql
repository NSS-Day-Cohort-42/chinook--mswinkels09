--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

Select c.FirstName || ' ' || c.LastName CustomerFullName,
    i.Total,
    i.BillingCountry,
    e.FirstName || ' ' || e.LastName SalesAgentFullName
From Invoice i
Join Customer c on c.CustomerId = i.CustomerId,
    Employee e on e.EmployeeId = c.SupportRepId
Where e.Title = 'Sales Support Agent'
Order By SalesAgentFullname,
    CustomerFullName,
    i.Total;
