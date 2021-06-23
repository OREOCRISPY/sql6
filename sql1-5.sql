--1£º
select C.cust_id,C.iname,count(O.order_id)
from customer C inner join order O on C.cust_id=O.cust_id
group by C.cust_id,C.iname

--2:
select *
from person 
where lastname like ('A%')

--3:
select M.person_id,M.name,count(E.person_id)
from person M inner join person E on M.person_id=E.manager_id
where person_id in (select person_id from person where manager_id is null)
group by M.person_id

--4:
-- DML: insert,update,delete
-- DDL: create, alter, truncate rename, comment, grant, deny
-- user events: logon 

--5:
create table company (id int primary key identity(1,1), name nchar(20))
create table division(id int primary key identity(1,1), name nchar(20),address nchar(20))
create table company_division(cid int foreign key references company(id),did int foreign key references division(id))
create table contacts(id int primary key identity(1,1),suitemail nchar(20))
create table contact_division(cid int foreign key references division(id),did int foreign key references division(id))