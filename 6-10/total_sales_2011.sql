--What are the respective total sales for 2011?

Select Round(Sum(Total)) TotalSales2011
From Invoice i
Where InvoiceDate like '%2011%';