CREATE DATABASE CHXM;
go 
use CHXM
go
-- Tạo bảng KHACHHANG
CREATE TABLE KHACHHANG (
  MAKH NVARCHAR(50) NOT NULL,
  TENKH NVARCHAR(50) NOT NULL,
  DIENTHOAI NVARCHAR(50) NOT NULL,
  DIACHI NVARCHAR(50) NOT NULL,
  PRIMARY KEY (MAKH)
);
--Thêm dữ liệu vào bảng KHACHHANG
INSERT INTO KHACHHANG (MAKH, TENKH, DIACHI, DIENTHOAI)
VALUES
('KH01', N'Nguyễn Khánh Beng', N'So 910, quan 1, TP.HCM', '0909223453'),
('KH02', N'Nguyễn Thị Bông', N'So 220, quan 2, TP.HCM', '0922255576'),
('KH03', N'Trần Văn Cất', N'So 01, Nhi Long, Cang Long, TP.TV', '0935645679'),
('KH04', N'Nguyễn Khánh Tâm', N'Ap Hieu Trung, Xa Hieu Nghia, TP.VL', '0234023499'),
('KH05', N'Lê Thị Khởi', N'Ap Ro 1, Nhi Long, Cang Long, TP.TV', '0962212345'),
('KH06', N'Trần Nhật Huy', N'So 01, Nhi Long, Cang Long, TP.TV', '0937645667'),
('KH07', N'Nguyễn Hoàng Khoa', N'So 880, quan Go Vap, TP.HCM', '0933214513'),
('KH08', N'Nguyễn Thị Bông Lan', N'So 220, quan 2, TP.HCM', '0922255576'),
('KH09', N'Lê Hóa', N'Ap Phu Nhuan, Vung Liem, TP.VL', '0935645679')

-- T?o b?ng HANGHOA
CREATE TABLE HANGHOA (
  MAHH NVARCHAR(50) NOT NULL,
  TENHH NVARCHAR(100) NOT NULL,
  MANCC NVARCHAR(50) NOT NULL,
  SOLUONG Int NOT NULL,
  GIANHAP Int NOT NULL,
  GIABAN Int NOT NULL,
  PRIMARY KEY (MAHH)
);
--Thêm dữ liệu vào bảng HANGHOA
INSERT INTO HANGHOA (MAHH, TENHH, MANCC, SOLUONG, GIANHAP, GIABAN)
VALUES
('HH01', N'FUTURE 125 FI 2024', 'NCC02', '10', '30124727','30524727'),
('HH02', N'Ninja ZX-25R SE ( Xanh Lime ) 2021', 'NCC05', '10', '180000000','189000000'),
('HH03', N'Z650 SE ( Đen mờ ) 2021', 'NCC05', '10', '189000000','190000000'),
('HH04', N'Honda Air Blade 125 2024', 'NCC02', '10', '41324000','47456200'),
('HH05', N'Piaggio Liberty 125 ABS', 'NCC04', '10', '55000000','56000000'),
('HH06', N'Z400 ABS ( Xanh Lime ) 2020', 'NCC05', '10', '148000000', '149000000'),
('HH07', N'Piaggio Liberty S 125 ABS', 'NCC04', '10', '56000000','57700000'),
('HH08', N'Xe Vision 2024', 'NCC02', '10', '36612000','40508600'),
('HH09', N'Z1000 ( Xánh ánh Kim ) 2022', 'NCC05', '10', '420000000','421000000'),
('HH010', N'Yamaha Exciter 155 ABS', 'NCC01', '10', '48000000','54466000'),
('HH011', N'Yamaha R3', 'NCC01', '10', '139000000','150016000'),
('HH012', N'Raider 150 FI', 'NCC03', '10', '51190000','57815500')
  
-- T?o b?ng DONHHANG
CREATE TABLE DONHANG (
  MADH NVARCHAR(50) NOT NULL,
  MAKH NVARCHAR(50) NOT NULL,
  MANV NVARCHAR(50) NOT NULL,
  MAHH NVARCHAR(50) NOT NULL,
  MANCC NVARCHAR(50) NOT NULL,
  SOLUONG Int NOT NULL,
  NGAYBAN DATETIME NOT NULL,
  TONGTIEN Int NOT NULL,
  PRIMARY KEY (MADH)
);
INSERT INTO DONHANG (MADH, MAKH, MANV, MAHH, MANCC, SOLUONG,  NGAYBAN, TONGTIEN)
VALUES
('DH01','KH01' , 'NV01', 'HH01', 'NCC02', '1',  '06-01-2023','30524727'),  
('DH02','KH02' , 'NV02', 'HH05', 'NCC04', '1',  '04-01-2024','56000000'),  
('DH03','KH03' , 'NV03', 'HH010', 'NCC03', '1', '04-06-2023','54466000'),  
('DH04','KH04' , 'NV04', 'HH02', 'NCC05', '1', '10-01-2023','189000000'),  
('DH05','KH05' , 'NV01', 'HH04', 'NCC02', '1',  '12-09-2023','41124000'),  
('DH06','KH06' , 'NV01', 'HH06', 'NCC05', '1',  '2023-11-08','149000000'),
('DH07','KH02' , 'NV02', 'HH05', 'NCC04', '1',  '04-01-2024','56000000')
          
-- T?o b?ng Nhanvien
CREATE TABLE NHANVIEN (
  MANV NVARCHAR(50) NOT NULL,
  TENNV NVARCHAR(50) NOT NULL,
  GIOITINH NVARCHAR(50) NOT NULL,
  NAMSINH NVARCHAR(50) NOT NULL,
  
  DIENTHOAI NVARCHAR(50) NOT NULL,
  DIACHI VARCHAR(100) NOT NULL,
  PRIMARY KEY (MANV)
);
-- Thêm dữ liệu vào bảng Nhanvien
INSERT INTO NHANVIEN (MANV, TENNV, GIOITINH, NAMSINH, DIENTHOAI, DIACHI)
VALUES
('NV01', N'Nguyễn Văn An', N'Nam', '1997', '0909123456', N'So 09, đường A2, Phường 1, TP.TV'),
('NV02', N'Nguyễn Thị Bình', N'Nữ', '2002', '0919234567', N'So 20, duong SS, Khom 2, Vinh Long'),
('NV03', N'Trần Văn Cung', N'Nam', '1998', '0929345678', N'So 340B, duong PQR, Phuong 3, TP.TV'),
('NV04', N'Nguyễn Văn Hoài An', N'Nam', '2002', '0909109456', N'So 309, duong b5, Phuong 9, TP.TV'),
('NV05', N'Nguyễn Thị Bích Tuyền', N'Nữ', '1998', '0976676567', N'Đuong An Hung, Khom 2, An Giang'),
('NV06', N'Trần Văn Công Hưng', N'Nam', '2003', '0989345555', N'So 40B, duong An Loi, Ap 3, TP.Ca Mau')

CREATE TABLE NHACUNGCAP (
  MANCC NVARCHAR(50) NOT NULL,
  TENNCC NVARCHAR(100) NOT NULL,
  DIENTHOAI NVARCHAR(11) NOT NULL,
  DIACHI NVARCHAR(100) NOT NULL,
  PRIMARY KEY (MANCC)
);
--Thêm dữ liệu vào bảng NHACUNGCAP
INSERT INTO NHACUNGCAP (MANCC, TENNCC, DIENTHOAI, DIACHI)
VALUES
('NCC01', N'Hãng xe Yamaha', '02943842888', N'So 403, duong Nguyen Đang, Phuong 6, TP.Tra Vinh'),
('NCC02', N'Hãng xe Honda', '0939991259', N'So 320, duong Nguyen Thi Minh Khai, Phuong 7, TP.Tra Vinh'),
('NCC03', N'Hãng xe Suzuki', '0938223215', N'2A, duong Pho Quang, Phuong 2, Tan Binh, TP.HCM'),
('NCC04', N'Hãng xe Piaggio', '287776383', N'So 177A, duong Phan Đang Luu, Phuong 1, Phu Nhuan, TP.HCM'),
('NCC05', N'Hãng xe Kawasaki', '0903875007', N'52B QL1A, Khu Vuc I, Cai Rang, TP.Can Tho')

