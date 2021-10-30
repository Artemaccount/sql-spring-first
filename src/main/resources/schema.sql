DROP TABLE IF EXISTS CUSTOMERS,ORDERS cascade;
CREATE TABLE CUSTOMERS
(
    id           serial,
    name         NCHAR(20) NOT NULL,
    surname      NCHAR(20) NOT NULL,
    age          INT       NOT NULL,
    phone_number NCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ORDERS
(
    id           serial,
    date         TIMESTAMP  NOT NULL DEFAULT now(),
    customer_id  INT        NOT NULL,
    product_name NCHAR(100) NOT NULL,
    amount       INT        NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Ivan', 'Ivanov', 40, '123123');
INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Petr', 'Petrov', 35, '1322123');
INSERT INTO CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Sidorov', 32, '132112323');

INSERT INTO ORDERS (customer_id, product_name, amount)
VALUES (1, 'test1', 10),
       (2, 'test2', 20),
       (3, 'test3', 35);