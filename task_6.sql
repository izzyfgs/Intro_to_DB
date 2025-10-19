-- ============================================================
-- INSERT MULTIPLE CUSTOMERS INTO CUSTOMERS TABLE
-- ============================================================

INSERT INTO Customers (customer_id, customer_name, email, address)
SELECT 2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1 FROM Customers WHERE customer_id = 2
);

INSERT INTO Customers (customer_id, customer_name, email, address)
SELECT 3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1 FROM Customers WHERE customer_id = 3
);

INSERT INTO Customers (customer_id, customer_name, email, address)
SELECT 4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.'
FROM DUAL
WHERE NOT EXISTS (
    SELECT 1 FROM Customers WHERE customer_id = 4
);
