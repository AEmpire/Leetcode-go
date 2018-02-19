drop table Person;
Create table If Not Exists Person (Id int, Email varchar(255));
Truncate table Person;
insert into Person (Id, Email) values ('1', 'a@b.com');
insert into Person (Id, Email) values ('2', 'c@d.com');
insert into Person (Id, Email) values ('3', 'a@b.com');

select distinct p1.Email
  from Person as p1, Person as p2
 where p1.Id < p2.Id and p1.Email = p2.Email;