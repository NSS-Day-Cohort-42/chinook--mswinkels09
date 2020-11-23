-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

Select i.BillingCountry,
    Count(*) NumOfInvoices    
From Invoice i
Group By i.BillingCountry
Order By i.BillingCountry Asc