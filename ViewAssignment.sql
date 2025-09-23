use dac_dbt_2022;

--Q1
create view new_emp_age as 
(select empcode, empname,supcode,timestampdiff(year,birthdate,curdate()) as age from emp);

drop view new_emp_age;

select * from new_emp_age;

--Q2
create view new_emp_exp as 
(select timestampdiff(year,joindate,curdate()) from emp);

--Q3
create view new_emp_pay as (select empcode, sum(basic+allow-deduct)
from salary group by empcode);

--Q4
select e.empname as employee, s.empname as supervisor, e.age as empage, s.age as supage
from new_emp_age e
join new_emp_age s on e.supcode = s.empcode
where e.age > s.age;

--Q5
create view display_count as (select deptcode, count(*) as number from emp group by deptcode); 
drop view display_count;
select * from display_count;

--Q6
create view total as (select count(*) as empNo from emp);


--Q7
select d.deptcode, ((d.number/t.empNo) * 100) as percent from display_count d join total t
group by d.deptcode, percent;





select * from emp;

