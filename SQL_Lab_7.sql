CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE
);

INSERT INTO Employees (EmpID, EmpName, Department, Salary, HireDate) VALUES
(101,'Amit','Sales',50000,'2021-01-15'),
(102,'Priya','HR',45000,'2020-06-20'),
(103,'Rahul','IT',70000,'2019-08-10'),
(104,'Sneha','Sales',55000,'2022-02-18'),
(105,'Karan','IT',80000,'2018-11-25'),
(106,'Neha','HR',48000,'2021-09-12'),
(107,'Vikas','Finance',65000,'2020-03-05'),
(108,'Anjali','Finance',62000,'2022-05-15'),
(109,'Rohan','IT',70000,'2020-12-01'),
(110,'Pooja','Sales',60000,'2019-10-10'),
(111,'Arjun','Finance',75000,'2018-07-30'),
(112,'Meera','HR',45000,'2022-01-20'),
(113,'Deepak','IT',90000,'2017-04-12'),
(114,'Kavita','Sales',50000,'2021-11-22'),
(115,'Nikhil','Finance',68000,'2019-06-14');

select empname, department, salary, hiredate, row_number() over(order by salary desc) as row_num from employees;

select empname, department, salary, hiredate, row_number() over(order by Department desc) as row_num from employees;

select * from employees;

 select empname, department, salary, hiredate, rank() over(order by salary desc) as rank_po from employees;
 
 insert into employees value(116,"atharva","IT",10000,"2017-04-12");
 insert into employees value(117,"prithviraj","HR",111111,"2018-05-13"),(118,"rahul","sales",222222,"2019-07-16");
 
 select empname, department, salary, hiredate, rank() over(partition by department order by salary) as rank_po, dense_rank() over(partition by Department order by Salary) as dense_rnk from employees;
 

 select empname, department, salary, hiredate, rank() over(partition by department order by salary) as rank_po, dense_rank() over(partition by department order by salary);
 
 select * from employees;
 
  select *,ntile(6) over(order by salary desc) as ntle from employees;
  
 create table exp(month varchar(3), expense int);
 
 insert into exp values("jan",20000),("feb",30000),("Mar",34000),("Apr",40000),("May",25000),("Jun",28000),("Jul",36000),("Aug",50000),("Sep",45000),("Oct",40000),("Nov",42000),("Dec",55000);
 
 select *, lead(expense)over()as Next_Month, lag(Expense) over() as previous_month from exp;
 
 select *, sum(expense) over(order by expense desc) as running_total from exp;
 
 select * from employees;
 
 select distinct(department), Max(salary) over(partition by department) as max_sal from employees;
 select distinct(department) ,max(salary) from employees group by department order by Department;
 
 
 
 