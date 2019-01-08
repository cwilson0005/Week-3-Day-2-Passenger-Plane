DROP TABLE IF EXISTS passenger_list;

CREATE TABLE passenger_list (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  seat INT2,
  vegetarian BIT
);
