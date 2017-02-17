CREATE TABLE Employees 
(
Id INT NOT NULL PRIMARY KEY IDENTITY,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(30) NOT NULL,
Title NVARCHAR(10),
Notes NVARCHAR(MAX)
)

CREATE TABLE Customers 
(
AccountNumber NVARCHAR(50) NOT NULL UNIQUE,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(30) NOT NULL,
PhoneNumber VARCHAR(30),
EmergencyName NVARCHAR(70),
EmergencyNumber VARCHAR(30),
Notes NVARCHAR(MAX)
)

CREATE TABLE RoomStatus 
(
RoomStatus NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE RoomTypes
(
RoomType NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE BedTypes
(
BedType NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Rooms 
(
RoomNumber INT NOT NULL UNIQUE,
RoomType NVARCHAR(50) NOT NULL,
BedType NVARCHAR(50) NOT NULL,
Rate MONEY NOT NULL,
RoomStatus NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Payments 
(
Id INT NOT NULL PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
PaymentDate DATE,
AccountNumber NVARCHAR(50) NOT NULL UNIQUE,
FirstDateOccupied DATE,
LastDateOccupied DATE,
TotalDays INT NOT NULL,
AmountCharged MONEY NOT NULL,
TaxRate MONEY NOT NULL,
TaxAmount MONEY NOT NULL,
PaymentTotal MONEY NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Occupancies 
(
Id INT NOT NULL PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
DateOccupied DATE,
AccountNumber VARCHAR(50) NOT NULL UNIQUE,
RoomNumber INT NOT NULL,
RateApplied MONEY NOT NULL,
PhoneCharge MONEY,
Notes NVARCHAR(50)
)

INSERT INTO Employees(FirstName, LastName)
VALUES
('Adrian', 'Mladenov'),
('Zdravko', 'Katzarov'),
('Jessica', 'Alba')

INSERT INTO Customers(AccountNumber, FirstName, LastName, PhoneNumber)
VALUES
('1231232A23S', 'Stefan', 'Tea', '+3598833922'),
('5643A3245SC', 'Koshi', 'Yam', '+35989254300'),
('009SD022326', 'Elon', 'Musk', '+35988888888')

INSERT INTO RoomStatus(RoomStatus)
VALUES
('Available'),
('Unavailable'),
('Pending')

INSERT INTO RoomTypes(RoomType)
VALUES
('Single'),
('Double'),
('Suite')

INSERT INTO BedTypes(BedType)
VALUES
('King'),
('Queen'),
('Texas King')

INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus)
VALUES
(102, 'Double', 'King', 98.50, 'Available'),
(203, 'Single', 'Queen', 70.50, 'Available'),
(404, 'Suite', 'Texas King', 180.50, 'Available')

INSERT INTO Payments(EmployeeId, AccountNumber, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal)
VALUES
(1, '12345F', 2, 98.50, 8.7, 9.2, 197),
(2, '54321D', 1, 70.5, 8.7, 9.2, 141),
(1, '98765G', 3, 180.50, 8.7, 9.2, 541.5)

INSERT INTO Occupancies(EmployeeId, AccountNumber, RoomNumber, RateApplied)
VALUES
(1, '54333F', 202, 230),
(2, '9879DS', 403, 180),
(3, '8782DK', 102, 330)