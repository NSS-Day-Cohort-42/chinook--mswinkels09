--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

Select InvoiceId,
    Count(InvoiceLineId) NumOfTransactions
From InvoiceLine i
Group By InvoiceId; 