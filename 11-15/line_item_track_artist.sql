--Provide a query that includes the purchased track name AND artist name with each invoice line item.

Select t.Name TrackName,
    t.Composer,
    i.InvoiceLineId,
    i.UnitPrice,
    i.Quantity
From InvoiceLine i
Join Track as t On t.TrackId = i.TrackId
Order By Composer Desc;