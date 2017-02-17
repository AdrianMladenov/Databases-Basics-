CREATE TABLE Directors
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
DirectorName NVARCHAR(MAX) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
GenreName NVARCHAR(MAX) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
CategoryName NVARCHAR(MAX) NOT NULL,
Notes NVARCHAR(MAX)
)
CREATE TABLE Movies
(
Id INT PRIMARY KEY IDENTITY NOT NULL,
Title NVARCHAR(200) NOT NULL,
DirectorId INT FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
CopyrightYear INT NOT NULL,
Length INT NOT NULL,
GenreId INT FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Rating FLOAT NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO Directors(DirectorName, Notes)
VALUES
('Steven Spielberg', 'Undoubtedly one of the most influential film personalities in the history of film.'),
('Martin Scorsese', 'After serious deliberations about entering the priesthood - he entered a seminary in 1956 - Martin Scorsese opted to channel his passions into film.'),
('Alfred Hitchcock', 'Alfred Joseph Hitchcock was born in Leytonstone, Essex, England.'),
('Christopher Nolan', 'Simply the BEST!'),
('Quentin Tarantino', 'Quentin Jerome Tarantino was born in Knoxville, Tennessee. ')

INSERT INTO Genres(GenreName)
VALUES
('Action'),
('Adventure'),
('Comedy'),
('Crime'),
('Mystery')

INSERT INTO Categories(CategoryName)
VALUES
('Action'),
('Adventure'),
('Comedy'),
('Crime'),
('Mystery')

INSERT INTO Movies(Title, DirectorId, CopyrightYear, Length, GenreId, CategoryId, Rating)
VALUES
('Catch Me If You Can', 1, 2002, 141, 4, 4, 8.0),
('The Wolf of Wall Street', 2, 2013, 180, 3, 3, 8.2),
('Psycho', 3, 1960, 109, 5, 5, 8.5),
('Inception', 4, 2010, 148, 5, 5, 8.8),
('Pulp Fiction', 5, 1994, 154, 4, 4, 8.9)