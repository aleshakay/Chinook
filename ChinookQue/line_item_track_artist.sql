-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
select Track.Name, Artist.ArtistId, InvoiceLine.InvoiceLineId
from InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackID
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
