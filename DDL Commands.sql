create database Employee;

create table Employee.empdetails
(
empid int,
empname varchar(30),
empcity varchar(30),
empaddress varchar(30),
empnumber varchar(30)
);

select * from employee.empdetails;

create table employee.employee_personal_details
(
empid int,
empname varchar(30),
empgender varchar(30),
empemail varchar(30),
empnumber varchar(10) not null
);

select * from employee.employee_personal_details;

drop table employee.employee_personal_details;

alter table employee.empdetails
drop column empnumber;

alter table employee.empdetails
add empnumber varchar(10) not null;

Insert into employee.empdetails values (1001,'Gayathri','Bangalore','Yelchenahalli','9844102847');
Insert into employee.empdetails values (1002,'Sampath','Bangalore','JP Nagar','6777667877');
Insert into employee.empdetails values (1003,'Gayatri Angadi','Kopalla','Belandur','9867580347');
Insert into employee.empdetails values (1004,'Pramoda','Bangalore','Belandur','5678935670');
Insert into employee.empdetails values (1005,'Nivisha Sahu','Chatisgarh','Kundhanahalli','9807657896');

select * from employee.empdetails
order by empid;

delete from employee.empdetails where empid=1001;

Alter table employee.empdetails
add empcompany varchar(30);

Alter table employee.empdetails
add empdesig varchar(30);

update employee.empdetails
set empcompany='Subex', empdesig='coder' 
where empid=1001;

update employee.empdetails
set empcompany='Scalene', empdesig='Coder' 
where empid=1002;

update employee.empdetails
set empcompany='capgemini', empdesig='Support' 
where empid=1003;

update employee.empdetails
set empcompany='Subex', empdesig='Support' 
where empid=1004;

update employee.empdetails
set empcompany='Subex', empdesig='coder' 
where empid=1005;

create table Employee.emppayroll
(
empid int,
empname varchar(30),
empsalary varchar(30),
empsalarymode varchar(30),
empsalarydate varchar(30)
);

insert into employee.emppayroll(empid,empname,empsalary,empsalarymode,empsalarydate) 
values(1001,'Gayathri',60000,'Bank Account',5);
insert into employee.emppayroll(empid,empname,empsalary,empsalarymode,empsalarydate) 
values(1002,'Sampath',40000,'Bank Account',7);
insert into employee.emppayroll(empid,empname,empsalary,empsalarymode,empsalarydate) 
values(1003,'Gayatri',60000,'Check',7);
insert into employee.emppayroll(empid,empname,empsalary,empsalarymode,empsalarydate) 
values(1004,'Pramoda',50000,'Check',5);
insert into employee.emppayroll(empid,empname,empsalary,empsalarymode,empsalarydate) 
values(1005,'Nivisha Sahu',40000,'Bank Account',7);

delete from employee.emppayroll where empid=1001;
