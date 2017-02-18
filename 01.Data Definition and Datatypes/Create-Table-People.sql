CREATE TABLE People
(
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(200) NOT NULL,
Picture VARBINARY(2),
Height FLOAT(2),
Weight FLOAT(2),
Gender varchar(1) CHECK(Gender = 'm' OR Gender = 'f') NOT NULL,
Birthdate date NOT NULL,
Biography nvarchar(MAX)
)

INSERT INTO People(Name, Height, Weight, Gender, Birthdate, Biography)
VALUES
('Pesho', 1.80, 65, 'm', '1988-12-01', 'Toi e edno dobro momche'),
('Ivan', 1.75, 65, 'm', '1987-11-01', 'Toi e edno dobro momche'),
('Gosho', 1.65, 65, 'm', '1986-10-01', 'Toi e edno dobro momche'),
('Ivo', 1.90, 65, 'm', '1985-09-01', 'Toi e edno dobro momche'),
('Mitko', 1.85, 65, 'm', '1983-12-01', 'Toi e edno dobro momche')
