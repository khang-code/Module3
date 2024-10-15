create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
cID int not null auto_increment primary key,
cName varchar(50),
cAge int
);

create table Orders(
oID int auto_increment primary key,
cID int not null,
oDate date,
oTotalePrice int,
foreign key (cID) references Customer (cID)
);

create table Product(
pID int auto_increment primary key,
pName varchar (60),
pPrice int);

create table OrderDetail (
oID int not null,
pID int not null,
foreign key (oID) references Orders (oID),
foreign key (pID) references Product (pID)
)