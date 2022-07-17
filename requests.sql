use Hokkey

-- update
select * from Athlets
where Id = 4

update Athlets
set Statistic = Statistic -3
where Id = 4

select * from Athlets
where Id = 4

-- delete
select * from Athlets
where Statistic <= 0

delete from Athlets
where Statistic <= 0

select * from Athlets
where Statistic <= 0

-- group by (количество спортсменов с одинаковой стасистикой)
select count(Id) AmountOfAthlets, Statistic from Athlets
group by Statistic

-- having (выборка команд, в которых спортсменов >= 2)
select 
	count(Athlets.Id) AmountOfAthlets, 
	Teams.Title Teams
from Athlets INNER JOIN Teams on Athlets.TeamId = Teams.Id
group by Teams.Title
having count(Athlets.Id) >= 2

-- join (выборка для класса A-1)
select 
	Athlets.Name,
	Athlets.Surmane,
	Athlets.Number,
	Athlets.Statistic,
	Teams.Title Teams
from Athlets INNER JOIN Teams on Athlets.TeamId = Teams.Id
where 
	Teams.Title = 'Ак-Барс'