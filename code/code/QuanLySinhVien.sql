create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
classid int not null auto_increment primary key,
classname varchar(60) not null,
StartDate datetime not null,
status BIT
);

create table Student(
StudentID Int not null auto_increment Primary key,
StudentName VarChar(30) not null,
Address Varchar(50),
Phone varchar(20),
Status Bit,
classid int not null,
foreign key (ClassId) references class (classid)
);

create table subject(
SubId int Not null auto_increment primary key,
subname varchar(30) not null,
credit tinyint not null default 1 check (Credit >= 1),
status bit default 1
);

Create table mark (
MarkId int not null auto_increment primary key,
SubId int not null,
studentId int not null,
mark float default 0 check (Mark between 0 and 100 ),
examtimes tinyint default 1,
unique (subId, studentId),
foreign key (SubId) references subject (subId),
foreign key (studentId) references student (StudentId)
)