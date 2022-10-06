-- количество исполнителей в каждом жанре
SELECT genre_name, COUNT(musical_genres.genre_id) AS artist_in_genre 
  FROM musical_genres
  JOIN musical_genres_artists 
	ON musical_genres.genre_id  = musical_genres_artists.genre_id
 GROUP BY genre_name;

-- количество треков, вошедших в альбомы 2019-2020 годов
SELECT album_name, COUNT(track_id) AS tracks_on_album 
  FROM albums
  JOIN tracks 
	ON albums.album_id = tracks.album_id
 WHERE release_year BETWEEN 2019 AND 2020
 GROUP BY album_name;

-- средняя продолжительность треков по каждому альбому
SELECT album_name, AVG(duration) AS avg_duration
  FROM albums
  JOIN tracks 
	ON albums.album_id = tracks.album_id
 GROUP BY album_name;

-- все исполнители, которые не выпустили альбомы в 2020 году
SELECT artist_name 
  FROM artists
  JOIN artists_albums 
	ON artists.artist_id  = artists_albums.artist_id 
  JOIN albums 
	ON albums.album_id = artists_albums.album_id
 WHERE release_year != 2020;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)  - SXULTAPE VISION
SELECT DISTINCT music_collection_name 
  FROM music_collections
  JOIN tracks_music_collections 
	ON music_collections.music_collection_id = tracks_music_collections.music_collection_id 
  JOIN tracks 
	ON tracks_music_collections.track_id = tracks.track_id 
  JOIN albums 
	ON tracks.album_id = albums.album_id
  JOIN artists_albums 
	ON albums.album_id = artists_albums.album_id 
  JOIN artists 
	ON artists_albums.album_id = artists.artist_id
 WHERE artist_name = 'SXULTAPE VISION';

-- название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name 
  FROM albums
  JOIN artists_albums 
    ON albums.album_id = artists_albums.album_id 
  JOIN artists 
    ON artists_albums.album_id = artists.artist_id 
  JOIN musical_genres_artists 
    ON artists.artist_id = musical_genres_artists.artist_id 
 GROUP BY album_name
HAVING COUNT(genre_id) > 1;

-- наименование треков, которые не входят в сборники
SELECT track_name 
  FROM tracks
  FULL JOIN tracks_music_collections 
    ON tracks.track_id = tracks_music_collections.track_id
  FULL JOIN music_collections 
    ON tracks_music_collections.music_collection_id  = music_collections.music_collection_id
 WHERE tracks_music_collections.music_collection_id IS  NULL;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT artist_name, duration 
  FROM artists
  JOIN artists_albums 
    ON artists.artist_id = artists_albums.artist_id 
  JOIN albums 
    ON artists_albums.album_id = albums.album_id 
  JOIN tracks 
    ON albums.album_id = tracks.album_id
 WHERE duration = (SELECT MIN(duration) FROM tracks)
 GROUP BY artist_name, duration; 

-- название альбомов, содержащих наименьшее количество треков
SELECT album_name, COUNT(tracks.track_id) AS tracks_on_album 
  FROM albums
  JOIN tracks 
    ON albums.album_id = tracks.album_id 
 GROUP BY album_name
HAVING COUNT(tracks.track_id) = (SELECT MIN(min_track_count) 
								   FROM (SELECT COUNT(tracks.track_id) AS min_track_count 
								           FROM albums 
								           JOIN tracks 
								             ON albums.album_id = tracks.album_id 
								          GROUP BY album_name
								         ) AS track_count
								 );
