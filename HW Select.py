import sqlalchemy
from pprint import pprint

engine = sqlalchemy.create_engine('postgresql://ksenia:123456@localhost:5432/musicservise')

connection = engine.connect()

# название и год выхода альбомов, вышедших в 2018 году;
print(connection.execute("""  
SELECT title_album, year_of_issue FROM album
    WHERE year_of_issue = 2018;
""").fetchall())

# название и продолжительность самого длительного трека;
print(connection.execute("""  
SELECT title_track, duration_track FROM tracks
    ORDER BY duration_track DESC;
""").fetchone())

# название треков, продолжительность которых не менее 3,5 минуты;
print(connection.execute("""  
SELECT title_track, duration_track FROM tracks
    WHERE duration_track >= 210;
""").fetchall())

# названия сборников, вышедших в период с 2018 по 2020 год включительно;
print(connection.execute("""  
SELECT title_collection, year_of_issue FROM collection
    WHERE year_of_issue BETWEEN 2018 AND 2020;
""").fetchall())

# исполнители, чье имя состоит из 1 слова;
print(connection.execute("""  
SELECT name_singer FROM singer
    WHERE name_singer NOT LIKE '%% %%';
""").fetchall())

# название треков, которые содержат слово "мой"/"my".
print(connection.execute("""  
SELECT title_track FROM tracks
    WHERE title_track iLIKE '%%мой%%' OR title_track iLIKE '%%my%%';
""").fetchall())
