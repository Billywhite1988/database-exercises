USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(120),
  name VARCHAR(120),
  release_date INT,
  sales DECIMAL(6,2),
  genre VARCHAR(305),
  PRIMARY KEY (id)
);


INSERT INTO albums (artist, name, release_date, sales, genre)
  VALUES
      ('Michael Jackson', 'Thriller', 1982, 66, 'Pop, Rock, R&B'),
      ('Eagles', 'Their greatest Hits', 1976, 42, 'Rock, Soft Rock, Folk, Rock'),
      ('Fleetwood Mac','Rumours', 1977, 46, 'Soft Rock'),
      ('Whitney Houston', 'The Bodyguard', 1992, 42, 'R&B, Soul, Pop'),
      ('AC/DC', 'Back in Black', 1980, 50, 'Hard Rock'),
      ('Pink Floyd', 'The Dark Side of the Moon', 1973, 45, 'Progressive Rock'),
      ('Bee Gees', 'Saturday Night Fever', 1977, 43, 'Disco'),
      ('Meat Loaf', 'Bat Out of Hell', 1977, 43, 'Hard Rock, Progressive Rock'),
      ('Various Artist', 'Grease', 1978, 38 , 'Soundtrack'),
      ('Led Zeppelin', 'Led Zeppelin IV', 1971, 37, 'Hard and Heavy Rock'),
      ('Michael Jackson', 'Bad', 1987, 35, 'Pop, Funk, Rock'),
      ('Alanis Morissette', 'Jagged Little Pill', 1995, 33, 'Alternative Rock'),
      ('Shania Twain', 'Come On Over', 1997, 33, 'Country, Pop'),
      ('Celine Dion', 'Falling Into You', 1997, 32, 'Pop, Soft Rock'),
      ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', 1967, 32, 'Rock'),
      ('Eagles', 'Hotel California', 1976, 32, 'Rock, Soft Rock'),
      ('Various Artist', 'Dirty Dancing', 1987, 32, 'Pop, Rock, R&B'),
      ('Adele', '21', 2011, 31, 'Pop, Soul'),
      ('Celine Dion', 'Lets Tall About Love', 1997, 31, 'Pop, Soft Rock'),
      ('The Beatles', '1', 2000, 31, 'Rock'),
      ('Madonna', 'Immaculate Collection', 1990, 30, 'Pop, Dance'),
      ('The Beatles', 'DAbbey Road', 1969, 30, 'Rock'),
      ('Bruce Springsteen', 'Born in the USA', 1984, 30, 'Rock'),
      ('Dire Straits', 'Brother in Arms', 1985, 30, 'Rock, Pop'),
      ('James Horner', 'Titanic', 1997, 30, 'Soundtrack'),
      ('Metallic', 'Metallic', 1991, 30, 'Thrash Metal'),
      ('Nirvana', 'Nevermind', 1991, 30, 'Alternative Rock'),
      ('Pink Floyd', 'The Wall', 1979, 30, 'Progressive Rock'),
      ('Santana', 'Supernatural', 1999, 30, 'Rock'),
      ('Guns N Roses', 'Appetite for Destruction', 1987, 30, 'Hard Rock')

