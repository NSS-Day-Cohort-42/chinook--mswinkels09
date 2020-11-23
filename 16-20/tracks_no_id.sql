--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

Select t.Name TrackName,
    a.Title AlbumName,
    m.Name MediaType,
    g.Name Genre
From Track t
Join Album a On a.AlbumId = t.AlbumId,
    MediaType m On m.MediatypeId = t.MediaTypeId,
    Genre g On g.GenreId = t.GenreId
Order By TrackName Desc;