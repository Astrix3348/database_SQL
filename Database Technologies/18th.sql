 //Q39
 
 select e.empname, s.empcode, (s.basic + s.allow - s.deduct)
 as total_pay from salary s join emp e on e.empcode = s.empcode 
 where (s.basic + s.allow - s.deduct) > (select avg(basic + allow - deduct) 
 from salary);
 
 
 SELECT e.empname, s.empcode,
       SUM(s.basic + s.allow - s.deduct) AS total_salary
FROM emp e
JOIN salary s ON e.empcode = s.empcode
GROUP BY e.empname, s.empcode
HAVING SUM(s.basic + s.allow - s.deduct) = (
    SELECT MAX(total)
    FROM (
        SELECT SUM(basic + allow - deduct) AS total
        FROM salary
        GROUP BY empcode
    ) AS sub
);

//Q48
select e.empname, avg(s.basic + s.allow - s.deduct) 
as AVGPAY from emp e join salary s on e.empcode = s.
empcode group by e.empname, e.empcode
 having avg(s.basic + s.allow - s.deduct) < (select avg(s2.basic + s2.allow - s2.deduct) 
from emp e2 join salary s2 on e2.empcode = s2.empcode where e2.deptcode = 'ACCT');








