use dac_dbt_2022;


create table course(
course_id int primary key,
course_name varchar(20));


start transaction;

insert into course(course_id, course_name)
values (1, 'DBT'), (2, 'OS'), (3, 'JAVA'), (4, 'DATA STRUCTURE');
savepoint insertion;
delete from course where course_id = 1;
delete from course where course_id = 2;
savepoint deletion;
select * from course;
rollback to insertion;

insert into course(course_id, course_name) values (5, 'ALGORITHMS');

rollback to insertion;

rollback;









