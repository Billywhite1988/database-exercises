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

