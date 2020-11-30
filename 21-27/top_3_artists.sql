-- Provide a query that shows the top 3 best selling artists.

Select ArtistName
From (
    Select ar.Name ArtistName, Round(Sum(i.Total), 2) SalesTotal
    From Artist ar
        Join Album al On ar.ArtistId = al.ArtistId
        Join Track t On al.AlbumId = t.AlbumId
        Join InvoiceLine il On il.TrackId = t.TrackId
        Join Invoice i On i.InvoiceId = il.InvoiceId
        Group By ArtistName
)
Order By SalesTotal Desc
Limit 3