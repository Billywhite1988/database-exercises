USE codeup_test_db;

SELECT * from albums where release_date > 1991;
# SELECT names, release_date FROM albums
# WHERE release_date > 1991;

SELECT * from albums where genre = 'disco';
# SELECT names, genre FROM albums
# WHERE genre = 'disco';

SELECT * from albums where artist = 'Whitney Houston';
# SELECT names, artist FROM albums
# WHERE artist LIKE 'Whitney Houston';

DELETE FROM albums where release_date > 1991;

DELETE FROM albums where genre = 'disco';

DELETE FROM albums where artist = 'The Beatles';