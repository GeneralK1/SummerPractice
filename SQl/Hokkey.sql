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
	('������', 1),
	('������', 2),
	('�����-���������', 3),
	('�����������', 4)

insert into Teams
	(Title, ResultId)
values
	('�������', 1),
	('����', 1),
	('���', 3),
	('�� ����', 2),
	('�������', 4)

insert into Athlets
	(Name, Surmane, Number, Statistic, TeamId)
values
	('����', '�������', 28,-6, 2),
	('���','������',44, 12, 2),
	('������','�������', 7, 15, 2),
	('�������','��������', 84, 5, 1),
	('�����','�������', 25, -1, 1),
	('����','�����', 38, 1, 1),
	('���������','�������', 31, 4, 3),
	('�������','��������', 70, 5, 3),
	('������','�����', 3, 3, 3),
	('�������','����', 44, -3, 2),
	('������','������', 96, 8, 2),
	('�������','��������', 10, 12, 2),
	('������', '����������', 54, 2, 4),
	('����', '�����', 57, 10, 4)