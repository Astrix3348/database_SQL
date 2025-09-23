use dac_dbt_2022;

create table newCourse(course_id int primary key,
course_name varchar(20));

start transaction;

insert into newCourse(course_id,course_name)
values (1,"DBT"),(2,"OS"),(3,"JAVA"),(4,"DSA");

savepoint insertion;

delete from newCourse where course_name = "DBT";
delete from newCourse where course_name = "JAVA";
savepoint deletion;

select * from newCourse;

rollback to deletion;

insert into newCourse(course_id, course_name) values (5, "Algo");

rollback to insertion;
rollback;
