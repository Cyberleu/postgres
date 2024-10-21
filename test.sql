drop table sales

CREATE TABLE sales (
year INT,
country VARCHAR(20),
product VARCHAR(32),
profit INT
);

INSERT INTO
sales (
year,
country,
product,
profit
)
VALUES (2024, 'USA', 'Laptop', 1200),
(
2024,
'USA',
'Smartphone',
2000
),
(
2024,
'USA',
'Smartphone',
NULL
),
(
2024,
'USA',
'Smartphone',
NULL
),
(2024, 'USA', 'Printer', 1001),
(2024, 'USA', 'Laptop', 2010),
(
2024,
'Canada',
'Smartphone',
800
),
(
2024,
'Canada',
'Smartphone',
900
),
(
2024,
'Canada',
'Smartphone',
500
),
(2023, 'China', 'Printer', 400),
(2024, 'China', 'Printer', 500),
(2024, 'China', 'Printer', 600),
(2023, NULL, 'Printer', 700),
(NULL, 'India', 'Mouse', 500),
(NULL, 'China', 'Mouse', 300),
(NULL, NULL, 'Mouse', 150),
(NULL, NULL, 'Printer', 200),
(NULL, NULL, NULL, NULL);

explain analyze select year, country
from sales
where country <> 'China' and profit > 500


select * from sales

select pg_backend_pid();