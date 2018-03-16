
CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(512) NOT NULL,
  name VARCHAR(512) NOT NULL,
  release_date INT NOT NULL,
  sales FLOAT NOT NULL,
  genre CHAR(255) NOT NULL,
  PRIMARY KEY (id)
);