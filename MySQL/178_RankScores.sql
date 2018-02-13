Create table If Not Exists Scores (Id int, Score DECIMAL(3,2));
Truncate table Scores;
insert into Scores (Id, Score) values ('1', '3.5');
insert into Scores (Id, Score) values ('2', '3.65');
insert into Scores (Id, Score) values ('3', '4.0');
insert into Scores (Id, Score) values ('4', '3.85');
insert into Scores (Id, Score) values ('5', '4.0');
insert into Scores (Id, Score) values ('6', '3.65');

# Write your MySQL query statement below
select S.Score as Score, count(R.Score) as Rank
from Scores as S, (select distinct Score from Scores) as R
where S.Score <= R.Score
group by S.Id
order by S.Score desc;