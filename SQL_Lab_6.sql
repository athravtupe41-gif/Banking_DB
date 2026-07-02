Select * from customers where FirstName like "A%";
Select * from customers where	 Email like '%gmail%' ;
Select * From Customers where LastName LIKE 'Kar%' ;
SELECT * from customers where FirstName like 'R%' ;
Select * from customers where	 Email like '%yahoo%' ;
Select * from customers where LastName like 'P%' ;
Select * from customers where Phone Like '%99';
select* from Accounts where AccountType in ('Saving','Current');
select * From Transactions where transactionType in ("Withdrawal","Deposite");
select * from Transactions;
update transactions set transactiontype = "Withdrawal" where transactiontype = "Online";
Update transaction set transactionType = "Deposite" where transactionType = "Cash";
Select * from customers where CustomerID in (101,102,105);
select * from Accounts where AccountType in ('Salary', 'Saving');
select * from transactions where transactiontype in ("Payment","Deposite");
select * from customers where CustomerID in (103,104);
select * from accounts;
select * from accounts where AccountID in (201,202,203);
select * from customers order by LastName asc;
select * from Accounts order by Balance desc;
Select * from transactions order by transactionDate desc;
select * from customers order by FirstName asc;
select * from accounts order by AccountType asc;
select* from transaction order by amount desc;
select* from customers order by DateofBirth asc;

select * from accounts order by Balance desc Limit 5;
select * from customers limit 3; 
select * from transactions limit 5 offset 3;

select * from transactions order by amount desc limit 3;
select * from customers Limit 4;
Select * from Accounts limit 3 offset 2; 
select * from transactions order by TransactionDate desc limit 5;

select * from accounts where AccountType = "Saving" order by Balance desc;
select * from customers where FirstName Like "S%" Limit 5;
select * from transactions where TransactionType in ('Deposite','Withdrawal') order by TransactionDate desc;
