Create table If Not Exists Person 
    (PersonId int, 
    FirstName varchar(255), 
    LastName varchar(255));
Create table If Not Exists Address 
    (AddressId int, 
    PersonId int, 
    City varchar(255), 
    State varchar(255));
Truncate table Person;
insert into Person (PersonId, LastName, FirstName) 
    values ('1', 'Wang', 'Allen');
Truncate table Address;
insert into Address (AddressId, PersonId, City, State) 
    values ('1', '2', 'New York City', 'New York');

# Write your MySQL query statement below
select FirstName, LastName, City, State 
from Person as P left join Address as A on P.PersonId = A.PersonId; 
