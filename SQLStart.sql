CREATE DATABASE Course
USE Course
CREATE TABLE Users(
Id int,
[Name] nvarchar(22),
Surname nvarchar(26),
Age int,
Email nvarchar(30)
)

CREATE TABLE Educations(
Id int,
[Name] nvarchar(22),
)
CREATE TABLE Teachers(
Id int,
FullName nvarchar(26),
Age int,
IsDeleted bit,
Email nvarchar(30),
Adress nvarchar(20)
)
ALTER TABLE Teachers DROP COLUMN IsDeleted

ALTER TABLE Teachers ADD IsDeleted nvarchar(22)
ALTER TABLE Users ADD IsDeleted nvarchar(22)

ALTER TABLE Users DROP COLUMN IsDeleted

-----------Users Table Edit
SELECT * FROM Users
INSERT INTO Users VALUES(
1,
'Isabelle',
'Caraiel',
19,
'caraiisabelle88@gmail.com',
'True'
)

INSERT INTO Users VALUES(
2,
'Afrol',
'Afroz',
27,
'afre177@gmail.com',
'True'
)

INSERT INTO Users VALUES(
3,
'Luisa',
'Henrikque',
33,
'lui33@gmail.com',
'True'
)
INSERT INTO Users VALUES(
4,
'Afrol',
'Afroz',
37,
'luvios32@gmail.com',
'True'
)
INSERT INTO Users VALUES(
5,
'Aliexes',
'Aquiack',
40,
'bsl447@gmail.com',
'False'
)

----Educations edit
SELECT * FROM Educations
INSERT INTO Educations VALUES(
2,
'Cambriage'
)


-- ---------TEacher table edit
SELECT * FROM Teachers
INSERT INTO Teachers VALUES(
7,
'Monika Whallet',
29,
'marish35@gmail.com',
'Toronto CANADA',
'False'
)
UPDATE Teachers SET Email='monika11@gmail.com' WHERE id=7

----------changed id numbers
UPDATE Users SET id=6 WHERE [Name]='Samuel'
UPDATE Users SET id=7 WHERE [Name]='Isabelle'

----1 All USERS---
SELECT * FROM Users

----2 Users from Age <20
SELECT * FROM Users WHERE Age<20

----3 count of Users 
SELECT COUNT(Id) FROM Users

----4 show  Teachers FullName, Age, Address Where IsDeleted True
SELECT FullName,Age ,Adress FROM Teachers WHERE IsDeleted='True'

----5 show Teachers count of Age>30
SELECT COUNT(Age) as TeachersCount FROM Teachers WHERE Age>30