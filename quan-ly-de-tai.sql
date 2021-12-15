create database quanlydetai;

use quanlydetai;

create table sinhVien(
maSinhVien int not null auto_increment primary key,
tenSinhVien varchar(30) not null,
tenLop varchar(15) not null
);

create table giangVien(
maGiangVien int not null auto_increment primary key,
tenGiangVien varchar(30) not null,
hocHam varchar(50) not null,
hocVi varchar(50) not null
);

create table detai(
maDeTai int not null auto_increment primary key,
tenDeTai varchar(50) not null,
linhVuc varchar(50) not null,
maSinhVien int not null check (maSinhVien <= 5),
maGiangVien int not null,
foreign key(maSinhVien) references quanlydetai.sinhVien(maSinhVien),
foreign key(maGiangVien) references quanlydetai.giangVien(maGiangVien)
);