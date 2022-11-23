/********* UC1 **********/
create database Payroll_service



/********* UC2 **********/

Create table Employee_Payroll
(
Id int primary key identity,
Name varchar(50),
Salary money not null,
StartDate datetime default GetDate()
)

select * from Employee_Payroll


/********* UC3 **********/

Insert into Employee_Payroll (Name, Salary, StartDate) values 
('mahesh', 7000, GETDATE()),
 ('rita', 600, GETDATE()),
  ('akshay', 7500, GETDATE());


/********* UC4 **********/

select *
from Employee_Payroll


/********* UC5 **********/

SELECT Salary
from Employee_Payroll
where Name = 'mahesh'


/********* UC6 **********/

Alter table Employee_Payroll
Add Gender char

select *
from Employee_Payroll


Update Employee_Payroll
set Gender = 'M'
Where Name = 'mahesh' or Name = 'akshay' 


 

Delete
From Employee_Payroll
where Id = 2


/********* UC7 **********/

select SUM(Salary)
from Employee_Payroll

select AVG(Salary)
from Employee_Payroll

select MIN(Salary)
from Employee_Payroll

select MAX(Salary)
from Employee_Payroll

select COUNT(Salary)
from Employee_Payroll



/********* UC8 **********/

Alter Table Employee_Payroll
ADD Phone_Number VarChar(12)

Alter Table Employee_Payroll
ADD Department varchar(30)

Alter Table Employee_Payroll
ADD Emp_address varchar(30)

select *
from Employee_Payroll
Go



/********* UC9 **********/


Alter Table Employee_Payroll
ADD Basic_Pay Money

Alter Table Employee_Payroll
ADD Deductions Money

Alter Table Employee_Payroll
ADD Taxable_Pay Money

Alter Table Employee_Payroll
ADD Income_Tax Money

Alter Table Employee_Payroll
ADD Net_Pay Money

select *
from Employee_Payroll
Go


/********* UC10 **********/


select *
from Employee_Payroll
Go
