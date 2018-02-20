
Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, DepartmentId int);
Create table If Not Exists Department (Id int, Name varchar(255));
Truncate table Employee;
insert into Employee (Id, Name, Salary, DepartmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('2', 'Henry', '80000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('3', 'Sam', '60000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('4', 'Max', '90000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('5', 'Janet', '69000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('6', 'Randy', '85000', '1');
Truncate table Department;
insert into Department (Id, Name) values ('1', 'IT');
insert into Department (Id, Name) values ('2', 'Sales');

select E.Id, E.Name, E.Salary, D.Name as Department
  from Employee as E left join Department as D on (E.DepartmentId = D.Id);

select Salary, DepartmentId
  from Employee
  where DepartmentId in (select distinct Id
    from Department)
 order by Salary desc limit 3;
 
select D.Name as Department, E.Name as Employee, E.Salary as Salary
  from Employee as E, Department as D
 where 3 > (select count(distinct E1.Salary)
   from Employee as E1
  where E.Salary < E1.Salary and E1.DepartmentId = E.DepartmentId) and D.Id = E.DepartmentId;
