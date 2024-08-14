# ASSIGNMENT 2
# 	Activity 1: Create a table STUDENT with under mentioned structure by using SQL Statement
USE assignment4;
create table student4(
StdID int,
StdName varchar(50),
Sex varchar(10),
Percentage int,
Class int,
Sec varchar(10),
Stream varchar(20),
birth_date DATE
);
select * from student4;
insert into student4(StdID,StdName,Sex,Percentage,Class,Sec,Stream,birth_date) values(1001,'AKSHRA AGRAWAL','FEMALE',70,11,'A','Science','1996-11-10');
insert into student4(StdID,StdName,Sex,Percentage,Class,Sec,Stream,birth_date) VALUES(1002,'ANJALI SHARMA','FEMALE',75,11,'A','Commerce','1996-09-18'),(1003,'ANSHUL SAXENA','MALE',
78,11,'A','Commerce','1996-11-19');
select * from student4;
insert into student4(StdID,StdName,Sex,Percentage,Class,Sec,Stream,birth_date) values(1004,'AISHWARYA SINGH','FEMALE',79,11,'A','Commerce','1996-11-1'),(1005,'AKRITI SAXENA',
'FEMALE',76,11,'A','Commerce','1996-09-20'),(1006,'KHUSHI AGARWAL','FEMALE',77,11,'A','Commerce','2003-09-14'),(1007,'MAAHI AGARWAL','FEMALE',74,11,'A','Science','1997-04-21'),(1008,'MITALI GUPTA',
'FEMALE',78,12,'A','Science','1997-11-26'),(1009,'NIKUNJ AGARWAL','MALE',58,12,'A','Science','1997-7-12'),(1010,'PARKHI','FEMALE',59,12,'A','Commerce','1997-12-20'),(1011,
'PRAKHAR TIWARI','MALE',43,12,'A','Science','1997-04-22'),(1012,'RAGHAV GANGWAR','MALE',58,12,'A','Commerce','1997-12-21'),(1013,'SAHIL SARASWAT','MALE',57,12,'A','Commerce','1997-08-13'),
(1014,'SWATI MISHRA','FEMALE',98,11,'A','Science','1996-08-13'),(1015,'HARSH AGARWAL','MALE',58,11,'B','Science','2003-08-28'),(1016,'HARSHIT KUMAR','MALE',98,11,'B','Science','2003-05-22'),
(1017,'JAHANVI KAPOOR','MALE',65,11,'B','Science','1997-1-10'),(1018,'STUTI MISHRA','MALE',66,11,'C','Commerce','1996-1-10'),(1019,'SURYANSH KUMAR AGARWAL','MALE',85,11,'C','Commerce','2007-08-22'),
(1020,'TANI RASTOGI','FEMALE',75,12,'C','Commerce','1998-01-15'),(1021,'TANISHK GUPTA','MALE',55,12,'C','Science','1998-4-11'),(1022,'TANMAY AGRAWAL','MALE',57,11,'C','Commerce',
'1998-06-28'),(1023,'YASH SAXENA','MALE',79,11,'C','Science','1998-3-13'),(1024,'YESH DUBEY','MALE',85,12,'C','Commerce','1998-4-3');
select * from student4;
update student4
set Stream='Science'
where StdID=1009;

# Activity 2: Open school database, then select student table and use following SQL statements.

# 1.To display all the records form STUDENT table.
select * from student4;

# 2.To display only name and date of birth from the table.
select StdName,birth_date from student4;

# 3.To display all student’s record where percentage is greater of equal to 80 FROM student table.;
select * from student4
where percentage>=80;

# 4.To display student name, stream and percentage where percentage of student is more than 80.
select StdName,Stream,Percentage from student4
where percentage >80;

# 5.To display all records of science students whose percentage is more than 75 form student table.
select * from student4
where Stream='Science' and percentage>75;

# Activity 3: Open school database, then select student table and use following SQL statements.
# 1.To display the STUDENT table structure.
select * from student4;

# 2.To add a column (FIELD)in the STUDENT table, for example TeacherID as VARCHAR(20)

alter table student4
add TeacherID varchar(20);
select * from student4;

# 5.To modify the TeacherID data type form character to integer.
alter table student4
modify TeacherID int;
select * from student4;

# Activity 4

# 1.To Drop (Delete) a field form a table. For e.g you want to delete TeacherID field.
alter table student4
drop column TeacherID;
select * from student4;

# 2.To subtract 5 form all students percentage and display name and percentage. 
select StdID,StdName,Sex,Percentage-5,Class,Sec,Stream,birth_date from student4;

# 3. Using column alias for example we want to display StdName as Student Name and DOB as Date of Birth then the statement will be.
select StdId,StdName as 'Student Name',Sex,Percentage,Class,sec,Stream,birth_date as 'Date of Birth' from student4;

# 4.Display the name of all students whose stream is not Science.
select * from student4
where Stream!='Science';

# 5.Display all name and percentage where percentage is between 60 and 80.
select StdName,Percentage from student4
where Percentage between 60 and 80;

# Activity 5:
# 1.To change a student name from SWATIMISHRA to SWATIVERMA whose StdID is 1014 and also change percentage 86.
select * from student4;
update student4
Set StdName ="SWATIVERMA",Percentage=86
where StdID =1014;

# 2.To delete the records form student table where StdId is 1016.
delete from student4
where StdID=1016;

#3.Type the following SQL statement and note the output.
# SELECT * FROM Student WHERE StdName LIKE 'G_';
select * from student4
where binary StdName like 'a_%';

# SELECT * FROM Student WHERE StdName='G';
select * from student4
where binary StdName like  'G_%';
#(no result found)

# SELECT * FROM Student WHERE StdName LIKE 'G%';
select * from student4
where StdName like 'G%';
#(no result found)

# SELECT * WHERE Student WHERE StdName='%G%';
select * from student4
where StdName like '%G%';

# 4.Display all the streams in student table.
select Stream from student4;

# 5. Note the output of the following statement.
# SELECT StdName, Sex, Stream FROM Student WHERE percentage BETWEEN 70 AND 80;
SELECT StdName, Sex, Stream,Percentage FROM Student4
WHERE percentage BETWEEN 70 AND 80;





# Create a Table Empl to store employee details as shown below and write statements for following queries based on the table.

create table employee(
empno int,
ename varchar(10),
job varchar(15),
mgr int,
hiredate date,
sal int,
comm int null,
deptno int
);
select * from employee;
insert into employee(empno,ename,job,mgr,hiredate,sal,comm,deptno)values(8369,'SMITH','CLERK',8902,'1990-12-18',800,NULL,20),(8499,'ANYA','SALESMAN',8698,'1991-02-20',1600,300,30),
(8521,'SETH','SALESMAN',8698,'1991-02-22',1250,500,30),(8566,'MAHADEVAN','MANAGER',8839,'1991-04-02',2985,NULL,20),(8654,'MOMIN','SALESMAN',8698,
'1991-09-28',1250,1400,30),(8698,'BINA','MANAGER',8839,'1991-05-01',2850,NULL,30),(8882,'SHIVANSH','MANAGER',8839,'1991-06-09',2450,NULL,10),(
8888,'SCOTT','ANALYST',8566,'1992-12-09',3000,NULL,20),(8839,'AMIR','PRESIDENT',NULL,'1991-11-18',5000,NULL,10),(8844,'KULDEEP','SALESMAN',8698,
'1991-09-08',1500,0,30);
SELECT * FROM EMPLOYEE;

# 1. Consider the Empl table and write SQL command to get the following.

# a. Write a query to display EName and Sal of employees whose salary are greater than or equal to 2200?
select ename,sal from employee
where sal>=2200;

# b. Write a query to display details of employs who are not getting commission?
select * from employee
where comm is null;

# c.Write a query to display employee name and salary of those employees who don’t have their salary in range of 2500 to 4000?
select ename,sal from employee
where sal not between 2500 and 4000;

# d.Write a query to display the name, job title and salary of employees who don’t have manager?
select ename,job,sal from employee
where job !='manager'; 

# e.Write a query to display the name of employee whose name contains “A” as third alphabet?

select * from employee
where ename like '__a%' ;
# no result found 

# f.Write a query to display the name of employee whose name contains “T” as last alphabet?
select * from employee
where ename like '%t';

# g.Write a query to display the name of employee whose name contains ”M” as First and “L” as third alphabet?
select * from employee
where ename like 'm%l';
# no result found

# h.Write a query to display details of employs with the text “Not given”, if commission is null?
# wrong question






