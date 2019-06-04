CREATE TABLE nhacungcap

(

idcongty  int identity 

CONSTRAINT pk_nhacungcap

PRIMARY KEY(idcongty),

tencongty NVARCHAR(40) NOT NULL,

tengiaodich NVARCHAR(30) NULL,

diachi NVARCHAR(60) NULL,

dienthoai NVARCHAR(20) NULL,

fax NVARCHAR(20) NULL,

email NVARCHAR(50) NULL

)

CREATE TABLE loaihang

(

idloaihang INT identity

CONSTRAINT pk_loaihang

PRIMARY KEY(idloaihang),

tenloaihang NVARCHAR(15) NOT NULL

)

CREATE TABLE mathang

(

idhang int identity

CONSTRAINT pk_mathang

PRIMARY KEY(idhang),

tenhang NVARCHAR(50) NOT NULL,

macongty NVARCHAR(10) NULL ,

maloaihang INT NULL ,

soluong INT NULL,

donvitinh NVARCHAR(20) NULL ,

giahang MONEY NULL

)

CREATE TABLE nhanvien

(

idnhanvien int identity

CONSTRAINT pk_nhanvien

PRIMARY KEY(idnhanvien),

ho NVARCHAR(20) NOT NULL ,

ten NVARCHAR(10) NOT NULL ,

ngaysinh DATETIME NULL ,

ngaylamviec DATETIME NULL ,

diachi NVARCHAR(50) NULL ,

dienthoai NVARCHAR(15) NULL ,

luongcoban MONEY NULL ,

phucap MONEY NULL

)

CREATE TABLE khachhang

(

idkhachhang int identity

CONSTRAINT pk_khachhang

PRIMARY KEY(idkhachhang),

tencongty NVARCHAR(50) NOT NULL ,

tengiaodich NVARCHAR(30) NOT NULL ,

diachi NVARCHAR(50) NULL ,

email NVARCHAR(30) NULL ,

dienthoai NVARCHAR(15) NULL ,

fax NVARCHAR(15) NULL

)

CREATE TABLE dondathang

(

idhoadon INT identity

CONSTRAINT pk_dondathang

PRIMARY KEY(idhoadon),

makhachhang NVARCHAR(10) NULL ,

manhanvien NVARCHAR(10) NULL ,

ngaydathang SMALLDATETIME NULL ,

ngaygiaohang SMALLDATETIME NULL ,

ngaychuyenhang SMALLDATETIME NULL ,

noigiaohang NVARCHAR(50) NULL

)

CREATE TABLE chitietdathang

(

idhoadon INT NOT NULL,

idhang int NOT NULL,

giaban MONEY NOT NULL ,

soluong SMALLINT NOT NULL ,

mucgiamgia REAL NOT NULL,

CONSTRAINT pk_chitietdathang

PRIMARY KEY(idhoadon,idhang)

)

ALTER TABLE mathang

ADD

CONSTRAINT fk_mathang_loaihang

FOREIGN KEY (idloaihang)

REFERENCES loaihang(idloaihang)

ON DELETE CASCADE ON UPDATE CASCADE ,

CONSTRAINT fk_mathang_nhacungcap

FOREIGN KEY (idcongty)

REFERENCES nhacungcap(idcongty)

ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE dondathang

ADD

CONSTRAINT fk_dondathang_khachhang

FOREIGN KEY (idkhachhang)

REFERENCES khachhang(idkhachhang)

ON DELETE CASCADE ON UPDATE CASCADE ,

CONSTRAINT fk_dondathang_nhanvien

FOREIGN KEY (idnhanvien)

REFERENCES nhanvien(idnhanvien)

ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE chitietdathang

ADD

CONSTRAINT fk_chitiet_dondathang

FOREIGN KEY (idhoadon)

REFERENCES dondathang(idhoadon)

ON DELETE CASCADE ON UPDATE CASCADE ,

CONSTRAINT fk_chitiet_mathang

FOREIGN KEY (idhang)

REFERENCES mathang(idhang)

ON DELETE CASCADE ON UPDATE CASCADE

