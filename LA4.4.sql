--Learning Activity 4.4 

--1.
SELECT T.Name, T.Milliseconds AS Length, A.Title, Art.Name
FROM Track T INNER JOIN Album A
ON T.AlbumID = A.AlbumID
INNER JOIN Artist Art
ON A.ArtistID = Art.ArtistID
ORDER BY T.AlbumID;

--2.
SELECT T.Name, T.UnitPrice, M.Name, G.Name
FROM Track T INNER JOIN MediaType M
ON T.MediaTypeID = M.MediaTypeID
INNER JOIN Genre G
ON T.GenreID = G.GenreID
ORDER BY G.Name;


--3.
SELECT T.Name, T.Bytes
FROM Track T 
WHERE TrackID NOT IN
(SELECT TrackID FROM PlaylistTrack)

--4.
SELECT E.FirstName, E.LastName
FROM Employee E
WHERE EmployeeID NOT IN
(SELECT SupportRepID FROM Customer);

--5.
SELECT FirstName, LastName, Phone FROM Employee
UNION
SELECT FirstName, LastName, Phone FROM Customer;

--6.
SELECT Name FROM Artist
UNION 
SELECT DISTINCT Composer FROM Track
WHERE Composer IS NOT NULL