use bankingDB;

select * from transactions;
select avg(amount) from transactions;
select* from transactions where amount > ( select avg(amount) from transactions);
select AccountID, Accounttype, Balance, CustomerID from Accounts where Balance > (Select avg(Balance) from accounts) order by Balance Desc;
Select AccountID, Accounttype, Balance, CustomerID from accounts where AccountID in(Select AccountId from transactions where TransactionType = "Deposite");
Select AccountID, Accounttype, Balance, CustomerID from accounts where Balance = (Select max(Balance) from accounts);
