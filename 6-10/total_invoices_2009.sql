--How many Invoices were there in 2009 and 2011?

Select Count(InvoiceDate) TotalInvoices2009
From Invoice i
Where i.InvoiceDate Like '%2009%'
Order By i.InvoiceDate