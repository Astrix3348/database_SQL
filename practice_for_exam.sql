create database practice;
use practice;

create table book(book_id int primary key,
title varchar(20),
mrp float,
publisher varchar(30));

create table author(a_id int,
name varchar(20),
gender varchar(20),
nationality varchar(30),
book_id int,
foreign key (book_id) references book(book_id));

insert into book (book_id, title, mrp, publisher) values
(1, 'The Silent River', 5000.50, 'HarperCollins'),
(2, 'Whispers of Time', 250.00, 'Penguin Random House'),
(3, 'Journey Beyond', 499.99, 'Oxford Press'),
(4, 'Coded Dreams', 320.75, 'McGraw Hill'),
(5, 'Lost Horizons', 275.25, 'Rupa Publications'),
(6, 'Infinite Skies', 350.00, 'Pearson'),
(7, 'Mind over Matter', 410.10, 'Wiley'),
(8, 'Shadows and Light', 290.00, 'Bloomsbury'),
(9, 'The Last Oracle', 450.50, 'Vintage'),
(10,'Echoes of Dawn', 300.00, 'Hachette');

truncate book;
set foreign_key_checks = 0;

-- Insert records into author
insert into author (a_id, name, gender, nationality, book_id) values
(101, 'Aarav Mehta', 'Male', 'Indian', 1),
(102, 'Sophia Carter', 'Female', 'British', 2),
(103, 'Kenji Sato', 'Male', 'Japanese', 3),
(104, 'Maria Lopez', 'Female', 'Spanish', 4),
(105, 'Omar Hassan', 'Male', 'Egyptian', 5),
(106, 'Elena Rossi', 'Female', 'Italian', 6),
(107, 'David Miller', 'Male', 'American', 7),
(108, 'Hannah Schmidt', 'Female', 'German', 8),
(109, 'Li Wei', 'Male', 'Chinese', 9),
(110, 'Isabella Silva', 'Female', 'Brazilian', 10);

-- Q1
select * from book order by mrp desc;

-- Q2
select * from book where (title) like "t%";

-- Q3
select count(*) from book;

-- Q4
select distinct publisher from book;

-- Q5
select count(*) from book where publisher in ("Wiley", "Vintage");

-- Q6
select a_id, name from author where (name) like "%an%"
or (name) like "%er";

-- Q7
select * from author where nationality in ("Indian", "American")
and gender = "Male";

-- Q8
select publisher, max(mrp) from book 
group by publisher;

-- Q9
select publisher, count(title) from book 
group by publisher;

-- Q10
select publisher, avg(mrp), count(*) from book 
group by publisher 
having avg(mrp) > 300;

-- Q11
select nationality, count(*) from author 
group by nationality;

-- Q12
select a.name, a.nationality, b.title from author a join book b
on a.book_id = b.book_id;

-- Q13
select * from book where mrp >
(select mrp from book where publisher = "Pearson");













