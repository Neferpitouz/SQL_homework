CREATE table  if not exists genres (
  id SERIAL primary key, 
  name VARCHAR(60) not null
); 

create table if not exists performers (
  id SERIAL primary key, 
  nickname VARCHAR(60) not null unique
);

create table if not exists genres_of_performers (
  genre_id SERIAL,
  foreign key(genre_id) references genres(id),
  performer_id SERIAL,
  foreign key(performer_id) references performers(id),
  primary key (genre_id, performer_id)
);

create table if not exists performers_albums (
  id SERIAL primary key,
  album_name VARCHAR(60) not null unique references performers(nickname),
  year_of_release integer not null,
  check (year_of_release >=1600)
);

create table if not exists performers_and_albums (
  performer_id SERIAL,
  foreign key(performer_id) references performers(id),
  album_id SERIAL,
  foreign key(album_id) references performers_albums(id),
  primary key(performer_id, album_id)
);

create table if not exists tracks (
  id SERIAL primary key,
  name VARCHAR(60) not null,
  lenght integer not null,
  check (lenght >= 1),
  album_name VARCHAR(60) not null references performers_albums(album_name)
);

create table if not exists collections (
  id SERIAL primary key,
  name VARCHAR(60) not null,
  year integer not null,
  check (year >= 1600)
);

create table if not exists collection_of_tracks (
  track_id SERIAL,
  foreign key(track_id) references tracks(id),
  collection_id SERIAL,
  foreign key(collection_id) references collections(id),
  primary key(track_id, collection_id)
);