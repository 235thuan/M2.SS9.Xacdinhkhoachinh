CREATE TABLE Customer (
  Customer_number int(11) NOT NULL AUTO_INCREMENT,
  Fullname varchar(45) NOT NULL,
  Address varchar(45) NOT NULL,
  Email varchar(45) NOT NULL,
  Phone varchar(45) NOT NULL,
  primary key (Customer_number)
);
CREATE TABLE Accounts (
  Account_number int(11) not null auto_increment,
  Account_type varchar(45) not null,
  Date datetime not null,
  Balance int(11),
  Customer_number int(11),
  primary key(Account_number),
  foreign key(Customer_number) references Customer(Customer_number)
);
CREATE TABLE Transaction (
    Tran_number INT(11) NOT NULL AUTO_INCREMENT,
    Account_number INT(11) ,
    Date DATETIME NOT NULL,
    Amounts INT(11) NOT NULL,
    Description VARCHAR(45) NOT NULL,
    PRIMARY KEY (Tran_number),
    FOREIGN KEY (Account_number)
        REFERENCES Accounts (Account_number)
);
select Customer.Customer_number, Accounts.Customer_number,Transaction.Account_number
from Customer,Accounts,Transaction
where Customer.Customer_number=Accounts.Account_number