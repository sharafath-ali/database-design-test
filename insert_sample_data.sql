-- Insert Users
INSERT INTO Users (Name, Email, RegistrationDate) VALUES
('Alice', 'alice@example.com', '2024-12-01'),
('Bob', 'bob@example.com', '2024-12-05'),
('Charlie', 'charlie@example.com', '2024-12-10'),
('Diana', 'diana@example.com', '2024-12-15'),
('Eve', 'eve@example.com', '2024-12-20');

-- Insert Products
INSERT INTO Products (Name, Category, Price, Stock) VALUES
('Laptop', 'Electronics', 1000.00, 10),
('Mouse', 'Electronics', 25.00, 100),
('Keyboard', 'Electronics', 50.00, 80),
('Chair', 'Furniture', 150.00, 30),
('Table', 'Furniture', 200.00, 25),
('Monitor', 'Electronics', 300.00, 20),
('Headphones', 'Electronics', 75.00, 50),
('Notebook', 'Stationery', 5.00, 500),
('Pen', 'Stationery', 2.00, 1000),
('Desk Lamp', 'Electronics', 40.00, 40);

-- Insert Transactions
INSERT INTO Transactions (UserID, TransactionDate) VALUES
(1, '2024-12-28'),
(2, '2024-12-29'),
(3, '2024-12-30');

-- Insert Transaction Details
INSERT INTO TransactionDetails (TransactionID, ProductID, Quantity) VALUES
(1, 1, 1),
(1, 8, 2),
(2, 4, 1),
(2, 2, 1),
(3, 6, 2);
