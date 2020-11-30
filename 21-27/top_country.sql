--Which country's customers spent the most?

Select BillingCountry,
    Max(TotalSales) CountryTotalSales
From (
    Select BillingCountry,
    Round(Sum(Total), 2) TotalSales    
    From Invoice
    Group By BillingCountry
)