INSERT INTO salesperson (name) VALUES
  ('John Doe'),
  ('Jane Smith');
INSERT INTO customer (name, is_company) VALUES
  ('Alice Johnson', false),
  ('ABC Corp', true);
INSERT INTO car (serial_number, type, model) VALUES
  ('SN123456', 'new', 'Toyota Camry'),
  ('SN789012', 'used', 'Honda Civic');
INSERT INTO invoice (salesperson_id, customer_id, car_id) VALUES
  (1, 1, 1),
  (2, 2, 2);
INSERT INTO service_ticket (customer_id, car_id) VALUES
  (1, 1),
  (2, 2);
INSERT INTO mechanic (name) VALUES
  ('Michael Brown'),
  ('Sarah Johnson');
INSERT INTO service_record (car_id, mechanic_id, description) VALUES
  (1, 1, 'Oil change and filter replacement'),
  (2, 2, 'Brake pad replacement');
  
 SELECT *
 FROM mechanic;

SELECT *
FROM service_record;

SELECT *
FROM service_ticket;

SELECT *
FROM invoice;

SELECT *
FROM car;

SELECT *
FROM customer;

SELECT *
FROM salesperson;