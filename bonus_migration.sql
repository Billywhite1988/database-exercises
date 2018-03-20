USE bonus_db;


CREATE TABLE IF NOT EXISTS bonus (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  product VARCHAR(120),
  sales DECIMAL(6,2),
  value TINYINT (1),
  PRIMARY KEY (id)
);