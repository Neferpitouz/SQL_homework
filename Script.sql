create table if not exists genres (
	id serial primary key,
	name varchar(30) unique not null
);
create table if not exists performers (
	id serial primary key,
	name_nickname varchar(30) unique not null,
	genre varchar(30) not null references genres(name)
);
create table if not exists performers_albums (
	id serial primary key,
	performers_name varchar(30) unique not null references performers(name_nickname),
	album_name varchar(30) not null,
	year_of_release integer not null
);
create table if not exists tracks (
	id serial primary key,
	name varchar(30) unique not null,
	length integer not null,
	album_name varchar(30) unique not null references performers_albums(performers_name)
);
