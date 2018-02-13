Create table If Not Exists Employee 
    (Id int, 
    Salary int);
Truncate table Employee;
insert into Employee (Id, Salary) 
    values ('1', '100');
insert into Employee (Id, Salary) 
    values ('2', '200');
insert into Employee (Id, Salary) 
    values ('3', '300');

# Write your MySQL query statement below
select MAX(Salary) as SecondHighestSalary 
from Employee 
where Salary not in (select MAX(Salary) 
                     from Employee);