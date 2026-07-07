Use BankingDB;

select FirstName, Upper(FirstName) as upper_case from customers;
select FirstName, Lower(FirstName) as Lowe_case from customers;
select FirstName, Length(FirstName) as Length_Name from customers;

select FirstName, Left(FirstName, 3) as straight_3 from customers;
select FirstName, Right(FirstName, 3) as ending_3 from customers;

select ConCat(FirstName, "-", LastName) as full_Name from customers;

select round(3434.23) as Rounded;
select round(3434.73) as Rounded;

select ceil(1256.25) as celling_value;
select floor(1256.98) as floor_Value;

select ABS(-2500) as absolute_values;

select mod(567,3) as Remainder;

select curdate();
select now();

select * from customers;
select DateofBirth, year(DateofBirth) as birth_year from customers;
select dateofbirth, month(DateofBirth) as Month_year from customers;
select dateofbirth, datediff(curdate(), dateofbirth) as days from customers;

select FirstName, dateofBirth, if(year(DateofBirth) <=1995, "Adult", "Young") as age_category from customers;
select * from customers;
select FirstName, ifnull(phone, "Not Available") as phonenumber from customers;
insert into customers(customerID, FirstName, LastName, email, Accountcreationdate, dateofbirth) values(107, "Ganesh", "Tayde", "gt@gmail.com", "2026-04-23", "2000-01-07");
delete from customers where customerID = 107;
select firstName, Ifnull(phone, "Not Available") as Phonenumber from customers;

select * from customers;

Select greatest("1999-02-09","2000-09-20","1999-08-19","1998-08-19","1997-02-07","1996-01-06") as latest_Date;

select FirstName, nullif(Firstname,"Prithvi" ) as result from customers;

select sum(balance) as total_balance from accounts;
select avg(balance) as average_balance from accounts;
select max(balance) as Maximum_balance from accounts;
select * from accounts where balance = (select max(balance) from accounts);
select min(balance) as lowest_balance from accounts;

select count(*) as total_accounts from accounts;
select sum(balance) from accounts;
select accounttype, sum(balance) as type_balance from accounts group by AccountType;
select accounttype, sum(Balance) as totalbalance from accounts group by accounttype having sum(balance) > 25000;