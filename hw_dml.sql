INSERT INTO salesperson(
    first_name,
    last_name
) VALUES (
    'Mike',
    'Heiser'
)

INSERT INTO customer(
    first_name,
    last_name
) Values (
    'Saul',
    'Goodman'    
)

INSERT INTO customer(
    first_name,
    last_name
) Values (
    'Maxfield',
    'Parrish'    
)
-- Turn of century American Painter

INSERT INTO car(
    make,
    model,
    year,
    customer_id
) VALUES (
    'Pontiac',
    'Sunfire',
    1998,
    1
)
-- Widely accepted among my friends as the funniest
-- "Modern" car concieved

INSERT INTO car(
    make,
    model,
    year,
    customer_id
) VALUES (
    'Suzuki',
    'Esteem',
    1998,
    1
)
-- Saul Goodman's actual car, also funny, same year
-- what a bad time for car design


INSERT INTO car(
    make,
    model,
    year,
    customer_id
) VALUES (
    'Falcon-Knight',
    'Roadster',
    1928,
    2
)
-- One of the most Great Gatsby looking things I could find

INSERT INTO invoice(
    salesperson_id,
    car_id,
    price
) VALUES (
    1,
    1,
    1814.50
)
-- based on average KBB values

INSERT INTO service(
    car_id
) VALUES (
    2
)
  
INSERT INTO mechanic(
    ticket_id
) VALUES (
    1
)