CREATE TABLE Users(
Id BIGINT IDENTITY PRIMARY KEY NOT NULL,
Username VARCHAR(30) UNIQUE NOT NULL,
Password VARCHAR(26) NOT NULL, 
ProfilePicture VARBINARY(MAX) CHECK (DATALENGTH(ProfilePicture) < 900 * 1024),
LastLoginTime DATETIME,
IsDeleted VARCHAR(5) CHECK(IsDeleted = 'true' OR IsDeleted = 'false')
)
INSERT INTO [dbo].[Users](Username, Password)
VALUES 
('Gosho', 'superqkaparola'),
('Pesho', 'parola321'),
('Penka', 'sexymacka'),
('Bojinkata', 'ikonata'),
('Nakov', 'mnogonecenzurnidumi')