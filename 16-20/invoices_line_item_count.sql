-- Provide a query that shows all Invoices but includes the # of invoice line items.

Select i.InvoiceId,
    Count(il.InvoiceLineId) InvoiceLineItemsCount
From Invoice i
Join InvoiceLine il On i.InvoiceId = il.InvoiceId
Group By i.InvoiceId