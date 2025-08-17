CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
	author_id INT PRIMARY KEY,
	author_name VARCHAR(215)
);

CREATE TABLE Books(
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	FOREIGN KEY (author_id) REFERENCES Authors(author_id),
	price DOUBLE,
	publication_date DATE
);

CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
	order_date DATE
);

CREATE TABLE Order_Details(
	orderdetailid INT PRIMARY KEY,
	order_id INT,
	book_id INT,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (book_id) REFERENCES Books(book_id),
	quantity DOUBLE
);

INSERT INTO Authors (author_id, author_name)
VALUES (1, 'J.K. Rowling');

INSERT INTO Books (book_id, title, author_id, price, publication_date)
VALUES (1, 'Harry Potter and the Philosopher''s Stone', 1, 20.00, '1997-06-26');

INSERT INTO Customers (customer_id, customer_name, email, address)
VALUES (1, 'Alice Johnson', 'alice@example.com', '123 Wonderland Lane');

SELECT * FROM Books;
SELECT * FROM Customers;

UPDATE Books
SET price = price + 5
WHERE book_id = 1;

UPDATE Customers
SET email = 'alice.new@example.com'
WHERE customer_id = 1;

SELECT * FROM Books WHERE book_id = 1;
SELECT * FROM Customers WHERE customer_id = 1;

