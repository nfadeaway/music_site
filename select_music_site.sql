SELECT album_name, release_year FROM albums
WHERE release_year = 2018;

SELECT track_name, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT track_name FROM tracks
WHERE duration >= 210;

SELECT music_collection_name FROM music_collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT artist_name FROM artists
WHERE artist_name NOT LIKE '% %';

SELECT track_name FROM tracks
WHERE track_name LIKE '%my%';