-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resultant table.
select Track.Name, COUNT(PlaylistTrack.trackid)
FROM Track
JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
JOIN Playlist ON PlaylistTrack.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Track.Name