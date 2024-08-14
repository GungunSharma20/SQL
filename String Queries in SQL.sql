# ASSIGNMENT 3 
# Table 1 = Worker4
create database data1;
use data1;
create table Worker4(
Worker_Id int not null ,
first_name varchar(20),
Last_name varchar(10),
salary int not null,
Joining_date datetime not null,
Department varchar(10)
);
insert into Worker4(Worker_id,first_name,Last_name,salary,joining_date,Department) values(001,'Monika','Arora',100000,'2021-02-20 09:00:00','HR');
select * from Worker4;
insert into  worker4(Worker_id,first_name,Last_name,salary,joining_date,Department) values(002,'Niharika','Verma',80000,'2021-06-11 09:00:00','Admin'),(003,'Vishal','Singhal',300000,'2021-02-20 09:00:00','HR'),
(004,'Amitabh','Singh',500000,'2021-02-20 09:00:00','Admin'),(005,'Vivek','Bhati',500000,'2021-06-11 09:00:00','Admin'),(006,'Vipul','Diman',200000,'2021-06-11 09:00:00','Account'),(007,'Satish','Kumar',75000,'2021-01-20 09:00:00',
'Account'),(008,'Geetika','Chauhan',90000,'2021-04-11 09:00:00','Admin');
select * from Worker4;

# table 2= Bonus 
create table Bonus(
Worker_Ref_Id int not null,
Bonus_Date datetime not null,
Bonus_Amount int not null
);
select * from Bonus;
insert into Bonus(Worker_ref_Id,Bonus_Date,Bonus_Amount) values(1,'2023-02-20 00:00:00',5000),(2,'2023-06-11 00:00:00',3000),(3,'2023-02-20 00:00:00',4000),(1,'2023-02-20 00:00:00',4500),
(2,'2023-06-11 00:00:00',3500);
select * from Bonus;

# Table 3= Title
create table Title(
Worker_ref_Id int not null,
Worker_Title varchar(20),
Affected_From datetime not null
);
insert into Title(Worker_ref_Id,Worker_Title,Affected_From) values(1,"Manager",'2023-02-20 00:00:00'),(2,"Executive",'2023-06-11 00:00:00'),(8,"Executive",'2023-06-11 00:00:00'),
(5,'Manager','2023-06-11 00:00:00');
select * from Title;
# QUESTION =1 Write an SQL query to fetch "First_Name" from the Worker table using the alias name< Worker_Name>.
select First_Name as Worker_Name from Worker4;

# QUESTION=2 Write an SQl query to fetch "First_Name" from the worker table in upper case.
select upper(Department) as DEPARTMENT from Worker4;

# QUESTION=3 Write an SQl query to fetch unique values of DEPARTMENT from the worker table.
select Distinct(DEPARTMENT) from Worker4;

# QUESTION=4 Write an SQL query to print the first three charcters of first_name from the worker table.
select substring('First_Name',1,3) as result;

# QUESTION=5 Write an SQL query to find the position of the alphabet ('a') in the first_name coulmn 'Amitabh' from the Worker table.
select str(First_Name,Binary'a') from Worker4
where First_Name ='Amitabh';

# QUESTION=6 Write an SQL query to print the First_Name from the worker table after removing white spaces from the right side.
select rtrim(First_Name) from Worker4; 

# QUESTION=7 Write an SQL query to print the Department from the worker table after removing white spaces from the left side.
select ltrim(First_Name) from Worker4; 


# QUESTION =8 Write an SQl query that fetches the unique values of Department from the worker table and prints its length
 select distinct(length(Department)) from worker4;
 
 # QUESTION=9 Write an SQl query to print the First_name from the worker table after replacing 'a' with 'A'.
 select replace("First_Name","a","A") from Worker4;
 
 # QUESTION=10 Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
 select concat(First_Name," ",Last_Name) from worker4; 
 
# QUESTION=11 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker4
order by First_Name asc;

# QUESTION=12 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker4
order by First_Name asc;

select * from Worker4
order by Department desc;


# QUESTION=13 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select * from Worker4
where Worker_Id in (6,7);

# QUESTION=14 Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
select * from worker4
where Worker_Id  not in (6,7);

# QUESTION=15 Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from Worker4
where Department = "Admin";

# QUESTION=16 Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from Worker4
where First_Name like "a%";

# QUESTION=17  Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’. 
select * from Worker4
where First_Name like "%a";

# QUESTION =18  Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
 select * from Worker4
 where First_Name like "%h"
 and length(First_Name)=6;
 
 # QUESTION=19 Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
 select * from Worker4
 where salary between 100000 and 500000;
 
 # QUESTION=20 Write an SQL query to print details of the Workers who joined in Feb 2021.
 select * from worker4
 where Joining_date ='2021-02-20 09:00:00';
 
 # QUESTION=21 Write an SQL query to fetch the count of employees working in the department ‘Admin’.
 select count(Department) like "Admin" from worker4;


