-- Query all of the entries in the Genre table

SELECT GenreId, Label from Genre;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.

INSERT INTO Artist
VALUES(null, "Adele", 1980)

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

INSERT INTO Album(AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES(null, "For Emma, Forever Ago", "2/19/2008", 3714, "Jagjaguwar", 29, 2)

-- Using the INSERT statement, add some songs that are on that album to the Song table.

INSERT INTO Song(SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES(null, "Skinny Love", 400, "02/19/2008", 2, 29, 23);

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

SELECT s.title, al.title, ar.artistname
FROM Song s
left JOIN Album al, Artist ar
ON s.AlbumId = al.AlbumId
AND s.artistId = ar.ArtistId
WHERE s.AlbumId = 23
AND ar.ArtistName = "Bon Iver";

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.



-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

-- Modify the previous query to also display the title of the album.

