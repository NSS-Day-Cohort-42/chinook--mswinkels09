--How many Invoices were there in 2009 and 2011?

Select Count(InvoiceDate) TotalInvoices2011
From Invoice i
Where i.InvoiceDate Like '%2011%'
Order By i.InvoiceDate