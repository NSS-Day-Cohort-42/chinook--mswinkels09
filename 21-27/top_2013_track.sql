--Provide a query that shows the most purchased track of 2013.


Select Track,
    Max(TotalSales)
FROM(
    Select t.Name Track,
        Sum(i.Total) TotalSales
    From Track t
    Join InvoiceLine il On il.TrackId = t.TrackId
    Join Invoice i On il.InvoiceId = i.InvoiceId
    Where i.InvoiceDate like '%2013%'
    Group By Track
)    