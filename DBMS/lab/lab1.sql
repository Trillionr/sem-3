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

	--lab -4 alter-------------------------
	--part-A-------------------------------

--1) Add two more columns City VARCHAR (20) and Pincode INT
	alter table Deposite
	add city varchar(50),
	pincode INT;

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
	alter table Deposite 
	alter column CNAME varchar(35);

--3. Change the data type DECIMAL to INT in amount Column
	alter table Deposite
	alter column AMOUNT INT;

	
	select *from Deposite
--4. Rename Column ActNo to ANO.
	SP_RENAME 'Deposite.ACTNO', ANO;


--5. Delete Column City from the DEPOSIT table.
	alter table Deposite
	drop column City

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
	sp_rename Deposite,DEPOSITE_DETAIL

	select *from DEPOSITE_DETAIL

--part-b------------
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
	SP_RENAME 'DEPOSIT_DETAIL.ADATE',AOPENDATE;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
	alter table DEPOSIT_DETAIL
	drop column AOPENDATE
--3. Rename Column CNAME to CustomerName.
	sp_rename 'DEPOSIT_DETAIL.CNAME',CustomerName;

--part-c-------------------------------------------------
create table STUDENT_DETAIL(
Enrollment_No VARCHAR(20),
Name VARCHAR(25),
CPI DECIMAL(5,2),
Birthdate DATETIME)
select *from STUDENT_DETAIL

--	1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

alter table STUDENT_DETAIL
ADD City VARCHAR (20),
	Backlog INT;
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
alter table STUDENT_DETAIL
ALTER COLUMN Name varchar(35);

--3. Change the data type DECIMAL to INT in CPI Column.
alter table STUDENT_DETAIL
ALTER COLUMN CPI INT;

--4. Rename Column Enrollment_No to ENO.
sp_rename 'STUDENT_DETAIL.Enrollment_No',ENO;

--5. Delete Column City from the student_detail table.
alter tabel STUDENT_DETAIL
DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER
SP_RENAM STUDENT_DETAIL,STUDENT_MASTER;
--PART-A DELETE,TRUNCATE,DROP----------------------------

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 

	delete from  DEPOSITE_DETAIL
	WHERE AMOUNT>=4000

	--2. Delete all the accounts CHANDI BRANCH.

	delete from  DEPOSITE_DETAIL
	WHERE BNAME ='CHANDI'

	--3. Delete all the accounts having account number (ANO) is greater than 105.

	delete from  DEPOSITE_DETAIL
	where ANO>105

	--4. Delete all the records of Deposit_Detail table. (Use Truncate)

	truncate table DEPOSITE_DETAIL

	--5. Remove Deposit_Detail table. (Use Drop)
	DROP TABLE DEPOSITE_DETAIL

create table EMPLOYEE_MASTER
(
EmpNo INT,
EmpName VARCHAR(25),
JoiningDate DATETIME,
Salary DECIMAL (8,2),
City VARCHAR(20)
)
insert into EMPLOYEE_MASTER values
(101,'Keyur','5-1-02',12000.00,'Rajkot'),
(102,'Hardik','15-2-04',14000.00,'Ahmedabad'),
(103,'Kajal','14-3-06' ,15000.00,'Baroda'),
(104,'Bhoomi','23-6-05' ,12500.00,'Ahmedabad'),
(105,'Harmit','15-2-04' ,14000.00,'Rajkot'),
(106,'Mitesh','25-9-01' ,5000.00,'Jamnagar'),
(107,'Meera',Null, 7000.00,'Morbi'),
(108,'Kishan','6-2-03' ,10000.00,NULL)

--Lab-5------------------------------------------------------
create table student(
StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
)

INSERT INTO STUDENT VALUES
(1011,'Keyur','Patel','techonthenet.com','Rajkot','A-303,''VASANT KUNJ'',RAJKOT'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','''Ram Krupa'', Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot, near garden'), 
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','''Jigs Home'',Narol'), 
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55, Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')

TRUNCATE TABLE student
SELECT *FROM student

--1. Display the name of students whose name starts with ‘k’.
select FirstName
from student
where FirstName like 'K%';

--2. Display the name of students whose name consists of five characters.
SELECT *FROM student
select FirstName
from student
where FirstName like '_____';
--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT *FROM student
select city,FirstName,LastName
from student
where city like'_____a';

--4. Display all the students whose last name ends with ‘tel’.
SELECT *FROM student
select LastName
from student
where LastName like'%tel';
--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT *FROM student
select FirstName
from student
where FirstName like'Ha%t'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT *FROM student
select FirstName
from student
where FirstName like'K_y%';
--7. Display the name of students having no website and name consists of five characters.
SELECT *FROM student
select Website
from student
where Website like '_____' or Website is null ;
--8. Display all the students whose last name consist of ‘jer’. 
select LastName
from student
where LastName like '%jer%';
--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
select city
from student
where city like 'R%' or city like 'B%';

--10. Display all the name students having websites.
select *from student
select Website
from student
where Website is not null
--11. Display all the students whose name starts from alphabet A to H.
select FirstName
from student
where FirstName like '[A-H]%';
--12. Display all the students whose name’s second character is vowel.
select FirstName
from student
where FirstName like '_[a,e,i,o,u]%'
--13. Display the name of students having no website and name consists of minimum five characters.
select FirstName,Website
from student
where FirstName like '_____' and Website is null
--14. Display all the students whose last name starts with ‘Pat’. 
select LastName
from student
where LastName like 'Pat%'
--15. Display all the students whose city name does not starts with ‘b’.
select City
from student
where City not like 'B%'

--Part – B:
--1. Display all the students whose name starts from alphabet A or H.
select FirstName
from student
where FirstName like '[A-H]%';
--2. Display all the students whose name’s second character is vowel and of and start with H.
select FirstName
from student
where FirstName like 'H[a,e,i,o,u]%';
--3. Display all the students whose last name does not ends with ‘a’.
select LastName
from student
where LastName not like '%a';
--4.Display all the students whose first name starts with consonant.
select FirstName
from student
where FirstName NOT like '[A,E,I,O,U]%';
--5. Display all the students whose website contains .net
SELECT *FROM student
select Website
from student
where Website like '%.net';

--Part – C:
--1. Display all the students whose address consist of -.
select Address
from student
where Address like '%-%'
--2. Display all the students whose address contains single quote or double quote.
select Address
from student
where Address like '%''%'
--3. Display all the students whose website contains @.
select Website
from student
where Website like '%@%'

--4. Display all the names those are either four or five characters.
select FirstName
from student
where FirstName like '_____' or FirstName like'____';
