create table if not exists Genres (
		id serial primary key,
		genre_name varchar(40) not null
		);

create table if not exists Artists (
		id serial primary key,
		performer_name varchar(40) not null,
		alias varchar(60) not null
		);

create table if not exists Albums (
		id serial primary key,
		album_name varchar(40) not null,
		album_release_year integer check(album_release_year > 1900)
		);

create table if not exists Collections (
		id serial primary key,
		collection_name varchar(40) not null,
		collection_release_year integer check(collection_release_year > 1900)
		);

create table if not exists Tracks (
		id serial primary key,
		track_name varchar(80) not null,
		duration integer check(duration > 0),
		album_id integer references Albums (id)
		);
		
create table if not exists 	GenreArtist (
		id serial primary key,
		genre_id integer not null references Genres (id),
		artist_id integer not null references Artists (id)
		);
		
create table if not exists 	ArtistAlbum (
		id serial primary key,
		album_id integer not null references Albums (id),
		artist_id integer not null references Artists (id)
		);

create table if not exists 	CollectionTrack (
		id serial primary key,
		collection_id integer not null references Collections (id),
		track_id integer not null references Tracks (id)
		);