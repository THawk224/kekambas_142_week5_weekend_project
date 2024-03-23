-- Stored procedure for the Invoice
SELECT *
FROM invoice;

SELECT *
FROM salesperson;

INSERT INTO salesperson(name)
VALUES ('Carrie Bradshaw');

CREATE OR REPLACE PROCEDURE add_invoice(salesperson_id INT, customer_id INT, car_id INT)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO invoice(salesperson_id, customer_id, car_id)
	VALUES(salesperson_id, customer_id, car_id);
END;
$$;

CALL add_invoice(3, 2, 2);

-- Stored procedure for the Service Record
SELECT *
FROM service_record;

CREATE OR REPLACE PROCEDURE add_service_record(car_id INT, mechanic_id INT, description TEXT)
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO service_record(car_id, mechanic_id, description)
	VALUES(car_id, mechanic_id, description);
END;
$$;

CALL add_service_record(2, 1, 'Replace the windshield');


-- Stored procedure for the Mechanic 
SELECT *
FROM mechanic;

CREATE OR REPLACE PROCEDURE add_mechanic(name VARCHAR(100))
LANGUAGE plpgsql
AS $$
BEGIN 
	INSERT INTO mechanic(name)
	VALUES(name);
END;
$$;

CALL add_mechanic('Delilah Stevens');
