-- Artist Table

-- Add 3 new artists to the artist

INSERT INTO artist (name, artist_id)
VALUES
('Metallica', 276),
('Alicia Keys', 277),
('Avicii', 278);

-- Select 5 artists in alphabetical order.

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- Employee Table

-- List all employee first and last names only that live in Calgary.

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards

-- Step 1: Query table to find Nancy Edwards'employee_id

SELECT * FROM employee; 

-- employee_id for Nancy Edwards is 2
-- Step 2: Query table to find employees that report to Nancy Edwards

SELECT * FROM employee WHERE reports_to = 2;

-- Count how many people live in Lethbridge.

SELECT COUNT (*) FROM employee WHERE city = 'Lethbridge';


-- Invoice Table

-- Count how many orders were made from the USA.

SELECT COUNT (*) FROM invoice WHERE billing_country = 'USA';

-- Find the largest order total amount.

SELECT MAX(total) FROM invoice;

-- Find the smallest order total amount.

SELECT MIN(total) FROM invoice;

-- Find all orders bigger than $5.

SELECT * FROM invoice WHERE total > 5;

-- Count how many orders were smaller than $5.

SELECT COUNT(*) FROM invoice WHERE total < 5;

-- Get the total sum of the orders.

SELECT SUM(total) FROM invoice;


-- JOIN Queries (Various tables)

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT *
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT i.invoice_date, c.first_name,c.last_name, i.total
FROM invoice i
JOIN customer c ON  i.customer_id = c.customer_id;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.

SELECT c.first_name "Customer First Name",c.last_name "Customer Last Name", e.first_name "Rep First name", e.last_name "Rep Last Name"
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

-- Get the album title and the artist name from all albums.

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;