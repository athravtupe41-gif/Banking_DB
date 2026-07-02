Create database SwiftBank;
use SwiftBank;
Show databases;
create table customer(customerID int primary key, 
FirstName Varchar(50),
LastName Varchar(50),
Email Varchar(100),
Phone Varchar(15),
AccountCreationDate date);
desc customer;
Create table Accounts(AccountID int primary key, customerID int,  Accounttype varchar(20), balance decimal(10, 2), foreign key(customerID) references customer(customerID));
desc Accounts;
Create table Transactions(transactionID int primary key, AccountID int, TransactionDate  Date, Amount decimal(10, 2), TransactionType varchar(20), Foreign key(AccountID) references Account(AccountID));
desc Transactions;
Create Table Branches(BranchID int primary key, BranchName Varchar(100), BranchAddress varchar(200), Branchphone Varchar(15));
desc Branches;
Create table AccountBranches(AccountID int, BranchID int, AssignmenDate date, foreign key(AccountId) references Accounts(AccountID), foreign key(BranchID) references Branches(BranchID)); 
desc AccountBranches;
create table Loans(LoanID int primary key, CustomerID int, LoanAmount decimal(10,2), InterestRate decimal(10,2), StartDate date, Enddate date, foreign key(CustomerID) references customer(customerID));
desc Loans;

alter table Accounts 
add constraint chk_MinBalance 
check (Balance >=1000);

Drop Table AccountBranches;

Alter table Customers
modify FirstName varchar(50) Not Null;

Alter Table customers
Add constraint uq_Email unique (Email);






