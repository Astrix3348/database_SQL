show databases;
use dac_dbt_2022;

select * from emp;

//Q4
select empname, empcode from emp where supcode is null;

//Q5
select empname, empcode, supcode from emp
where supcode = (select empcode from emp where 
supcode is null);

//Q6
select empcode, empname, timestampdiff(
year,birthdate,curdate()) as age from emp
order by age desc
limit 1;

//Q7
select empcode, empname, timestampdiff(
year,birthdate,curdate()) as age from emp 
where birthdate <> (select min(birthdate) from emp)
order by age desc; 

//Q9
select empname, empcode, deptcode from emp
where deptcode in ('ACCT', 'PERS', 'PRCH');

//Q13
select empcode, empname, timestampdiff(year,birthdate,curdate()) as age
from emp where birthdate = (select max(birthdate) from emp);


//Q14
select * from emp where basicpay <> 12400;

//Q18
select empcode, empname from emp 
where empname like '%i';

//Q19
select empcode, empname, timestampdiff(year,joindate,curdate()) as experience
from emp where timestampdiff(year,joindate,curdate()) > 25; 


//Q20
SELECT empcode, empname, TIMESTAMPDIFF(YEAR, joindate, CURDATE()) AS experience
FROM emp
WHERE deptcode = 'SALE'
AND TIMESTAMPDIFF(YEAR, joindate, CURDATE()) BETWEEN 20 AND 30;


//Q21
select e.empcode, e.empname, sum(s.basic + s.allow - s.deduct) as salary,
sum(s.basic + s.allow - s.deduct)/2
from emp e join salary s on e.empcode = s.empcode
group by e.empcode, e.empname;

//Q23
select e.empcode, e.empname, sum(s.basic + s.allow - s.deduct) as salary, e.deptcode
from emp e join salary s on e.empcode = s.empcode
where e.deptcode = 'ACCT'
group by e.empcode, e.empname;


//Q26
select empcode, empname from emp 
where supcode = (select empcode from emp where empname = 'reddy');

//Q27
select s.empcode, s.empname, count(e.empcode) as subordinates from emp e 
join emp s on s.empcode = e.supcode
group by s.empcode, s.empname
order by subordinates desc;

//Q26
select s.empcode, s.empname from emp e join emp s on
s.empcode = e.supcode group by s.empcode, s.empname
having count(e.empname)>3;


//Q29
select gradecode, min(basic), max(basic) from grade
group by gradecode;

//Q30
select e.empname as employee, s.empname as supervisor from emp e join emp s
on e.supcode = s.empcode
group by e.empname, s.empname;


//Q32
select h.empcode, e.empname, count(h.changedate) as promotion from emp e join history h
on e.empcode = h.empcode 
group by h.empcode, e.empname
having promotion <1;

//Q33
select e.empname, count(h.changedate) as promotion from emp e join history h
on e.empcode = h.empcode
group by e.empname
having count(h.changedate) = (select max(promotion) from (select count(changedate) as promotion from history
group by empcode) as sub);

//Q34
select e.empcode, e.empname from emp e join history h
on e.empcode = h.empcode 
where salmonth = 1991
group by e.empcode, e.empname
having 

select * from history;









