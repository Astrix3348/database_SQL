show databases;
use new;

create table employees(id int primary key,
name varchar(20),
dept varchar(20));

alter table employees add salary float;

select * from employees;
select distinct dept from employees;

delete from employees where id>0;

insert into employees(id, name, dept, salary) values 
(1, 'Aakash', 'SDE', 200000), (2, 'Pranay', 'SDE', 30000),
(3, 'Aaryan', 'Analyst', 500000);

select * from employees order by salary;

select * from employees where salary>10000 and 
name like '%h';

select * from employees where dept = 'SDE'
or dept = 'analyst';

select * from employees where not dept = 'SDE';

INSERT INTO employees(id, name, dept, salary) VALUES
(4, 'Riya', 'HR', 45000),
(5, 'Karan', 'SDE', 75000),
(6, 'Meena', 'Analyst', 62000),
(7, 'Dev', 'SDE', 88000),
(8, 'Sneha', 'HR', 51000),
(9, 'Arjun', 'SDE', 99000),
(10, 'Tanya', 'Analyst', 67000),
(11, 'Rohit', 'SDE', 72000),
(12, 'Neha', 'HR', 48000),
(13, 'Vikram', 'SDE', 81000),
(14, 'Isha', 'Analyst', 59000),
(15, 'Amit', 'SDE', 93000),
(16, 'Pooja', 'HR', 47000),
(17, 'Sahil', 'SDE', 86000),
(18, 'Divya', 'Analyst', 61000),
(19, 'Kabir', 'SDE', 94000),
(20, 'Anjali', 'HR', 53000),
(21, 'Nikhil', 'SDE', 97000),
(22, 'Simran', 'Analyst', 60000),
(23, 'Yash', 'SDE', 89000),
(24, 'Kavya', 'HR', 52000),
(25, 'Manav', 'SDE', 91000),
(26, 'Ritika', 'Analyst', 58000),
(27, 'Harsh', 'SDE', 96000),
(28, 'Priya', 'HR', 50000),
(29, 'Aditya', 'SDE', 87000),
(30, 'Naina', 'Analyst', 64000),
(31, 'Raj', 'SDE', 92000),
(32, 'Shruti', 'HR', 49000),
(33, 'Varun', 'SDE', 98000),
(34, 'Ayesha', 'Analyst', 63000),
(35, 'Kunal', 'SDE', 95000),
(36, 'Bhavna', 'HR', 54000),
(37, 'Abhay', 'SDE', 90000),
(38, 'Jaya', 'Analyst', 66000),
(39, 'Tarun', 'SDE', 74000),
(40, 'Rekha', 'HR', 46000),
(41, 'Om', 'SDE', 82000),
(42, 'Nidhi', 'Analyst', 65000),
(43, 'Ramesh', 'SDE', 88000),
(44, 'Sana', 'HR', 55000),
(45, 'Deepak', 'SDE', 93000),
(46, 'Lavanya', 'Analyst', 61000),
(47, 'Jay', 'SDE', 97000),
(48, 'Megha', 'HR', 52000),
(49, 'Arav', 'SDE', 91000),
(50, 'Ira', 'Analyst', 60000),
(51, 'Nitin', 'SDE', 94000),
(52, 'Tara', 'HR', 48000),
(53, 'Rajat', 'SDE', 89000),
(54, 'Ananya', 'Analyst', 67000),
(55, 'Suresh', 'SDE', 92000),
(56, 'Diya', 'HR', 51000),
(57, 'Mohit', 'SDE', 96000),
(58, 'Kritika', 'Analyst', 58000),
(59, 'Akhil', 'SDE', 87000),
(60, 'Shreya', 'HR', 50000),
(61, 'Parth', 'SDE', 93000),
(62, 'Roshni', 'Analyst', 64000),
(63, 'Vivek', 'SDE', 91000),
(64, 'Maya', 'HR', 47000),
(65, 'Ankur', 'SDE', 98000),
(66, 'Nisha', 'Analyst', 63000),
(67, 'Ravi', 'SDE', 95000),
(68, 'Komal', 'HR', 54000),
(69, 'Tushar', 'SDE', 90000),
(70, 'Pallavi', 'Analyst', 66000),
(71, 'Aman', 'SDE', 74000),
(72, 'Snehal', 'HR', 46000),
(73, 'Dhruv', 'SDE', 82000),
(74, 'Renu', 'Analyst', 65000),
(75, 'Keshav', 'SDE', 88000),
(76, 'Neelam', 'HR', 55000),
(77, 'Harshit', 'SDE', 93000),
(78, 'Tanvi', 'Analyst', 61000),
(79, 'Laksh', 'SDE', 97000),
(80, 'Bhavya', 'HR', 52000),
(81, 'Aryan', 'SDE', 91000),
(82, 'Vidya', 'Analyst', 60000),
(83, 'Raghav', 'SDE', 94000),
(84, 'Chitra', 'HR', 48000),
(85, 'Siddharth', 'SDE', 89000),
(86, 'Aparna', 'Analyst', 67000),
(87, 'Prateek', 'SDE', 92000),
(88, 'Nandini', 'HR', 51000),
(89, 'Devansh', 'SDE', 96000),
(90, 'Ishita', 'Analyst', 58000),
(91, 'Samarth', 'SDE', 87000),
(92, 'Payal', 'HR', 50000),
(93, 'Yuvraj', 'SDE', 93000),
(94, 'Ritika', 'Analyst', 64000),
(95, 'Kartik', 'SDE', 91000),
(96, 'Aarushi', 'HR', 47000),
(97, 'Hrithik', 'SDE', 98000),
(98, 'Sakshi', 'Analyst', 63000),
(99, 'Naveen', 'SDE', 95000),
(100, 'Amrita', 'HR', 54000),
(101, 'Rohan', 'SDE', 90000),
(102, 'Mahima', 'Analyst', 66000),
(103, 'Tejas', 'SDE', 74000);

select * from employees where name like '%h';

select * from employees where id between 10 and 20;

select * from employees where dept not in ('sde', 'analyst');

update employees set name = 'raj', salary = 22000 
where id = 8;

select * from employees where id = 8;

delete from employees where id = 8;

select max(salary) as maximum, name, id from employees
group by name, id;

select count(salary) from employees where salary>50000;

select count(distinct name) from employees;

select sum(salary) from employees;

create table department(
deptName varchar(20),
deptCode varchar(20) primary key);



INSERT INTO department(deptName, deptCode) VALUES
('Software Development', 'SDE'),
('Human Resources', 'HR'),
('Data Analysis', 'Analyst');

select * from department;

alter table employees add constraint fk_dept 
foreign key (dept) references department(deptCode);

select name, salary, dept, deptName from employees, department where department.deptCode = employees.dept;

alter table employees add email varchar(20), add birthdate varchar(20);
alter table employees drop column email;
alter table employees add email varchar(100);

UPDATE employees SET email = 'aakash.sde@example.com', birthdate = '1995-03-12' WHERE id = 1;
UPDATE employees SET email = 'pranay.sde@example.com', birthdate = '1994-07-25' WHERE id = 2;
UPDATE employees SET email = 'aaryan.analyst@example.com', birthdate = '1996-11-08' WHERE id = 3;
UPDATE employees SET email = 'riya.hr@example.com', birthdate = '1993-05-17' WHERE id = 4;
UPDATE employees SET email = 'karan.sde@example.com', birthdate = '1992-09-30' WHERE id = 5;
UPDATE employees SET email = 'meena.analyst@example.com', birthdate = '1990-12-22' WHERE id = 6;
UPDATE employees SET email = 'dev.sde@example.com', birthdate = '1997-04-03' WHERE id = 7;
UPDATE employees SET email = 'sneha.hr@example.com', birthdate = '1991-06-14' WHERE id = 8;
UPDATE employees SET email = 'arjun.sde@example.com', birthdate = '1995-10-19' WHERE id = 9;
UPDATE employees SET email = 'tanya.analyst@example.com', birthdate = '1993-01-27' WHERE id = 10;
UPDATE employees SET email = 'rohit.sde@example.com', birthdate = '1992-08-15' WHERE id = 11;
UPDATE employees SET email = 'neha.hr@example.com', birthdate = '1994-02-28' WHERE id = 12;
UPDATE employees SET email = 'vikram.sde@example.com', birthdate = '1991-06-10' WHERE id = 13;
UPDATE employees SET email = 'isha.analyst@example.com', birthdate = '1993-12-05' WHERE id = 14;
UPDATE employees SET email = 'amit.sde@example.com', birthdate = '1990-09-21' WHERE id = 15;
UPDATE employees SET email = 'pooja.hr@example.com', birthdate = '1995-04-18' WHERE id = 16;
UPDATE employees SET email = 'sahil.sde@example.com', birthdate = '1992-11-30' WHERE id = 17;
UPDATE employees SET email = 'divya.analyst@example.com', birthdate = '1996-07-07' WHERE id = 18;
UPDATE employees SET email = 'kabir.sde@example.com', birthdate = '1993-03-25' WHERE id = 19;
UPDATE employees SET email = 'anjali.hr@example.com', birthdate = '1991-10-12' WHERE id = 20;
UPDATE employees SET email = 'nikhil.sde@example.com', birthdate = '1994-06-01' WHERE id = 21;
UPDATE employees SET email = 'simran.analyst@example.com', birthdate = '1992-01-19' WHERE id = 22;
UPDATE employees SET email = 'yash.sde@example.com', birthdate = '1990-05-30' WHERE id = 23;
UPDATE employees SET email = 'kavya.hr@example.com', birthdate = '1995-09-09' WHERE id = 24;
UPDATE employees SET email = 'manav.sde@example.com', birthdate = '1993-07-14' WHERE id = 25;
UPDATE employees SET email = 'ritika.analyst@example.com', birthdate = '1996-02-03' WHERE id = 26;
UPDATE employees SET email = 'harsh.sde@example.com', birthdate = '1991-11-11' WHERE id = 27;
UPDATE employees SET email = 'priya.hr@example.com', birthdate = '1990-08-22' WHERE id = 28;
UPDATE employees SET email = 'aditya.sde@example.com', birthdate = '1994-04-04' WHERE id = 29;
UPDATE employees SET email = 'naina.analyst@example.com', birthdate = '1992-12-16' WHERE id = 30;
UPDATE employees SET email = 'raj.sde@example.com', birthdate = '1991-03-05' WHERE id = 31;
UPDATE employees SET email = 'shruti.hr@example.com', birthdate = '1992-07-22' WHERE id = 32;
UPDATE employees SET email = 'varun.sde@example.com', birthdate = '1994-10-11' WHERE id = 33;
UPDATE employees SET email = 'ayesha.analyst@example.com', birthdate = '1993-01-03' WHERE id = 34;
UPDATE employees SET email = 'kunal.sde@example.com', birthdate = '1990-06-26' WHERE id = 35;
UPDATE employees SET email = 'bhavna.hr@example.com', birthdate = '1995-08-19' WHERE id = 36;
UPDATE employees SET email = 'abhay.sde@example.com', birthdate = '1992-12-09' WHERE id = 37;
UPDATE employees SET email = 'jaya.analyst@example.com', birthdate = '1991-04-14' WHERE id = 38;
UPDATE employees SET email = 'tarun.sde@example.com', birthdate = '1993-09-01' WHERE id = 39;
UPDATE employees SET email = 'rekha.hr@example.com', birthdate = '1990-11-23' WHERE id = 40;
UPDATE employees SET email = 'om.sde@example.com', birthdate = '1994-02-15' WHERE id = 41;
UPDATE employees SET email = 'nidhi.analyst@example.com', birthdate = '1992-05-07' WHERE id = 42;
UPDATE employees SET email = 'ramesh.sde@example.com', birthdate = '1991-08-28' WHERE id = 43;
UPDATE employees SET email = 'sana.hr@example.com', birthdate = '1995-03-17' WHERE id = 44;
UPDATE employees SET email = 'deepak.sde@example.com', birthdate = '1990-07-04' WHERE id = 45;
UPDATE employees SET email = 'lavanya.analyst@example.com', birthdate = '1993-10-30' WHERE id = 46;
UPDATE employees SET email = 'jay.sde@example.com', birthdate = '1992-01-12' WHERE id = 47;
UPDATE employees SET email = 'megha.hr@example.com', birthdate = '1994-06-20' WHERE id = 48;
UPDATE employees SET email = 'arav.sde@example.com', birthdate = '1991-09-25' WHERE id = 49;
UPDATE employees SET email = 'ira.analyst@example.com', birthdate = '1990-12-31' WHERE id = 50;
UPDATE employees SET email = 'nitin.sde@example.com', birthdate = '1993-05-10' WHERE id = 51;
UPDATE employees SET email = 'tara.hr@example.com', birthdate = '1992-08-03' WHERE id = 52;
UPDATE employees SET email = 'rajat.sde@example.com', birthdate = '1994-11-14' WHERE id = 53;
UPDATE employees SET email = 'ananya.analyst@example.com', birthdate = '1991-02-06' WHERE id = 54;
UPDATE employees SET email = 'suresh.sde@example.com', birthdate = '1990-04-29' WHERE id = 55;
UPDATE employees SET email = 'diya.hr@example.com', birthdate = '1995-07-16' WHERE id = 56;
UPDATE employees SET email = 'mohit.sde@example.com', birthdate = '1992-10-08' WHERE id = 57;
UPDATE employees SET email = 'kritika.analyst@example.com', birthdate = '1993-01-21' WHERE id = 58;
UPDATE employees SET email = 'akhil.sde@example.com', birthdate = '1990-06-02' WHERE id = 59;
UPDATE employees SET email = 'shreya.hr@example.com', birthdate = '1994-09-13' WHERE id = 60;
UPDATE employees SET email = 'parth.sde@example.com', birthdate = '1991-12-27' WHERE id = 61;
UPDATE employees SET email = 'roshni.analyst@example.com', birthdate = '1992-03-09' WHERE id = 62;
UPDATE employees SET email = 'vivek.sde@example.com', birthdate = '1993-07-01' WHERE id = 63;
UPDATE employees SET email = 'maya.hr@example.com', birthdate = '1990-11-05' WHERE id = 64;
UPDATE employees SET email = 'ankur.sde@example.com', birthdate = '1994-01-18' WHERE id = 65;
UPDATE employees SET email = 'nisha.analyst@example.com', birthdate = '1991-05-24' WHERE id = 66;
UPDATE employees SET email = 'ravi.sde@example.com', birthdate = '1992-08-30' WHERE id = 67;
UPDATE employees SET email = 'komal.hr@example.com', birthdate = '1995-10-02' WHERE id = 68;
UPDATE employees SET email = 'tushar.sde@example.com', birthdate = '1990-03-14' WHERE id = 69;
UPDATE employees SET email = 'pallavi.analyst@example.com', birthdate = '1993-06-06' WHERE id = 70;
UPDATE employees SET email = 'aman.sde@example.com', birthdate = '1992-09-19' WHERE id = 71;
UPDATE employees SET email = 'snehal.hr@example.com', birthdate = '1991-12-01' WHERE id = 72;
UPDATE employees SET email = 'dhruv.sde@example.com', birthdate = '1994-04-25' WHERE id = 73;
UPDATE employees SET email = 'renu.analyst@example.com', birthdate = '1990-07-29' WHERE id = 74;
UPDATE employees SET email = 'keshav.sde@example.com', birthdate = '1993-10-16' WHERE id = 75;
UPDATE employees SET email = 'neelam.hr@example.com', birthdate = '1992-02-20' WHERE id = 76;
UPDATE employees SET email = 'harshit.sde@example.com', birthdate = '1991-06-08' WHERE id = 77;
UPDATE employees SET email = 'tanvi.analyst@example.com', birthdate = '1994-09-27' WHERE id = 78;
UPDATE employees SET email = 'laksh.sde@example.com', birthdate = '1990-12-13' WHERE id = 79;
UPDATE employees SET email = 'bhavya.hr@example.com', birthdate = '1993-03-01' WHERE id = 80;
UPDATE employees SET email = 'aryan.sde@example.com', birthdate = '1992-07-11' WHERE id = 81;
UPDATE employees SET email = 'vidya.analyst@example.com', birthdate = '1991-10-06' WHERE id = 82;
UPDATE employees SET email = 'raghav.sde@example.com', birthdate = '1994-01-29' WHERE id = 83;
UPDATE employees SET email = 'chitra.hr@example.com', birthdate = '1990-05-12' WHERE id = 84;
UPDATE employees SET email = 'siddharth.sde@example.com', birthdate = '1993-08-23' WHERE id = 85;
UPDATE employees SET email = 'aparna.analyst@example.com', birthdate = '1992-11-17' WHERE id = 86;
UPDATE employees SET email = 'prateek.sde@example.com', birthdate = '1991-02-02' WHERE id = 87;
UPDATE employees SET email = 'nandini.hr@example.com', birthdate = '1994-06-30' WHERE id = 88;
UPDATE employees SET email = 'devansh.sde@example.com', birthdate = '1990-09-05' WHERE id = 89;
UPDATE employees SET email = 'ishita.analyst@example.com', birthdate = '1993-12-20' WHERE id = 90;
UPDATE employees SET email = 'samarth.sde@example.com', birthdate = '1992-03-27' WHERE id = 91;
UPDATE employees SET email = 'payal.hr@example.com', birthdate = '1991-08-01' WHERE id = 92;
UPDATE employees SET email = 'yuvraj.sde@example.com', birthdate = '1994-10-24' WHERE id = 93;
UPDATE employees SET email = 'ritika.analyst@example.com', birthdate = '1990-01-15' WHERE id = 94;
UPDATE employees SET email = 'kartik.sde@example.com', birthdate = '1993-05-28' WHERE id = 95;
UPDATE employees SET email = 'aakash.sde@example.com', birthdate = '1995-03-12' WHERE id = 96;
UPDATE employees SET email = 'pranay.sde@example.com', birthdate = '1994-07-25' WHERE id = 97;
UPDATE employees SET email = 'aaryan.analyst@example.com', birthdate = '1996-11-08' WHERE id = 98;
UPDATE employees SET email = 'riya.hr@example.com', birthdate = '1993-05-17' WHERE id = 99;
UPDATE employees SET email = 'karan.sde@example.com', birthdate = '1992-09-30' WHERE id = 100;
UPDATE employees SET email = 'meena.analyst@example.com', birthdate = '1990-12-22' WHERE id = 101;
UPDATE employees SET email = 'dev.sde@example.com', birthdate = '1997-04-03' WHERE id = 102;
UPDATE employees SET email = 'sneha.hr@example.com', birthdate = '1991-06-14' WHERE id = 103;
UPDATE employees SET email = 'arjun.sde@example.com', birthdate = '1995-10-19' WHERE id = 104;


select * from employees where salary>50000;









