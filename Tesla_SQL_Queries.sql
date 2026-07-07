create database tesla_accidents_bd;
show databases;
use tesla_accidents_bd;
create table accidents_data(
Year int,
Date date,
Description text,
Country varchar(50),
State varchar(20),
Deaths float,
Autopilot_claimed varchar(10),
Verified_Tesla_Autopilot_Deaths int

);
use tesla_accidents_bd;
select * from accidents_data;
select sum(Deaths) as total_Deathe
from accidents_data;
select Country, count(*) as total_accidents
from accidents_data
group by Country
order by total_accidents desc;
SELECT Autopilot_claimed, COUNT(*) AS Accident_Count
FROM accidents_data
GROUP BY Autopilot_claimed;
