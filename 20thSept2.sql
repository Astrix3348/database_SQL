//VIEWS
show databases;
use dac_dbt_2022;


create view empcount(empcount)
as (select count(*) as empcount from emp);

create view deptcount(deptcount) 
as (select count(*) as deotcount from dept);

create table contacts (contact_id int not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthdate date,
constraint contacts_pk primary key (contact_id));

insert into contacts(last_name, first_name, birthdate) values ('gangwar', 'aakash', '2003-11-08');



create view emp_exp(empcode, experience)
as 
(select empcode, timestampdiff(year,joindate,curdate()) as experience from emp);


create view emp_pay(empcode, total_pay)
as 
select empcode, sum(basic+allow-deduct) as total_pay from salary group by empcode;

drop view emp_pay;

select * from emp_pay;

create view emp_age as 
select empcode, supcode, empname, timestampdiff(year, birthdate, curdate()) as age from emp;

drop view emp_age;

select e.empname as employee, e.age as emp_age,
s.empname as supervisor, s.age as sup_age
from emp_age e join emp_age s
on e.supcode = s.empcode where e.age > s.age;


create view deptcount as 
select deptcode, count(*) from emp group by deptcode;

select * from deptcount;

create view 
disp_emp as 
select count(*) from emp;

select * from disp_emp;


















select * from contacts;