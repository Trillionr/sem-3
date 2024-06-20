create database CSE_B8

create table Deposite(
 ACTNO INT
,CNAME VARCHAR(50)
,BNAME VARCHAR(50)
,AMOUNT DECIMAL(6,2)
,ADATE DATETIME
)


insert into Deposite values
(101,'ANIL','VRCE',1000.00,'1990-03-01'),
(102,'SUNIL','AJNI',5000.00,'1996-01-04'),
(103,'MEHUL','KAROLBAGH',3500.00,'1995-11-17'),
(104,'MADHURI','CHANDI',1200.00 ,'1995-12-17'),
(105,'PRAMOD','M.G. ROAD',3000.00 ,'1996-03-27'),
(106,'SANDIP','ANDHERI',2000.00 ,'1996-03-31'),
(107,'SHIVANI','VIRAR',1000.00 ,'1995-09-05'),
(108,'KRANTI','NEHRU PLACE',5000.00 ,'1995-07-02'),
(109,'MINU','POWAI',7000.00 ,'1995-08-10');


create table Branch(
BNAME VARCHAR(50),
CITY VARCHAR(50)
)

insert into Branch values
('VRCE','NAGPUR'),
('AJNI','NAGPUR'),
('KAROLBAGH','DELHI'),
('CHANDI','DELHI'),
('DHARAMPETH','NAGPUR'),
('M.G. ROAD','BANGLORE'),
('ANDHERI','BOMBAY'),
('VIRAR',' BOMBAY'),
('NEHRU PLACE','DELHI'),
('POWAI','BOMBAY')


create table Customers(
CNAME VARCHAR(50),
CITY VARCHAR(50)
)

insert into Customers values
('ANIL ','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI',' BOMBAY'),
('KRANIT','BOMBAY'),
('NAREN','BOMBAY')



create table Borrow(
LOANNO INT,
CNAME VARCHAR(50),
BNAME VARCHAR(50),
AMOUNT DECIMAL(8,2)
)


insert into Borrow values
(201,'ANIL','VRCE',1000.00),
(206,'MEHUL','AJNI',5000.00),
(311,'SUNIL','DHARAMPETH',3000.00),
(321,'MADHURI','ANDHERI',2000.00),
(375,'PRAMOD','VIRAR',8000.00),
(481,'KRANTI','NEHRU PLACE',3000.00)



-------lab 2------------------------

select * from Deposite

select * from Borrow

select * from Customers

select ActNo, Cname,AMOUNT from Deposite

select loanno,amount from Borrow

select * from Borrow where BNAME='ANDHERI'

select ActNo,AMOUNT from Deposite where ACTNO=106

select Cname from Borrow where amount > 5000

select cname from Deposite where ADATE >'1996-dec-1'

select cname from Deposite where ACTNO<105

