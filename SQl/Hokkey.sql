use Hokkey



-- Tables creating
create table Results(
	Id int identity(1,1) constraint PK_Results primary key,
	TeamTerritory nvarchar(50),
	Place int
)

create table Teams(
	Id int identity(1,1) constraint PK_Teams primary key,
	Title nvarchar(50),
	ResultId int constraint FK_Teams_Results references Results(Id)
)

create table Athlets(
	Id int identity(1,1) constraint PK_Athlets primary key,
	Name nvarchar(50),
	Surmane nvarchar(50),
	Number int,
	Statistic int,
	TeamId int constraint FK_Athlets_Teams references Teams(Id)
)

-- Data inserting
insert into Results
	(TeamTerritory, Place)
values
	('Москва', 1),
	('Казань', 2),
	('Санкт-Петербург', 3),
	('Владивосток', 4)

insert into Teams
	(Title, ResultId)
values
	('Спартак', 1),
	('ЦСКА', 1),
	('СКА', 3),
	('Ак Барс', 2),
	('Адмирал', 4)

insert into Athlets
	(Name, Surmane, Number, Statistic, TeamId)
values
	('Иван', 'Федотов', 28,-6, 2),
	('Диц','Даррен',44, 12, 2),
	('Матвей','Гуськов', 7, 15, 2),
	('Алексей','Красиков', 84, 5, 1),
	('Артем','Сериков', 25, -1, 1),
	('Илья','Шипов', 38, 1, 1),
	('Александр','Самонов', 31, 4, 3),
	('Дмитрий','Николаев', 70, 5, 3),
	('Андрей','Педан', 3, 3, 3),
	('Дмитрий','Юдин', 44, -3, 2),
	('Никита','Лямкин', 96, 8, 2),
	('Дмитрий','Воронков', 10, 12, 2),
	('Никита', 'Серебряков', 54, 2, 4),
	('Егор', 'Рыков', 57, 10, 4)