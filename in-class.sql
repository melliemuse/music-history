SELECT * FROM Song;
SELECT Title, ArtistId FROM Song;
SELECT Title FROM Song WHERE ArtistId = 6 and Title = "Eleanor Rigby";

SELECT Title, SongLength, ReleaseDate, ArtistId 
FROM Song
WHERE ArtistId = 8 
OR ArtistId = 6;

--Insert stuff into the db 
INSERT INTO Song 
VALUES (null, "Baby Shark", 689, "09/22/1896", 9, 3, 5);

--Another way to insert (recommended) 
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES("Baby Squid", 799, "09/22/1986", 9, 3, 5);

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES("Baby Shark Attack", 799, "09/22/1986", 9, 3, 5);



--Update
 UPDATE Song SET Title="Baby" WHERE SongId=24;

-- Delete
DELETE FROM Song 
WHERE SongId = 12;

SELECT  count() as '# of songs', artist.ArtistName
FROM Song
JOIN Artist
ON song.ArtistId = artist.ArtistId
GROUP BY Artist.Artistname;

SELECT  count() AS '#ofsongs', artist.ArtistName
FROM Song
JOIN Artist
ON song.ArtistId = artist.ArtistId
GROUP BY Song.Artistid
ORDER BY count() DESC;

SELECT al.title || "by" || ar.artistname
FROM Album al
JOIN Artist ar
ON al.ArtistId = ar.ArtistId;
