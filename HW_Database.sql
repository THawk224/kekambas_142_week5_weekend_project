CREATE TABLE salesperson (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  is_company BOOLEAN NOT NULL
);
CREATE TABLE car (
  id SERIAL PRIMARY KEY,
  serial_number VARCHAR(50) UNIQUE NOT NULL,
  type VARCHAR(10) NOT NULL,
  model VARCHAR(100) NOT NULL
);
CREATE TABLE invoice (
  id SERIAL PRIMARY KEY,
  salesperson_id INT NOT NULL,
  customer_id INT NOT NULL,
  car_id INT NOT NULL,
  FOREIGN KEY (salesperson_id) REFERENCES salesperson(id),
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (car_id) REFERENCES car(id)
);
CREATE TABLE service_ticket (
  id SERIAL PRIMARY KEY,
  customer_id INT NOT NULL,
  car_id INT NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  FOREIGN KEY (car_id) REFERENCES car(id)
);
CREATE TABLE mechanic (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE service_record (
  id SERIAL PRIMARY KEY,
  car_id INT NOT NULL,
  mechanic_id INT NOT NULL,
  description TEXT NOT NULL,
  FOREIGN KEY (car_id) REFERENCES car(id),
  FOREIGN KEY (mechanic_id) REFERENCES mechanic(id)
);