select empdetails.empid,empdetails.empname,empdetails.empcity,empdetails.empcompany
from employee.empdetails
where empcity='Bangalore' and empcompany='Subex';

select * from employee.empdetails
where empcompany='Subex';

select empdetails.empid,empdetails.empname,empdetails.empdesig,empdetails.empcompany 
from employee.empdetails
where empdesig='Coder' or empcompany='Subex';

select empdetails.empid,empdetails.empname,empdetails.empdesig,empdetails.empcompany 
from employee.empdetails
where not empcompany='Subex';

select empdetails.empid,empdetails.empname,empdetails.empcity,empdetails.empnumber
from employee.empdetails
order by empname DESC;

select * from employee.emppayroll
order by empid;

select empdetails.empid,empdetails.empname,empdetails.empcity
from Employee.empdetails
Inner join Employee.emppayroll
on empdetails.empid=emppayroll.empid;

select empdetails.empid,empdetails.empname,empdetails.empcity
from Employee.empdetails
Left join Employee.emppayroll
on empdetails.empid=emppayroll.empid;

select * from Employee.empdetails
right join Employee.emppayroll
on empdetails.empid=emppayroll.empid;

select empdetails.empid,empdetails.empname,empdetails.empnumber
from Employee.empdetails
where empid between 1001 and 1003;

SELECT empdetails.empid,empdetails.empname,empdetails.empcity,empdetails.empnumber
FROM Employee.empdetails
WHERE empid between 1001 and 1003
GROUP BY empname
HAVING empcity='Bangalore'
ORDER BY empid;
