-- Provide a query that shows the most purchased track of 2013.
select Top 1 t.Name, SUM(Quantity) as NumberSold
from track t
JOIN InvoiceLine iL ON t.TrackId = iL.TrackId
JOIN Invoice i ON iL.InvoiceId = i.InvoiceId
WHERE YEAR(i.InvoiceDate) = '2013'
GROUP BY t.Name
ORDER BY SUM(quantity) desc

