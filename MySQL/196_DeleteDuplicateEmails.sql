#delete p from Person p
# where p.Email in (select Id
#   from Person
#  group by Email
#  having count(Id) > 1)
#  and p.Id not in (select Min(Id)
#    from Person
#    group by Email
#    having count(Id) > 1);

# Write your MySQL query statement below
delete p1 from Person p1, Person p2
 where p1.Email = p2.Email and p1.Id > p2.Id;