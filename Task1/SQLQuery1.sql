create database Course

USe Course

create table Teachers (
	[Id] INT identity primary key,
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Email] nvarchar(50),
	[Age] Int,
	[Salary] Decimal
)

INSERT INTO Teachers (Name, Surname, Email, Age, Salary)
VALUES ('Nicat', 'Novruzzade', 'nicat@gmail.com', 21, 1200),
('Resul', 'Hesenov', 'resul@mail.ru', 30, 1500),
('Novreste', 'Aslanzade', 'novreste@gmail.com', 25, 1000),
('Musa', 'Afandiyev', 'musa@mail.ru', 20, 800),
('Murad', 'Ceferov', 'murad@gmail.com', 40, 2800)



Select * from Teachers

DELETE FROM Teachers WHERE Id > 5;

DBCC CHECKIDENT ('Teachers', RESEED, 0)



UPDATE Teachers
SET Surname = 'Afandiyev'
WHERE Id = 4;




Select * from Teachers where Age > (Select AVG(Age) from Teachers)


Select * from Teachers where Salary between 1000 and 3000


Select * from Teachers where SUBSTRING(Email, CHARINDEX('@',Email)+1,Len(Email)) = 'mail.ru' and Surname Like('C%')



