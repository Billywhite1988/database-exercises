CREATE TABLE IF NOT EXISTS CONTACTS (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(512) NOT NULL,
  number INT NOT NULL,
  email VARCHAR(500) NOT NULL,
  create_at VARCHAR(255) NOT NULL,
  updated_at VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);