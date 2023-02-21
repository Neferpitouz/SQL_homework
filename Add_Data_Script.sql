insert into genres(name)
	values('Рок'),
		  ('Электроника'),
		  ('Метал'),
		  ('Классика'),
		  ('Альтерниатива');
insert into performers(nickname)
	values('Порнофильмы'),
		  ('Король и Шут'),
		  ('Daft Punk'),
		  ('Combichrist'),
		  ('Кино'),
		  ('Антонио Вивальди'),
		  ('Любэ'),
		  ('Imagine Dragons');
insert into genres_of_performers
	values(1,1),
		  (1,2),
		  (2,3),
		  (3,4),
		  (1,5),
		  (4,6),
		  (1,7),
		  (5,8);
insert into performers_albums(album_name, year_of_release)
	values('Рассея',2005),
		  ('Origins',2018),
		  ('Это пройдет',2020),
		  ('Король и Шут',1997),
		  ('Времена года. Концерт № 1 ми мажор «Весна»',1725),
		  ('Human After All',2005),
		  ('Звезда по имени Солнце',1989),
		  ('No Redemption',2013);
insert into performers_and_albums
	values(1,3),
		  (2,4),
		  (3,6),
		  (4,8),
		  (5,7),
		  (6,5),
		  (7,1),
		  (8,2);
insert into tracks(name, lenght , album_name)
	values('Мой конь',145,'Рассея'),
		  ('Natural',189,'Origins'),
		  ('Это пройдет',236,'Это пройдет'),
		  ('Лесник',192,'Король и Шут'),
		  ('Весна. Часть 1.Аллегро',216,'Времена года. Концерт № 1 ми мажор «Весна»'),
		  ('The Prime Time of Your Life',263,'Human After All'),
		  ('Пачка сигарет',269,'Звезда по имени Солнце'),
		  ('Age of Mutation',151,'No Redemption'),
		  ('Вячеслав',137,'Король и Шут'),
		  ('Machine',181,'Origins'),
		  ('Звездочка',312,'Это пройдет'),
		  ('Охотник',156,'Король и Шут'),
		  ('Make Love',290,'Human After All'),
		  ('Звезда по имени Солнце',226,'Звезда по имени Солнце'),
		  ('Апрель',281,'Звезда по имени Солнце'),
		  ('Buried Alive',189,'No Redemption');
insert into collections(name, year)
	values('Быль и Небыль. Том I', 2020),
		  ('Собрание',2001),
		  ('Легенды русского рока — 1',2000),
		  ('История этого мира',2000),
		  ('Musique Vol. 1 1993–2005',2006),
		  ('Страшные сказки',2007),
		  ('Быль и Небыль. Том II', 2022),
		  ('Le Dernier Des Héros («Последний герой»)',1989);
insert into collection_of_tracks
	values(7,3),
		  (14,3),
		  (4,1),
		  (12,1);



