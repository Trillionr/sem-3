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
('ANIL','CALCUTTA'),
('SUNIL','DELHI'),
('MEHUL','BARODA'),
('MANDAR','PATNA'),
('MADHURI','NAGPUR'),
('PRAMOD','NAGPUR'),
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANIT','BOMBAY'),
('NAREN','BOMBAY')

drop table Customers

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


1) 	select * from Deposite

2)	select * from Borrow

3)	select * from Customers

4)  select ActNo, Cname,AMOUNT from Deposite

5)  select loanno,amount from Borrow

6)  select * from Borrow where BNAME='ANDHERI'

7)  select ActNo,AMOUNT from Deposite where ACTNO=106

8)  select Cname from Borrow where amount > 5000

9)  select cname from Deposite where ADATE >'1996-dec-1'

10) select cname from Deposite where ACTNO<105

11) select *from Customers where CITY ='nagpur' or CITY='delhi'

12) select * from Customers where city in ('delhi,nagpur') 

13) select cname,bname from Deposite where AMOUNT>4000 and ACTNO<105

14) select *from Borrow where AMOUNT>=3000 and AMOUNT<=8000

15) select *from Borrow where AMOUNT between 3000 and 8000

16) select *from Deposite where  not bname ='andheri'

17) select actno , cname , amount from Deposite where bname in ('ajni ,karolbagh ,m.g.road') and actno<104;

--part B--------------------------------------------------------

1)  select top 5 *from Deposite
	
2)  select top 3 *from Deposite where AMOUNT >1000

3)  select top 5 loanno , cname    from Borrow where bname <> 'andheri'

4)  select  distinct city from Customers

	select *from Branch

5)  select  distinct Bname from Branch

--part c -----------------------------------------------------

	select * from Borrow

1)  select top 50 percent *from Borrow

	select *from Deposite

2)  select top 10 percent amount from Deposite

3)  select top 25 percent *from Deposite where AMOUNT>5000 
 
4)  select top 10 percent amount from Borrow
	
	select *from Customers

5)  select  distinct cname ,city from Customers

	select *from Borrow

6)  select ((amount*0.1)+ amount) from Borrow 

7)  select loanno from Borrow where loanno%2=0

7)  select loanno from Borrow where loanno%2!=0


--lab-3-----------------------------------------------------

--part-A-----------------------------------------

create table Cricket(
Name VARCHAR(50),
City VARCHAR(50),
Age int
)

insert into Cricket values 
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30)

select *from Cricket

1)  select * into Worldcup from Cricket

select * from Worldcup

2)  select Name,city into T20 from Cricket 
    where 1=0

	select *from T20

3)  select * into IPL from Cricket where 1=0 

	select *from IPL

--part-B------------------------


create table Employee(
Name VARCHAR(50),
City VARCHAR(50),
Age int
)

insert into Employee values 
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30)

select * from Employee

1)  select * into Employee_detail from Employee

2)  select Name,City  into Employee_data from Employee
	where 1=0

3)  select *into Employee_info from Employee
	where 1=0
 
 --part-c-------------------

1)  insert into Employee_info select *from Employee 
	where City ='Rajkot'
	--select *from Employee_info 

2)  insert into Employee_info select *from Employee 
	where Age>32



	--update operation-------------------------

	--part-a-----------------------------------

	select *from Deposite

1)	update Deposite 
	set AMOUNT =5000
	where AMOUNT=3000

	select *from  Borrow

2)	update Borrow 
	set BNAME='C.G. Road'
	where CNAME='ANIL'


	select *from Deposite

3)	update Deposite
	set ACTNO=111 , AMOUNT=5000
	where CNAME='SANDIP'

4)	update Deposite
	set AMOUNT=7000
	where CNAME='KRANTI'

	select *from Branch

5)	update Branch
	set BNAME ='ANDHERI WEST'
	where BNAME='ANDHERI'

	select * from Deposite
6)	update Deposite
	set BNAME =' NEHRU PALACE'
	where CNAME='MEHUL'

	select * from Deposite

7)	update Deposite
	set AMOUNT =5000
	where ACTNO BETWEEN 103 AND 107

	select * from Deposite

8)	update Deposite
	set ADATE='1995-04-01'
	where CNAME ='ANIL'

9)	update Deposite
	set AMOUNT=1000
	where CNAME ='MINU'

10)	update Deposite
	set AMOUNT=5000 , ADATE='1996-04-01'
	where CNAME ='PRAMOD'

	--part-b------------------------------------------

	select * from Borrow
1)	select ((amount*0.1)+ amount) from Borrow
	
	select *from Deposite
2)	select ((amount*0.2)+ amount) from Deposite


	--c-----------------------------------
	
1)	update Borrow
	set LOANNO = NULL
	where LOANNO=321

	select *from Borrow

2)	update Borrow
	set CNAME = NULL
	where CNAME='KRANTI'

3)	select *from Borrow 
	where AMOUNT ='null'

4)	select  BNAME from Borrow

5)	update Borrow
	set BNAME='VRCE',CNAME='Darshan',AMOUNT=5000
	where LOANNO=481


	select *from Deposite
	
6)	update Deposite
	set ADATE='2021-01-01'
	where AMOUNT>2000

7)	UPDATE Deposite
	SET ADATE = 'NULL', BNAME = 'ANDHERI'
	WHERE ACTNO = 110;
