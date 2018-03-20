USE bonus_db;


CREATE TABLE IF NOT EXISTS bonus (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  product VARCHAR(120),
  sales DECIMAL(6,2),
  value TINYINT (1),
  PRIMARY KEY (id)
);

truncate bonus;

INSERT INTO bonus (product, sales, value)
VALUES
  ('bike', 250.00, true),
  ('cat', 100.00, false),
  ('bat', 30.00, true),
  ('fish', 50.00, false),
  ('nes', 200.00, true),
  ('n64', 300.00, false),
  ('ps3', 400.00, true),
  ('dog', 75.00, false),
  ('drill', 60.00, false);



