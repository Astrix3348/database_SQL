use dac_dbt_2022;

select * from emp;

create index emp_index on emp(empcode);

show index from emp;

delimiter //
create trigger before_insert before insert
on emp for each row 
if timestampdiff(year, new.birthdate, curdate()) < 18
then signal sqlstate '50001' set message_text = 'employee must be older than 18';
end if; //
delimiter ;


insert into emp(empcode,empname,deptcode,birthdate,joindate,sex,desigcode,supcode,gradecode,gradelevel,basicpay) 
values ('7888', 'Ruma',  'ACCT', '2000-12-12', '2021-07-17', 'M', 'PRES',  null,  'GC1', 'GL1', 32000);

create table average_age(average double);

insert into average_age select avg(timestampdiff(year,birthdate,curdate())) from emp;


delimiter //
create trigger after_insert after insert 
on emp for each row
update average_age set average = (select avg(timestampdiff(year,birthdate, curdate()))
from emp); //
delimiter ;

drop trigger after_insert;

insert into emp(empcode,empname,deptcode,birthdate,joindate,sex,desigcode,supcode,gradecode,gradelevel,basicpay) 
values ('1000', 'raj',  'ACCT', '2003-12-12', '2021-07-17', 'M', 'PRES',  null,  'GC1', 'GL1', 32000);

set SQL_SAFE_UPDATES = 0;
select * from average_age;

delimiter //
create trigger before_update before update
on emp for each row
if timestampdiff(year, new.birthdate, curdate()) < 18 then 
signal sqlstate '50002' set message_text = 'must be older than 18';
end if; //
delimiter ;

update emp set birthdate = '2004-12-12'
where empcode = '1000';
select * from emp where empcode = '1000';


create table archive(empcode int, empname varchar(50));


delimiter //
create trigger before_delete before delete on emp
for each row
insert into archive(empcode, empname) values
(old.empcode, old.empname); //
delimiter ;

set foreign_key_checks = 0;

delete from emp where empcode = '6569';

select * from archive;

delimiter //
create trigger after_delete after delete
on emp for each row
update average_age set average = (select 
avg(timestampdiff(year,birthdate,curdate())) from emp); //
delimiter ;

select * from emp;

delete from emp where empcode = '1000';

select * from average_age;


























