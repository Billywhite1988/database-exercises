USE codeup_test_db;

CREATE TABLE IF NOT EXISTS CONTACTS (

  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  number VARCHAR(20)NOT NULL,
  email VARCHAR(100),
  create_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
   PRIMARY KEY (id)
);
