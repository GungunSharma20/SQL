create database new_assignment4;
use new_assignment4;
create table customer2(
Customer_id int not null,
Cust_name varchar(50),
City varchar(20),
Grade int null,
Salesman_id int not null,
primary key(customer_id)
);
 insert into customer2(Customer_id,Cust_name,City,Grade,Salesman_id) values(3002,'Nick Rimando','New York',100,5001),(3007,'Brad Davis','New york',200,5001),(3005,'Graham Zusi',
 'California',200,5002),(3008,'Julian Green','London',300,5002),(3004,'Fabian Johnson','Paris',300,5006),(3009,'Geoff Cameron','Berlin',100,5003),(3003,'Jozy Altidor','Moscow',
 200,5007),(3001,'Brad Guzan','London',null,5005);
 select * from customer2;
 
 create table salesman1(
 Salesman_id int not null,
 Name varchar(20),
 City varchar(30),
 Commission float not null,
 primary key(Salesman_id)
 );
 
 insert into salesman1(Salesman_id,Name,City,Commission) values(5001,'James Hoog','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5005,'Pit Alex','London',0.11),
 (5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13),(5003,'Lauson Hen','San Jose',0.12);
 select * from salesman1;
 
 
 
create table Orders3(
Ord_no int not null,
Purch_amt float not null,
Ord_date date,
Customer_id int not null,
Salesman_id int,
primary key (Ord_no)
);

insert into Orders3(Ord_no,Purch_amt,Ord_date,Customer_id,salesman_id) values(70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),(70002,65.26,'2012-10-05',
3002,5001),(70004,110.5,'2012-08-17',3009,5003),(70007,948.5,'2012-09-10',3005,5002),(70005,2400.6,'2012-07-27','3007','5001'),(70008,5760,'2012-09-10',3002,5001),(70010,
1983.43,'2012-10-10',3004,5006),(70003,2480.4,'2012-10-10',3009,5003),(70012,250.45,'2012-06-27',3008,5002),(70011,75.29,'2012-08-17',3003,5007),(70013,3045.6,'2012-04-25',
3002,5001);
select * from Orders3;


# QUESTION=1  From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
select S.name as "Salesman",C.cust_name as "Customer_Name",C.city
from Salesman1 S
inner join customer2 C
on S.salesman_id=C.salesman_id
where S.city=C.city;

# QUESTION=2 From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
select O.ord_no, O.purch_amt,C.cust_name as"Customer_Name",C.city
from Customer2 C
inner join Orders3 O
on C.Salesman_id=O.salesman_id
where O.purch_amt between 500 and 2000;

# QUESTION=3 From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
select C.Cust_name as "Customer_Name",C.City,S.name as "Salesman",S.Commission
from Salesman1 S
inner join Customer2 C
on S.Salesman_id=C.Salesman_id;


# QUESTION=4 From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.
select C.cust_name as "Customer_name",C.city,S.name as "Salesman",S.commission
from Salesman1 S
inner join customer2 C
on S.salesman_id=C.salesman_id
where S.commission>0.12;

# QUESTION=5 From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company.
# Return Customer Name, customer city, Salesman, salesman city, commission.
select C.Cust_name as "Customer_Name",C.city,S.name as "Salesman",S.city as "Salesman_City",S.Commission
from Customer2 C
inner join Salesman1 S
on c.Salesman_id=S.Salesman_id
where S.commission>0.12 and S.city != C.city; 

# QUESTION=6 From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
select O.Ord_no,O.ord_date,O.purch_amt,C.cust_name,C.grade,S.name as "Salesman",S.commission 
from Orders3 O
inner join Customer2 C
on O.salesman_id=C.salesman_id
inner join Salesman1 S
on O.salesman_id=S.salesman_id;

# QUESTION=7 From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.
select C.Customer_id,C.Cust_name as "Customer_Name",C.city,C.grade,S.name as "Salesman_Name",S.City
from Customer2 C
inner join Salesman1 S 
on C.salesman_id=S.salesman_id
order by C.Customer_id asc; 

# QUESTION=8 From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.
select C.Customer_id,C.Cust_name as "Customer_Name",C.city,C.grade,S. name as "Salesman_name",S.city 
from customer2 C
left join Salesman1 S
on C.Salesman_id=S.salesman_id
where C.Grade<300
order by Customer_id asc;

# QUESTION=9 Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to 
# the order date to determine whether any of the existing customers have placed an order or not.
select C.Cust_name as"Customer_name",C.city,O.ord_no,O.ord_date,O.purch_amt
from Customer2 C
left join Orders3 O
on C.Salesman_id=O.salesman_id 
order by O.ord_date asc;

# QUESTION=10 Write a SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, 
# and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.
select c.cust_name as 'customer name',c.city as 'city', o.ord_no as 'order number', o.ord_date as 'order date', o.purch_amt as 'order amount', s.name as 'salesperson name',s.commission as 'commission'
from customer2 c
left join salesman1 s
on c.salesman_id = s.salesman_id
left join orders3 o
on c.salesman_id = o.salesman_id;

# QUESTION=11 Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.
select S.name as "Salesman_name"
from Salesman1 S
right join Customer2 C
on S.Salesman_id=C.Salesman_id
order by S.name asc;

# QUESTION=12 From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. Condition for selecting list of salesmen 
#: 1. Salesmen who works for one or more customer or, 2. Salesmen who not yet join under any customer, Condition for selecting list of customer :
# 3. placed one or more orders, or 4. no order placed to their salesman.
select S.name as "Salesman_name",C.cust_name as "Customer_name",C.city,C.grade,O.ord_no,O.ord_date,O.purch_amt as "ord_amt"
from Customer2 C
right join Salesman1 S
on C.Salesman_id=S.Salesman_id 
right join Orders3 O
on C.Salesman_id=O.salesman_id
;

1.


# QUESTION =13 Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer.
#The customer, may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
select S.name as "Salesman_name",C.cust_name,O.purch_amt,C.grade
from Customer2 C
right join Salesman1 S
on C.Salesman_id=S.Salesman_id
left join Orders3 O
on C.Salesman_id=O.salesman_id 
where O.purch_amt > 2000 and C.grade is not null;

# QUESTION =14 For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list,
#create a report containing the customer name, city, order number, order date, and purchase amount.

select C.cust_name as "Customer_name",C.city,o.ord_no,O.Ord_date,O.purch_amt
from Customer2 C
left join Orders3 O
on C.salesman_id=O.Salesman_id 
where O.ord_no is not null;

# QUESTION =15 Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list
#who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.

select C.cust_name as "Customer_name",C.city,O.ord_no,O.ord_date,O.purch_amt
from Customer2 C
left join Orders3 O 
on C.salesman_id=O.salesman_id 
where C.grade is not null;

# QUESTION=16 Write a SQL query to combine each row of the salesman table with each row of the customer table.
select * from salesman1 cross join customer2;

# QUESTION =17 Write a SQL statement to create a Cartesian product between salesperson and customer,
# i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
select *
from Salesman1 S
cross join  Customer2 C
on S.salesman_id = C.salesman_id
where S.city=C.city; 

# QUESTION=18 Write a SQL statement to create a Cartesian product between salesperson and customer,
# i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.
select * 
from Salesman1 S
cross join Customer2 C
on S.salesman_id=C.salesman_id
where C.grade is not null and S.city=C.city;




