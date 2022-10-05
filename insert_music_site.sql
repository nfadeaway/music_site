INSERT INTO musical_genres (genre_name) 
VALUES
	('Phonk'),
	('House'),
	('Drum & bass'),
	('Trance'),
	('Techno');
	
INSERT INTO artists (artist_name) 
VALUES
	('Mishashi Sensei'),
	('Tokyomane'),
	('SXULTAPE VISION'),
	('Daft Punk'),
	('Black Sun Empire'),
	('Armin van Buuren'),
	('The Prodigy'),
	('Carl Cox');
	
INSERT INTO musical_genres_artists 
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(5, 8);
	
INSERT INTO albums (album_name, release_year) 
VALUES
	('Vol. 1', 2020),
	('magazine', 2022),
	('Open Your Eyes', 2021),
	('Random Access Memories', 2013),
	('The Wrong Room', 2017),
	('Balance', 2018),
	('Experience', 1992),
	('All Roads Lead To The Dancefloor', 2011);
	
INSERT INTO artists_albums 
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);
	
INSERT INTO tracks (album_id, track_name, duration) 
VALUES
	(1, 'NOW WHAT DO YA KNOW?', 132),
	(1, 'IN THE CLUB', 139),
	(2, 'my haters', 120),
	(2, 'global enemy', 171),
	(3, 'MIDNIGHT MIND', 146),
	(3, 'SPACE JAZZ', 123),
	(4, 'Get Lucky', 367),
	(4, 'Contact', 381),
	(5, 'Swarm', 272),
	(5, 'No Advance', 276),
	(6, 'Sucker for Love', 176),
	(6, 'Runaway', 237),
	(7, 'Out of Space', 298),
	(7, 'Hyperspeed (G-Force Part 2)', 315),
	(8, 'Nexus', 213),
	(8, 'Avenger', 262);
	
INSERT INTO music_collections (music_collection_name, release_year) 
VALUES
	('Mega Hits Vol. 1', 2015),
	('Mega Hits Vol. 2', 2016),
	('Mega Hits Vol. 3', 2017),
	('Mega Hits Vol. 4', 2018),
	('Mega Hits Vol .5', 2019),
	('Mega Hits Vol. 6', 2020),
	('TOP', 2021),
	('GOD', 2022);
	
INSERT INTO tracks_music_collections 
VALUES
	(1, 1),
	(3, 1),
	(2, 2),
	(4, 2),
	(5, 3),
	(7, 3),
	(6, 4),
	(8, 4),
	(9, 5),
	(11, 5),
	(10, 6),
	(12, 6),
	(13, 7),
	(15, 7),
	(14, 7),
	(16, 7),
	(1, 8),
	(2, 8),
	(3, 8),
	(4, 8),
	(5, 8),
	(6, 8),
	(7, 8),
	(8, 8),
	(9, 8),
	(10, 8),
	(11, 8),
	(12, 8),
	(13, 8),
	(14, 8),
	(15, 8),
	(16, 8);