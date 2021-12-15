create database quanly_vattu;

create table PhieuXuat(
soPhieuXuat int auto_increment primary key,
ngayXuat date not null
);

create table PhieuNhap(
soPhieuNhap int auto_increment primary key,
ngayNhap date not null
);

create table VatTu(
maVatTu int auto_increment primary key,
tenVatTu varchar(100) not null
);

create table ChiTietPhieuXuat(
DGXuat int,
SLXuat int,
soPhieuXuat int,
maVatTu int,
primary key(soPhieuXuat, maVatTu),
foreign key (soPhieuXuat) references PhieuXuat(soPhieuXuat),
foreign key (maVatTu) references VatTu(maVatTu)
);

create table ChiTietPhieuNhap(
DGNhap int,
SLNhap int,
soPhieuNhap int,
maVatTu int,
primary key(soPhieuNhap, maVatTu),
foreign key (soPhieuNhap) references PhieuNhap(soPhieuNhap),
foreign key (maVatTu) references VatTu(maVatTu)
);

create table ChiTietDonDatHang(
soDonHang int,
maVatTu int,
primary key (soDonHang, maVatTu),
foreign key (soDonHang) references DonDatHang(soDonHang),
foreign key (maVatTu) references VatTu(maVatTu)
);

create table DonDatHang(
soDonHang int auto_increment primary key,
ngayDatHang date not null
);

create table NhaCungCap(
maNhaCungCap int auto_increment primary key,
tenNhaCungCap varchar(50) not null,
diaChi varchar(100) not null,
soDienThoai int not null
);
