-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT P.Name AS Playlist, COUNT(TrackId)
FROM PlaylistTrack AS PT
INNER JOIN Playlist AS P on PT.PlaylistId = P.PlaylistId
GROUP BY P.PlaylistId