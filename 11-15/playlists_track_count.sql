--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

Select p.Name,
    Count(pt.TrackId)
From PlaylistTrack