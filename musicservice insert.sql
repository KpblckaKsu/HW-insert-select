INSERT INTO genre (title_genre) VALUES
	('rock'),
	('chanson'),
	('pop'),
	('blues'),
	('jazz');

select * from genre;

INSERT INTO singer (name_singer, genre) VALUES
    ('Agatha Christie', 'rock'),
    ('Jimi Hendrix', 'blues'),
    ('The Beatles', 'rock'),
    ('Mikhail Shufutinsky', 'chanson'),
    ('Zivert', 'pop'),
    ('Madonna', 'pop'),
    ('Louis Armstrong', 'jazz'),
    ('Francis Sinatra','jazz');
    
select * from singer; 

INSERT INTO album (title_album, year_of_issue) VALUES
    ('Opium', 1995),
    ('Woodstock', 1994),
    ('Yellow Submarine', 1969),
    ('Solo', 2005),
    ('Siyai', 2018),
    ('Like a Virgin', 1984),
    ('Hello, dolly', 1964),
    ('Christmas Songs', 1948);
    
 select * from album;
 
INSERT INTO tracks (title_track, duration_track) VALUES
    ('???????', 257),
    ('?????? ????', 239),
    ('Fire', 233),
    ('Introduction', 117),
    ('Yellow Submarine', 160),
    ('Pepperland', 144),
    ('Solo', 243),
    ('Zanovo', 247),
    ('????', 206),
    ('??? ?????', 204),
    ('Angel', 236),
    ('Stay', 248),
    ('Hello, dolly', 143),
    ('Someday', 217),
    ('White Christmas', 205),
    ('Jingle Bells', 157);
    
select * from tracks;

INSERT INTO collection (title_collection, year_of_issue) VALUES
    ('????????', 2005),
    ('Best', 2000),
    ('All hits', 1980),
    ('??????', 2018),
    ('Remix', 2020),
    ('Hits', 1984),
    ('Favorites', 1985),
    ('Best of the best', 1960);

select * from collection;

INSERT INTO singergenre (singer_id, genre_id) VALUES
    (17, 11),
    (18, 14),
    (19, 11),
    (20, 12),
    (21, 13),
    (22, 13),
    (23, 15),
    (24, 15);

select * from singergenre;

INSERT INTO singeralbum (singer_id, album_id) VALUES
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20),
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24);
   
select * from singeralbum;

INSERT INTO digest_album (collection_id, track_id) VALUES
    (17, 97),
    (18, 99),
    (19, 101),
    (20, 104),
    (21, 105),
    (22, 107),
    (23, 110),
    (24, 111);
   
select * from digest_album;

