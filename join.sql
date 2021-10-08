-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT * FROM invoice_line WHERE unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT invoice_date, customer.first_name, customer.last_name, total
FROM invoice
JOIN customer ON invoice.customer_id = customer.customer_id;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name 
-- from all customers (Support reps are on the employee table).

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- Get the album title and the artist name from all albums.

SELECT title, artist.name
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

-- Get all playlist_track track_ids where the playlist name is Music.

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

-- Get all track names for playlist_id #5.

SELECT * FROM playlist
WHERE playlist_id = 5;

-- Get all track name`s and the playlist `name that they’re on ( 2 joins ).

SELECT track.name, playlist.name
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

-- Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).

SELECT t.name, a.title
FROM album a
JOIN track t ON a.album_id = t.album_id
JOIN genre g ON t.genre_id = g.genre_id
WHERE g.name = 'Alternative & Punk';