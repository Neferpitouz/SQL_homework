select album_name, year_of_release from performers_albums
where year_of_release = 2018;

select name, lenght from tracks 
where lenght = (
	select max(lenght) from tracks);
	
select name from tracks 
where lenght >= 210

select name from collections
where year between 2018 and 2020

select nickname from performers
where nickname not like '% %';

select * from tracks
where name  like '%Мой%';
select * from tracks
where name  like '%My%';
