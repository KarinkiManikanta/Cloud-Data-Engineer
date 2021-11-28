-- Databricks notebook source
-- A SQL Join statement is used to combine data or rows from two or more tables based on a common field between them. Different types of Joins are:
                                --INNER JOIN
                                --LEFT JOIN
                                --RIGHT JOIN
                                --FULL JOIN
                                --Self JOIN

-- COMMAND ----------

show databases;
--use mani;
--show tables;

-- COMMAND ----------

create database manikanta;

-- COMMAND ----------

show databases;

-- COMMAND ----------

use manikanta;

-- COMMAND ----------

-- Creating the Student table
create table student_table(id int,name varchar(20),age int);

-- Crearting the marks table
create table marks_table(id int,marks int, ranks int);

-- Create sport table
create table sports_table(id int,sports varchar(20));

-- create ncc_nss_table
create table ncc_nss_table(id int,nss_ncc varchar(20));

-- COMMAND ----------

show tables;

-- COMMAND ----------

-- Insert into the values in student_table
insert into student_table(id,name,age)values(1,'student1',18),
											(2,'student2',19),
                                            (3,'student3',18),
                                            (4,'student4',20),
                                            (5,'student5',19),
                                            (6,'student6',20),
                                            (7,'student7',21),
                                            (8,'student8',22),
                                            (9,'student9',21),
                                            (10,'student10',22);
select * from student_table;
    

-- COMMAND ----------

-- Insert values into the marks_table 
insert into marks_table(id,marks,ranks)values(1,56,8),
											 (2,85,4),
                                             (3,95,2),
                                             (4,65,7),
                                             (5,97,1),
                                             (6,88,3),
                                             (7,45,9),
                                             (8,74,5),
                                             (9,77,6),
                                             (10,43,10);
                                             
select * from marks_table;

-- COMMAND ----------

-- insert the sprots_table information
insert into sports_table(id,sports)values(1,'cricket'),
                                         (3,'volleyball'),
                                         (5,'basketball'),
                                         (6,'cricket'),
                                         (7,'volleyball'),
                                         (10,'basketball');

select * from sports_table;

-- COMMAND ----------

-- insert into the data in nss_ncc_table
insert into ncc_nss_table(id,nss_ncc)values(1,'ncc'),
                                           (2,'nss'),
                                           (3,'ncc'),
                                           (6,'nss'),
                                           (8,'nss'),
                                           (10,'ncc');

select * from ncc_nss_table;

-- COMMAND ----------

-- (INNER) JOIN: Returns records that have matching values in both tables.
-- It display the all the information about the two(student & marks ) table if you are using *
select * from  student_table as t1 
inner join
marks_table as t2
on 
t1.id=t2.id;

-- COMMAND ----------

-- If you want the particular column in the two(student & marks ) tables applying the innser join
select t1.id,t1.name,t1.age,t2.marks,t2.ranks from 
student_table as t1
inner join
marks_table as t2
on
t1.id=t2.id;


-- COMMAND ----------

-- Inner joins in student table and sports table information about the two tables.

select * from  student_table as t1
inner join
sports_table t2
on
t1.id=t2.id;






-- COMMAND ----------

-- if you want the particular column information in  two tables using inner join is.
select t1.id,t1.name,t1.age,t2.sports from
student_table as t1
inner join
sports_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

-- Inner join in ncc_nss tables and sports tables
select * from sports_table as t1
inner join
ncc_nss_table  as t2
on
t1.id=t2.id;



-- COMMAND ----------

select t1.id,t1.sports,t2.nss_ncc from sports_table as t1
inner join
ncc_nss_table  as t2
on
t1.id=t2.id;

-- COMMAND ----------

-- LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
select * from student_table as t1
left join
ncc_nss_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

-- you want the spcific fields in existing tables
select t1.id,t1.name,t2.nss_ncc from student_table as t1
left join
ncc_nss_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

select * from ncc_nss_table as t1
left join
sports_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

-- RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
select * from student_table as t1
Right join
ncc_nss_table as t2
on
t1.id=t2.id;


-- COMMAND ----------

select * from ncc_nss_table as t1
right join
sports_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

-- FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
select * from student_table as t1
Full outer join
marks_table as t2
on
t1.id=t2.id;


-- COMMAND ----------

select t1.id,t1.name,t2.marks,t2.ranks from student_table as t1
Full outer join
marks_table as t2
on
t1.id=t2.id;

-- COMMAND ----------

select * from student_table;

-- COMMAND ----------

show tables;

-- COMMAND ----------

--SQL Self Join :A self join is a regular join, but the table is joined with itself.
select * from 
student_table  as t1
inner join
student_table as t2
on
t1.age < t2.age

-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------

-- create new table of student
create table student(id int, name varchar(20), age int, marks int);


-- COMMAND ----------

insert into student(id,name,age,marks)values(1,'student1',25,68),
                                            (2,'student2',21,78),
                                            (3,'student3',22,95),
                                            (4,'student4',24,65),
                                            (5,'student5',25,96),
                                            (6,'student6',22,75),
                                            (7,'student7',20,91),
                                            (8,'student8',26,55),
                                            (9,'student9',24,46),
                                            (10,'student10',26,35);

-- COMMAND ----------


