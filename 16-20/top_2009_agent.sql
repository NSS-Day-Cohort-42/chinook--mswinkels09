--Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.

Select SalesAgent,
    Max(InvoiceTotal) TotalSales
From 
    (Select e.FirstName || ' ' || e.LastName SalesAgent,
        Round(SUM(i.Total), 2) InvoiceTotal
    From Employee e
    Join Customer c On c.SupportRepId = e.EmployeeId,
        Invoice i On i.CustomerId = c.CustomerId
    Where i.InvoiceDate like '%2009%'
    Group By SalesAgent
    )
