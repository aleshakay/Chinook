-- Provide a query that shows the total sales per country.
select BillingCountry, SUM(Total)
from Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) desc;