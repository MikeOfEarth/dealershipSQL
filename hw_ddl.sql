CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR (25)
)

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(15),
    last_name VARCHAR (25)
)

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    price NUMERIC
)

CREATE TABLE serivce(
    ticket_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    date timestamp,
    FOREIGN KEY (car_id) REFERENCES car(car_id)
)

ALTER TABLE serivce
  RENAME TO service;
  
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (ticket_id) REFERENCES service(ticket_id)
)

