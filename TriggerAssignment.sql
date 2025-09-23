use dac_dbt_2022;

--Q1
delimiter //
create trigger after_insertQ after insert
on emp for each row
if timestampdiff(year,new.joindate,curdate()) < 40
then insert into archive(empcode, empname) values (new.empcode, new.empname);
end if; //
delimiter ;
drop trigger after_insertQ;

insert into emp(empcode,empname,deptcode,birthdate,joindate,sex,desigcode,supcode,gradecode,gradelevel,basicpay) 
values ('3099', 'remo',  'ACCT', '2000-12-12', '1900-07-17', 'M', 'PRES',  null,  'GC1', 'GL1', 32000);


select * from average_age;

create table new_average_age(average double);

insert into new_average_age select avg(timestampdiff(year,birthdate,curdate())) from emp;

--Q4
delimiter //
create trigger after_inserting after insert on emp
for each row 
update new_average_age set average = (select avg(timestampdiff(year,birthdate,curdate()))
 from emp); //
delimiter ;

insert into emp(empcode,empname,deptcode,birthdate,joindate,sex,desigcode,supcode,gradecode,gradelevel,basicpay) 
values ('3100', 'remo',  'ACCT', '2000-12-12', '1900-07-17', 'M', 'PRES',  null,  'GC1', 'GL1', 32000);

select * from new_average_age;


--Q6
delimiter //
create trigger before_updateQ before update on emp
for each row
if timestampdiff(year,new.birthdate, curdate()) > 18 then
insert into archive(empcode, empname) values (new.empcode, new.empname);
end if; //
delimiter ;

update emp set birthdate = "2020-01-04" where empcode = 3100;

--Q10
delimiter //
create trigger before_deleteQ before delete on emp
for each row
insert into archive(empcode, empname) values (old.empcode, old.empname); //
delimiter ;


delete from emp where empcode = 3100;
select * from archive;

--Q13
delimiter //
create trigger after_deleteQ after delete on emp
for each row 
update new_average_age set average = (select avg(timestampdiff(year,birthdate,curdate())) from emp); //
delimiter ;

delete from emp where empname = "remo";

select * from new_average_age;




