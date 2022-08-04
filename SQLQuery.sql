CREATE TABLE Customer(
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(20) NOT NULL
);

INSERT INTO Customer(Name) VALUES ('Max');
INSERT INTO Customer (Name) VALUES ('Pavel');
INSERT INTO Customer (Name) VALUES ('Ivan ');
INSERT INTO Customer (Name) VALUES ('Leonid');

CREATE TABLE Orders (
Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
CustomerId INT NOT NULL
);

INSERT INTO Orders (CustomerId) VALUES (2);
INSERT INTO Orders (CustomerId) VALUES (4);

SELECT c.Name AS Customers FROM Customer c
WHERE c.Name NOT IN (
SELECT c.Name FROM Customer c INNER JOIN Orders o
ON c.Id = o.CustomerId);