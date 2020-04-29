-- Which country's customers spent the most?
select TOP 1 BillingCountry, SUM(Total)
from Invoice
GROUP BY BillingCountry
ORDER BY SUM(Total) desc;


