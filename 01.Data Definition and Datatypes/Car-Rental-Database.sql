CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY,
CategoryName NVARCHAR(100) NOT NULL,
DailyRate MONEY NOT NULL,
WeeklyRate MONEY NOT NULL,
MonthlyRate MONEY NOT NULL,
WeekendRate MONEY NOT NULL
)

CREATE TABLE Cars
(
Id INT PRIMARY KEY IDENTITY,
PlateNumber NVARCHAR(MAX) NOT NULL,
Manufacturer NVARCHAR(MAX) NOT NULL,
Model NVARCHAR(MAX) NOT NULL,
CarYear VARCHAR(4) NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Doors TINYINT NOT NULL,
Picture VARBINARY(MAX),
Condition NVARCHAR(MAX),
Available NVARCHAR(MAX) NOT NULL
)

CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(MAX) NOT NULL,
LastName NVARCHAR(MAX) NOT NULL,
Title NVARCHAR(MAX) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Customers
(
Id INT PRIMARY KEY IDENTITY,
DriverLicenceNumber VARCHAR(MAX) NOT NULL,
FullName NVARCHAR(50) NOT NULL,
Address NVARCHAR(100) NOT NULL,
City NVARCHAR(50) NOT NULL,
ZipCode NVARCHAR(20),
Notes NVARCHAR(MAX)
)

CREATE TABLE RentalOrders
(
Id INT PRIMARY KEY IDENTITY,
EmployeeId INT FOREIGN KEY REFERENCES Employees(Id),
CustomerId INT FOREIGN KEY REFERENCES Customers(Id),
CarId INT FOREIGN KEY REFERENCES Cars(Id),
TankLevel DECIMAL NOT NULL,
KilometrageStart DECIMAL NOT NULL,
KilometrageEnd DECIMAL NOT NULL,
TotalKilometrage DECIMAL NOT NULL,
StartDate DATE NOT NULL,
EndDate Date NOT NULL,
TotalDays INT NOT NULL,
RateApplied NVARCHAR(20) NOT NULL,
TaxRate DECIMAL NOT NULL,
OrderStatus NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO Categories(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES
('First Class', 20, 100, 300, 50),
('Economy Class', 15, 70, 250, 40),
('Take One Get Two', 10, 50, 200, 30)

INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available, Condition)
VALUES
('HA5007', 'Mazda', '6', '2017', 1, 5, 'YES', 'Perfect'),
('JA1113', 'Mercedes', 'Benz', '2013', 2, 5, 'YES', 'Barely working'),
('LA1423', 'BMW', '5', '2009', 3, 3, 'NO', 'You better choose another one')

INSERT INTO Employees (FirstName, LastName, Title)
VALUES
('Adrian', 'Mladenov', 'Mr'),
('Olessya', 'Plamenova', 'Mrs'),
('Zdravko', 'Katsarov', 'Mr')

INSERT INTO Customers (DriverLicenceNumber, FullName, Address, City)
VALUES
('2134123', 'Malissa Hollan', 'Miami', 'Florida'),
('1135123', 'Mike Fire', 'USA Street', 'TEXAS'),
('25123124', 'Brittany Bennet', 'Hollywood', 'MT')

INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus)
VALUES
(1, 2, 3, 30.15, 100.20, 150.34, 50.14, '20170120', '20170125', 5, 'Standard', 15, 'Confirmed'),
(1, 2, 2, 21.54, 200.20, 250.34, 50.14, '2017-02-5', '2017-02-10', 5, 'Discount', 10.5, 'Awaiting Confirmation'),
(1, 2, 2, 30.15, 50.20, 100.20, 50, '2017-02-3', '2017-01-5', 2, 'Standard', 15.99, 'Awaiting Payment')