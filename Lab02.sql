REM   Script: Lab02
REM   Sara Sunny
Lab 02
1/18/23
Revised

CREATE TABLE Customers  
(  
    CustomerID int PRIMARY KEY,  
    Customername varchar2(255),  
    Address varchar2(255),  
    City varchar2(255),  
    PostalCode varchar2(255),  
    Country varchar2(255)  
);

CREATE TABLE Employees  
(  
    EmployeeID int PRIMARY KEY,  
    LastName varchar2(255),  
    FirstName varchar2(255),  
    BirthDate DATE  
);

CREATE TABLE Categories  
(  
    CategoryID int PRIMARY KEY,  
    CategoryName varchar2(255),  
    Description varchar2(1255)  
);

CREATE TABLE Products  
(  
    ProductID int PRIMARY KEY,  
    ProductName varchar2(255),  
    CategoryID int,  
    Unit varchar2 (255),  
    Price int  
);

CREATE TABLE Orders  
(  
    OrderID int PRIMARY KEY,  
    CustomerID int,  
    EmployeeID int,  
    OrderDate Date  
);

CREATE TABLE OrderDetails  
(  
    OrderID int,  
    ProductID int,  
    Quantity int  
);

INSERT INTO Customers  
VALUES (1, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', '12209', 'Germany');

INSERT INTO Customers  
VALUES (2, 'Ana Trujillo Emparedados Y helados', 'Avda. de la Constitucion 2222', 'Mexico D.F.', '05021', 'Mexico');

INSERT INTO Customers  
VALUES (3, 'Antonio Moreno Taqueria', 'Mataderos 2312', 'Mexico D.F.', '05023', 'Mexico');

SELECT * FROM Customers;

INSERT INTO Employees  
VALUES (1, 'Davolio', 'Nancy', '08-Dec-1968');

INSERT INTO Employees  
VALUES (2, 'Fuller', 'Andrew', '19-Feb-1952');

SELECT * FROM Employees;

INSERT INTO Categories  
VALUES (1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales');

INSERT INTO Categories  
VALUES (2, 'Condiments', 'Sweet and savory sauces');

INSERT INTO Categories  
VALUES (3, 'Confections', 'Desserts, candies, and sweet breads');

SELECT * FROM Categories;

INSERT INTO Products   
VALUES (1, 'Chais', 1, '10 boxes x 20 bags', 18);

INSERT INTO Products  
VALUES (2, 'Chang', 1, '24 - 12 oz bottles', 19);

INSERT INTO Products  
VALUES (3, 'Aniseed Syrup', 2, '12 - 500 ml bottles', 10);

SELECT * FROM Products;

INSERT INTO Orders  
VALUES (10248, 90, 5, '04-Jul-1996');

INSERT INTO Orders  
VALUES (10249, 81, 6, '05-Jul-1996');

INSERT INTO Orders  
VALUES (10250, 34, 4, '08-Jul-1996');

SELECT * FROM Orders;

INSERT INTO OrderDetails  
VALUES (10248, 11, 12);

INSERT INTO OrderDetails  
VALUES (10248, 42, 10);

INSERT INTO OrderDetails  
VALUES (10248, 72, 5);

INSERT INTO OrderDetails  
VALUES (10249, 14, 9);

INSERT INTO OrderDetails  
VALUES (10249, 51, 40);

INSERT INTO OrderDetails  
VALUES (10250, 41, 10);

SELECT * FROM OrderDetails;

