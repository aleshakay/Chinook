-- Provide a query that shows the most purchased Media Type.
select top 1 track.MediaTypeId, SUM(Quantity), MediaType.Name
from Track 
Join InvoiceLine on Track.TrackId = InvoiceLine.TrackId
Join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY Track.TrackId, track.MediaTypeId, MediaType.Name
ORDER BY 2 desc