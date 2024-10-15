create database QuanLyDiemThi;
use quanlydiemthi;
create table HocSinh(
 MaHs VarChar(20) primary key,
 TenHs VarChar(50),
 NgaySinh datetime,
 Lop VarChar(20),
 GT VarChar(20)
);
create table MonHoc(
MaMH VarChar(20) primary key,
TenMH VarChar(50),
MaGV VarChar(20)
);
create table bangdiem(
MaHs VarChar (20),
MaMH VarChar (20),
DiemThi Int,
NgayKT DateTime,
primary key (MaHS, MaMH),
foreign key (MaHs) References HocSinh(MaHs),
foreign key (MaMH) References MonHoc(MaMH)
);
create table GiaoVien (
MaGV VarChar(20) primary key,
TenGV VarChar(20),
SDT VarChar(10)
);
Alter table MonHoc Add constraint FK_MaGV Foreign key (MaGV) References GiaoVien(MaGV);