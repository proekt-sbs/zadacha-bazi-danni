CREATE DATABASE CarsShowroom11dVqrno
USE CarsShowroom11dVqrno
CREATE TABLE Cars(
ID INT PRIMARY KEY,
Brand VARCHAR(50),
Model VARCHAR(50),
CategoryID INT,
CONSTRAINT fk_Categories_Cars
FOREIGN KEY(CategoryID)
REFERENCES Categories(ID),
EngineID INT,
CONSTRAINT fk_Engines_Cars
FOREIGN KEY(EngineID)
REFERENCES Engines(ID),
Color VARCHAR(50),
[Year] VARCHAR(10),
Price DECIMAL
)
--EXECUTED--
CREATE TABLE Sales(
ID INT PRIMARY KEY,
CarID INT,
CONSTRAINT fk_Cars_Sales
FOREIGN KEY(CarID)
REFERENCES Cars(ID),
ClientID INT,
CONSTRAINT fk_Clients_Sales
FOREIGN KEY(ClientID)
REFERENCES Clients(ID),
SaleDate DATE
)
--EXECUTED--
CREATE TABLE Clients(
ID INT PRIMARY KEY,
FirstName NVARCHAR(50),
LastName NVARCHAR(50),
GSM VARCHAR(20)
)
--EXECUTED--
CREATE TABLE Categories(
ID INT PRIMARY KEY,
Category VARCHAR(50)
)
--EXECUTED--
CREATE TABLE Engines(
ID INT PRIMARY KEY,
Engine VARCHAR(50)
)
INSERT INTO Categories
VALUES
(1,'van'),
(2,'jip'),
(3,'kabrio'),
(4,'kombi'),
(5,'kupe'),
(6,'minivan'),
(7,'pikap'),
(8,'sedan'),
(9,'stretch limuzina'),
(10,'hechbeg')
SELECT * FROM Categories
INSERT INTO Engines
VALUES
(1,'benzinov'),
(2,'dizelov'),
(3,'elektricheski'),
(4,'hibriden'),
(5,'plug-in-hibrid')
SELECT * FROM Engines
INSERT INTO Cars 
VALUES
(1, 'BMW', 'X5', 2, 1, 'Black', '2020', 75000),
(2, 'Audi', 'A6', 8, 2, 'White', '2019', 65000),
(3, 'Mercedes', 'C-Class', 8, 3, 'Silver', '2021', 55000),
(4, 'Volkswagen', 'Golf', 4, 4, 'Red', '2022', 30000),
(5, 'Toyota', 'Corolla', 10, 5, 'Blue', '2018', 18000),
(6, 'Hyundai', 'Santa Fe', 2, 1, 'Gray', '2023', 45000),
(7, 'Ford', 'Focus', 8, 2, 'Green', '2020', 25000),
(8, 'Nissan', 'Qashqai', 2, 3, 'Yellow', '2021', 38000),
(9, 'Kia', 'Sportage', 6, 4, 'Purple', '2017', 21000),
(10, 'Peugeot', '3008', 6, 5, 'Brown', '2019', 29000);
SELECT * FROM Cars
INSERT INTO Clients
VALUES
(1, 'Ivan', 'Petrov', '0887123456'),
(2, 'Maria', 'Georgieva', '0898123456'),
(3, 'Petar', 'Ivanov', '0876123456'),
(4, 'Elena', 'Nikolova', '0899123456'),
(5, 'Stoyan', 'Kostov', '0873123456'),
(6, 'Dimitar', 'Vasilev', '0883123456'),
(7, 'Lora', 'Stoyanova', '0895123456'),
(8, 'Krasimir', 'Penev', '0884123456'),
(9, 'Sofia', 'Dimitrova', '0872123456'),
(10, 'Georgi', 'Hristov', '0892123456');
SELECT * FROM Clients

INSERT INTO Sales 
VALUES
(1, 1, 1, '2024-10-01'),
(2, 2, 2, '2024-10-05'), 
(3, 3, 3, '2024-10-10'),  
(4, 4, 4, '2024-10-12'),  
(5, 5, 5, '2024-10-15');  
SELECT * FROM Sales
SELECT * FROM Cars
WHERE [Year] < '2020';
INSERT INTO Cars 
VALUES
(11, 'Audi', 'Q7', 2, 2, 'Black', '2018', 85000), 
(12, 'Audi', 'A3', 8, 3, 'Silver', '2020', 45000);  
SELECT * FROM Cars
WHERE Brand='Audi'
INSERT INTO Cars
VALUES
(13, 'BMW', 'X6', 2, 1, 'Black', '2020', 85000), 
(14, 'Mercedes', 'G-Class', 1, 2, 'Black', '2019', 120000); 
SELECT * FROM Cars
WHERE Color='Black'
SELECT* FROM Cars WHERE Price<25000
SELECT * FROM CARS WHERE EngineID=1
INSERT INTO Cars 
VALUES
(15, 'Ford', 'Transit', 1, 2, 'White', '2018', 30000), 
(16, 'Mercedes', 'Sprinter', 1, 4, 'Silver', '2020', 45000); 

SELECT* FROM CARS WHERE CategoryID=1
UPDATE Cars
SET Price = Price * 0.90
WHERE EngineID = 2 AND [Year] <= '2020';
DELETE FROM Clients
WHERE ID = 10;
DELETE FROM Sales WHERE ClientID = 10;