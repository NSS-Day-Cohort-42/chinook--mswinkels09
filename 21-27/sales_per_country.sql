--Provide a query that shows the total sales per country.

Select BillingCountry,
Round(Sum(Total), 2) TotalSales    
From Invoice
Group By BillingCountry;
