--Provide a query that shows the most purchased Media Type.

Select TopPurchasedMediaType
From (
    Select m.Name TopPurchasedMediaType,
        Round(Sum(i.Total), 2) TotalSales
    From MediaType m
        Join Track t On t.MediaTypeId = m.MediaTypeId
        Join InvoiceLine il On il.TrackId = t.TrackId
        Join Invoice i On i.InvoiceId = il.InvoiceId
        Group By TopPurchasedMediaType
        Order By TotalSales Desc
)
Limit 1