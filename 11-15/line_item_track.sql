--Provide a query that includes the purchased track name with each invoice line item.

Select t.Name TrackName,
    i.InvoiceLineId,
    i.UnitPrice,
    i.Quantity
From InvoiceLine i
Join Track as t On t.TrackId = i.TrackId
Order By TrackName Asc;
