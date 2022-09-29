CREATE TABLE IF NOT EXISTS musical_genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS musical_genres_artists (
	genre_id INTEGER REFERENCES musical_genres(genre_id),
	artist_id INTEGER REFERENCES artists(artist_id),
	CONSTRAINT pk_musical_genres_artists PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_albums (
	artist_id INTEGER REFERENCES artists(artist_id),
	album_id INTEGER REFERENCES albums(album_id),
	CONSTRAINT pk_artists_albums PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES albums(album_id),
	track_name VARCHAR(100) NOT NULL,
	duration TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS music_collections (
	music_collection_id SERIAL PRIMARY KEY,
	music_collection_name VARCHAR(100) NOT NULL,
	release_year INTEGER NOT null
);

CREATE TABLE IF NOT EXISTS tracks_music_collections (
	track_id INTEGER REFERENCES tracks(track_id),
	music_collection_id INTEGER REFERENCES music_collections(music_collection_id),
	CONSTRAINT pk_tracks_music_collections PRIMARY KEY (track_id, music_collection_id)
);