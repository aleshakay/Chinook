-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
Select Track.Name, MediaType.Name, Genre.Name, Album.Title
From Track
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId
JOIN Album ON Track.AlbumId = Album.AlbumId