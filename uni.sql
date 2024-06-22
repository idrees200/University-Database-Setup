Create database Univeristy
create table Student(
Rollnum varchar(8),
Name varchar(25),
Gender varchar(12),
Phone varchar(25)
);
create table Attendance(
Rollnum varchar(8),
 Datee  varchar(12),
Statuss varchar(1),
ClassVenue int
);

create table ClassVenue(
ID int,
 Building  varchar(12),
RoomNum varchar(3),
Teacher varchar(25)


);

create table Teacher(

 Name  varchar(25),
Designation varchar(25),
Department varchar(25)


);


Insert into Student(Rollnum,Name,Gender,phone) Values ('L164123','Ali Ahmad','Male','0333-3333333');
Insert into Student(Rollnum,Name,Gender,phone) Values ('L164124','Rafia Ahmed','Female','0333-3456789');
Insert into Student(Rollnum,Name,Gender,phone) Values ('L164125','Basit Junaid','Male','0345-3243567');


Select * from Student;

Delete from Attendance;
Insert into Attendance Values ('L164123','2-22-2016','P',2); 
Insert into Attendance Values ('L164124','2-23-2016','A',1); 
Insert into Attendance Values ('L164125','3-4-2016','P',2); 
Select * from Attendance;


Insert into ClassVenue Values (1,'CS','2','Sarim Baig'); 
Insert into ClassVenue Values (2,'Civil','7','Bismillah Jan'); 
Select * from ClassVenue;


Insert into Teacher Values ('Sarim Baig','Assistant Prof.','Computer Science'); 
Insert into Teacher Values ('Bismillah Jan','Lecturer','Civil Eng.'); 
Insert into Teacher Values ('Kashif Zafar','professor','Electrical Eng.');
Select * from Teacher;

ALTER TABLE Student
ALTER COLUMN Rollnum varchar(8) NOT NULL;

ALTER TABLE Student
ADD PRIMARY KEY (Rollnum);

ALTER TABLE Attendance
ADD FOREIGN KEY (Rollnum) REFERENCES Student (Rollnum);

ALTER TABLE Student
ADD PRIMARY KEY (Rollnum);

ALTER TABLE Attendance
ALTER COLUMN ClassVenue int;

delete from Attendance;

ALTER TABLE Attendance
ALTER COLUMN Datee varchar(12) NOT NULL;

ALTER TABLE Attendance
ADD PRIMARY KEY (Datee);

ALTER TABLE ClassVenue
ALTER COLUMN ID int NOT NULL;

ALTER TABLE ClassVenue
ADD PRIMARY KEY (ID);

ALTER TABLE Teacher
ALTER COLUMN Name varchar(25) NOT NULL;

ALTER TABLE Teacher
ADD PRIMARY KEY (Name);

ALTER TABLE ClassVenue
ADD FOREIGN KEY (Teacher) REFERENCES Teacher (Name);


alter table Student ADD WarningCount int;

alter table Student drop Column Phone;
select * from Student;

Insert into Student Values ('L162334','Fozan Shahid','Male',3.2);
 --Valid because int takes values coming behind the point.


 Insert into ClassVenue Values (3,'CS','5','Ali');
 --Not valid because Ali should be added first in teacher table.

UPDATE Teacher
SET Name = 'Dr.Kashif Zafar'
WHERE Name='Kashif Zafar';
select * from Teacher;

Delete from Student where Rollnum='L162334';
Delete from Student where Rollnum='L164123';

Delete from Attendance where Rollnum='L164124' AND statuss='A';
select * from Attendance;

ALTER TABLE Teacher
ADD UNIQUE (Name);

ALTER TABLE Student
ADD CHECK (Gender='Male' or Gender='Female') ;

ALTER TABLE Attendance
ADD CHECK (Statuss='P' or Statuss='A') ;
