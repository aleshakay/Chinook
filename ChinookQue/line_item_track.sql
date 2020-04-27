--Provide a query that includes the purchased track name with each invoice line item.
select Track.Name, InvoiceLine.InvoiceLineId
from InvoiceLine
JOIN Track
ON InvoiceLine.TrackId = Track.TrackId;
