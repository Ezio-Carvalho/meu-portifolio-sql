-- SQLite
-- Contar quantos álbuns cada artista tem
SELECT
    ar.Name AS ArtistName,
    COUNT(al.AlbumId) AS NumberOfAlbums
FROM
    artists ar
JOIN
    albums al ON ar.ArtistId = al.ArtistId
GROUP BY
    ar.Name
ORDER BY
    NumberOfAlbums DESC;