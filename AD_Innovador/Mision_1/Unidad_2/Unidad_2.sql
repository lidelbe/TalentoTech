SELECT * FROM Invoice;
SELECT * FROM Employee;
SELECT BILLINGCOUNTRY,
  	COUNT(INVOICEID)
  FROM INVOICE
  GROUP BY 1 ORDER BY 2 DESC ;

-- ¿Qué país tiene más facturas?
-- El país que tiene más facturas es Estados Unidos, con 91

-- Pregunta 3. Determinar en qué ciudad la suma de facturas es la mayor

SELECT * FROM invoice ;
SELECT BillingCity AS ciudad, SUM(Total) AS SumaTotalFacturas
FROM invoice GROUP BY BillingCity
ORDER BY TotalFacturas DESC
LIMIT 1 ;

-- Praga es la ciudad con una suma mayor en el total de sus facturas, con 90.24

-- Pregunta 4. Determinar quién es el mejor cliente (el que más ha gastado en el sistema)

SELECT CustomerId, SUM(Total) AS TotalGastado
FROM invoice GROUP BY CustomerId
ORDER BY TotalGastado DESC
LIMIT 1;

-- El mejor cliente es el número 6, con 49.62 gastado 

-- Pregunta 5. Obtener una tabla con el correo, nombre y apellido de todas las personas que escuchan Rock. Retornar la lista por orden alfabético

SELECT * FROM customer;
SELECT * FROM invoice;
SELECT * FROM invoiceline;
SELECT * FROM track;
SELECT * FROM genre;
SELECT Email, FirstName, LastName FROM customer
INNER JOIN invoice ON customer.CustomerId = invoice.CustomerId
INNER JOIN invoiceline ON invoice.InvoiceId = invoiceline.InvoiceId
INNER JOIN track ON invoiceline.TrackId = track.TrackId
INNER JOIN genre ON track.GenreId = genre.GenreId
WHERE genre.Name = 'Rock'
GROUP BY customer.Email, customer.FirstName, customer.LastName
ORDER BY customer.LastName, customer.FirstName; 

-- Pregunta 6. Sacar una lista con todos los artistas que generan música rock

SELECT * FROM artist; 
SELECT artist.Name AS Artist_Name FROM artist
INNER JOIN album ON artist.ArtistId = album.ArtistId
INNER JOIN track ON album.AlbumId = track.AlbumId
INNER JOIN genre ON track.GenreId = genre.GenreId
WHERE genre.Name = 'Rock'
ORDER BY artist.Name;

-- Pregunta 7. Encontrar cuál es el artista que más ha ganado de acuerdo con el campo invoiceLines

SELECT artist.Name AS Artist_Name, 
SUM(invoiceline.UnitPrice * invoiceline.Quantity) AS TotalGanado FROM artist
INNER JOIN album ON artist.ArtistId = album.ArtistId
INNER JOIN track ON album.AlbumId = track.AlbumId
INNER JOIN invoiceline ON track.TrackId = invoiceline.TrackId
GROUP BY artist.ArtistId
ORDER BY TotalGanado DESC;

-- Pregunta 8. Encontrar cuánto gastaron en total en Estados Unidos en compras

SELECT * FROM invoice WHERE BillingCountry = 'USA';
SELECT SUM(Total) AS Total_USA FROM invoice WHERE BillingCountry = 'USA';

-- En Estados Unidos se gastaron en total 523.06 

-- Pregunta 9. Encontrar cuánto gastaron los usuarios por género.