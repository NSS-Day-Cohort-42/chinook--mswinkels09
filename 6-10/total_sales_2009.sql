--What are the respective total sales for 2009?

Select Round(Sum(Total)) TotalSales2009
From Invoice i
Where InvoiceDate like '%2009%';