-- Provide a query that shows the top 5 most purchased tracks over all.

Select t.Name Track,
    Round(Sum(i.Total), 2) TotalSales
From Track t
    Join InvoiceLine il On il.TrackId = t.TrackId
    Join Invoice i On il.InvoiceId = i.InvoiceId
    Group By Track
    Order BY TotalSales DESC
    Limit 5
