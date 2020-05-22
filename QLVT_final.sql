USE [master]
GO
/****** Object:  Database [QLVT]    Script Date: 5/22/2020 9:55:07 PM ******/
CREATE DATABASE [QLVT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLVT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLVT.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLVT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLVT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLVT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLVT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLVT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLVT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLVT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLVT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLVT] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLVT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLVT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLVT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLVT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLVT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLVT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLVT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLVT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLVT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLVT] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLVT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLVT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLVT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLVT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLVT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLVT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLVT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLVT] SET RECOVERY FULL 
GO
ALTER DATABASE [QLVT] SET  MULTI_USER 
GO
ALTER DATABASE [QLVT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLVT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLVT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLVT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLVT] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLVT', N'ON'
GO
USE [QLVT]
GO
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[MACN] [nchar](4) NOT NULL,
	[CHINHANH] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[SODT] [nchar](10) NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[MACN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDDH]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDDH](
	[MASODDH] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [float] NOT NULL,
 CONSTRAINT [PK_CTDDH] PRIMARY KEY CLUSTERED 
(
	[MASODDH] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[MAPN] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [float] NOT NULL,
 CONSTRAINT [PK_CTPN] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPX]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPX](
	[MAPX] [nchar](8) NOT NULL,
	[MAVT] [nchar](4) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[DONGIA] [float] NOT NULL,
 CONSTRAINT [PK_CTPX] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC,
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DATHANG]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATHANG](
	[MASODDH] [nchar](8) NOT NULL,
	[NGAY] [datetime] NULL CONSTRAINT [DF_DATHANG_NGAY]  DEFAULT (getdate()),
	[NHACC] [nvarchar](100) NOT NULL,
	[MANV] [int] NULL,
	[MAKHO] [nchar](4) NULL,
 CONSTRAINT [PK_DATHANG] PRIMARY KEY CLUSTERED 
(
	[MASODDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHO]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MAKHO] [nchar](4) NOT NULL,
	[TENKHO] [nvarchar](100) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[MACN] [nchar](4) NOT NULL,
 CONSTRAINT [PK_KHO] PRIMARY KEY CLUSTERED 
(
	[MAKHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [int] NOT NULL,
	[HO] [nvarchar](40) NOT NULL,
	[TEN] [nvarchar](10) NOT NULL,
	[PHAI] [nvarchar](3) NULL CONSTRAINT [DF_NHANVIEN_PHAI]  DEFAULT (N'NAM'),
	[DIACHI] [nvarchar](100) NOT NULL,
	[NGAYSINH] [datetime] NOT NULL,
	[LUONG] [bigint] NOT NULL CONSTRAINT [DF_NHANVIEN_LUONG]  DEFAULT ((5000000)),
	[GHICHU] [ntext] NULL,
	[TRANGTHAIXOA] [bit] NULL,
	[MACN] [nchar](4) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [nchar](8) NOT NULL,
	[MASODDH] [nchar](8) NOT NULL,
	[NGAY] [datetime] NULL CONSTRAINT [DF_PHIEUNHAP_NGAY]  DEFAULT (getdate()),
	[MANV] [int] NOT NULL,
	[MAKHO] [nchar](4) NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MAPX] [nchar](8) NOT NULL,
	[NGAY] [datetime] NULL CONSTRAINT [DF_PHIEUXUAT_NGAY]  DEFAULT (getdate()),
	[HOTENKH] [nvarchar](100) NOT NULL,
	[MANV] [int] NULL,
	[MAKHO] [nchar](4) NULL,
 CONSTRAINT [PK_PHIEUXUAT] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VATTU]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VATTU](
	[MAVT] [nchar](4) NOT NULL,
	[TENVT] [nvarchar](100) NOT NULL,
	[DVT] [nvarchar](15) NOT NULL,
	[SOLUONGTON] [int] NOT NULL,
 CONSTRAINT [PK_VATTU] PRIMARY KEY CLUSTERED 
(
	[MAVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH01    ', N'E71 ', 5, 5000000)
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH01    ', N'E72 ', 10, 2800000)
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH02    ', N'VT01', 15, 3000000)
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH02    ', N'VT02', 15, 5500000)
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH03    ', N'VT03', 5, 3000000)
INSERT [dbo].[CTDDH] ([MASODDH], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'DH04    ', N'VT01', 15, 3000000)
INSERT [dbo].[CTPN] ([MAPN], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'PN01    ', N'E71 ', 10, 8999)
INSERT [dbo].[CTPN] ([MAPN], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'PN01    ', N'VT01', 8, 1000000)
INSERT [dbo].[CTPN] ([MAPN], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'PN01    ', N'VT02', 10, 10000000)
INSERT [dbo].[CTPX] ([MAPX], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'PX01    ', N'VT01', 20, 1000000)
INSERT [dbo].[CTPX] ([MAPX], [MAVT], [SOLUONG], [DONGIA]) VALUES (N'PX01    ', N'VT02', 10, 1000000)
INSERT [dbo].[DATHANG] ([MASODDH], [NGAY], [NHACC], [MANV], [MAKHO]) VALUES (N'DH01    ', CAST(N'2017-01-01 00:00:00.000' AS DateTime), N'SAMSUNG', 1, NULL)
INSERT [dbo].[DATHANG] ([MASODDH], [NGAY], [NHACC], [MANV], [MAKHO]) VALUES (N'DH02    ', CAST(N'2017-02-23 00:00:00.000' AS DateTime), N'Công ty TNHH MTV An Phú ĐÔng', 1, NULL)
INSERT [dbo].[DATHANG] ([MASODDH], [NGAY], [NHACC], [MANV], [MAKHO]) VALUES (N'DH03    ', CAST(N'2017-05-15 00:00:00.000' AS DateTime), N'Công ty Viễn Sơn', 2, NULL)
INSERT [dbo].[DATHANG] ([MASODDH], [NGAY], [NHACC], [MANV], [MAKHO]) VALUES (N'DH04    ', CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'Công ty Viễn Sơn', 1, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (1, N'NGUYỄN THỊNH', N'HÀO', N'NAM', N'11 Nguyễn Đình Chiểu, Quận 1', CAST(N'1968-01-01 00:00:00.000' AS DateTime), 15000000, N'', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (2, N'LÊ THỊ', N'ÂN', N'NỮ', N'23 Lê Thánh Tôn , Quận 1, TPHCM', CAST(N'1971-02-02 00:00:00.000' AS DateTime), 17000000, N'', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (3, N'TRẦN VĂN', N'SÁNG', N'NAM', N'48/1 Lê Lợi, Gò vấp TPHCM', CAST(N'1999-01-01 00:00:00.000' AS DateTime), 8000000, N'Hợp đồng thử việc', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (4, N'Nguyễn', N'Thanh', N'Nữ', N'test', CAST(N'1998-09-10 00:00:00.000' AS DateTime), 10000000, N'TEST', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (5, N'Nguyễn Trần', N'Nam', N'Nam', N'ban', CAST(N'1998-09-01 00:00:00.000' AS DateTime), 91999999, N'TEST', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (6, N'Trần Hoàng', N'Quy', N'Nam', N'test', CAST(N'2020-09-10 00:00:00.000' AS DateTime), 9999991, N'TEST', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (7, N'Trần Thanh', N'Hà', N'Nữ', N'test', CAST(N'2020-05-10 00:00:00.000' AS DateTime), 8888882, N'TEST', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (8, N'Lê Văn ', N'Bình', N'Nam', N'Test', CAST(N'2020-09-10 00:00:00.000' AS DateTime), 9999999, N'Test', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (9, N'Đỗ Ngọc Cẩm', N'Anh', N'Nữ ', N'TEst', CAST(N'2020-09-10 00:00:00.000' AS DateTime), 8888888, N'TEST', NULL, NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [HO], [TEN], [PHAI], [DIACHI], [NGAYSINH], [LUONG], [GHICHU], [TRANGTHAIXOA], [MACN]) VALUES (10, N'Phùng Hà ', N'Chinh', N'Nam', N'test', CAST(N'2020-08-10 00:00:00.000' AS DateTime), 7777777, N'TEST', NULL, NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MASODDH], [NGAY], [MANV], [MAKHO]) VALUES (N'PN01    ', N'DH01    ', CAST(N'2020-08-04 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MASODDH], [NGAY], [MANV], [MAKHO]) VALUES (N'PN02    ', N'DH02    ', CAST(N'2020-08-04 00:00:00.000' AS DateTime), 1, NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MASODDH], [NGAY], [MANV], [MAKHO]) VALUES (N'PN03    ', N'DH03    ', CAST(N'2020-08-04 00:00:00.000' AS DateTime), 2, NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [MASODDH], [NGAY], [MANV], [MAKHO]) VALUES (N'PN04    ', N'DH04    ', CAST(N'2020-08-04 00:00:00.000' AS DateTime), 3, NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO]) VALUES (N'PX01    ', CAST(N'2017-12-23 00:00:00.000' AS DateTime), N'Lê An', 2, NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO]) VALUES (N'PX02    ', CAST(N'2017-12-24 00:00:00.000' AS DateTime), N'Hoàng Minh', 2, NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAY], [HOTENKH], [MANV], [MAKHO]) VALUES (N'PX03    ', CAST(N'2018-01-01 00:00:00.000' AS DateTime), N'Vân ANh', 1, NULL)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [SOLUONGTON]) VALUES (N'E71 ', N'Điện thoại di động E71 màu đen của Nokia', N'Cái', 20)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [SOLUONGTON]) VALUES (N'E72 ', N'Điện thoại di động E72 màu đen của Nokia', N'Cái', 10)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [SOLUONGTON]) VALUES (N'VT01', N'Iphone 6, màu trắng 64G', N'Cái', 28)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [SOLUONGTON]) VALUES (N'VT02', N'Iphone 6S PLUS, màu hồng', N'Cái', 40)
INSERT [dbo].[VATTU] ([MAVT], [TENVT], [DVT], [SOLUONGTON]) VALUES (N'VT03', N'Ipad 3 4G Rentina của Apple', N'Cái', 10)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UK_TENVT]    Script Date: 5/22/2020 9:55:07 PM ******/
ALTER TABLE [dbo].[VATTU] ADD  CONSTRAINT [UK_TENVT] UNIQUE NONCLUSTERED 
(
	[TENVT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_DATHANG] FOREIGN KEY([MASODDH])
REFERENCES [dbo].[DATHANG] ([MASODDH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_DATHANG]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [FK_CTDDH_VATTU] FOREIGN KEY([MAVT])
REFERENCES [dbo].[VATTU] ([MAVT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [FK_CTDDH_VATTU]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_CTPN_VATTU] FOREIGN KEY([MAVT])
REFERENCES [dbo].[VATTU] ([MAVT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_CTPN_VATTU]
GO
ALTER TABLE [dbo].[CTPX]  WITH CHECK ADD  CONSTRAINT [FK_CTPX_PHIEUXUAT] FOREIGN KEY([MAPX])
REFERENCES [dbo].[PHIEUXUAT] ([MAPX])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_CTPX_PHIEUXUAT]
GO
ALTER TABLE [dbo].[CTPX]  WITH CHECK ADD  CONSTRAINT [FK_CTPX_VATTU] FOREIGN KEY([MAVT])
REFERENCES [dbo].[VATTU] ([MAVT])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CTPX] CHECK CONSTRAINT [FK_CTPX_VATTU]
GO
ALTER TABLE [dbo].[DATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DATHANG_KHO] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[KHO] ([MAKHO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DATHANG] CHECK CONSTRAINT [FK_DATHANG_KHO]
GO
ALTER TABLE [dbo].[DATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DATHANG_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DATHANG] CHECK CONSTRAINT [FK_DATHANG_NHANVIEN]
GO
ALTER TABLE [dbo].[KHO]  WITH CHECK ADD  CONSTRAINT [FK_KHO_CHINHANH] FOREIGN KEY([MACN])
REFERENCES [dbo].[CHINHANH] ([MACN])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[KHO] CHECK CONSTRAINT [FK_KHO_CHINHANH]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHINHANH] FOREIGN KEY([MACN])
REFERENCES [dbo].[CHINHANH] ([MACN])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHINHANH]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_DATHANG] FOREIGN KEY([MASODDH])
REFERENCES [dbo].[DATHANG] ([MASODDH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_DATHANG]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_KHO] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[KHO] ([MAKHO])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_KHO]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_KHO] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[KHO] ([MAKHO])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FK_PHIEUXUAT_KHO]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUXUAT_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FK_PHIEUXUAT_NHANVIEN]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [CK_DONGIA] CHECK  (([DONGIA]>=(0)))
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [CK_DONGIA]
GO
ALTER TABLE [dbo].[CTDDH]  WITH CHECK ADD  CONSTRAINT [CK_SOLUONG] CHECK  (([SOLUONG]>(0)))
GO
ALTER TABLE [dbo].[CTDDH] CHECK CONSTRAINT [CK_SOLUONG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [CK_LUONG] CHECK  (([LUONG]>=(5000000)))
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [CK_LUONG]
GO
ALTER TABLE [dbo].[VATTU]  WITH CHECK ADD  CONSTRAINT [CK_SOLUONGTON] CHECK  (([SOLUONGTON]>=(0)))
GO
ALTER TABLE [dbo].[VATTU] CHECK CONSTRAINT [CK_SOLUONGTON]
GO
/****** Object:  Trigger [dbo].[TR_AfterDelete_CTPN]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_AfterDelete_CTPN]
	ON [dbo].[CTPN]
	AFTER DELETE
AS 
BEGIN
	UPDATE VATTU 
		SET SOLUONGTON = SOLUONGTON - (SELECT SOLUONG FROM deleted)
	WHERE MAVT = (SELECT MAVT from deleted)
END

GO
/****** Object:  Trigger [dbo].[TR_AfterInsert_CTPN]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER  [dbo].[TR_AfterInsert_CTPN] 
   ON  [dbo].[CTPN] 
   AFTER INSERT 
AS 
BEGIN
	
    UPDATE VATTU
	 	SET SOLUONGTON= SOLUONGTON + (SELECT SOLUONG FROM inserted) 
    WHERE MAVT = (SELECT MAVT FROM inserted)

END

GO
/****** Object:  Trigger [dbo].[TR_AfterUpdate_CTPN]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_AfterUpdate_CTPN] 
   ON [dbo].[CTPN]
   AFTER  UPDATE
AS 
BEGIN
	IF (UPDATE(SOLUONG))
		BEGIN
			UPDATE VATTU
				SET SOLUONGTON = SOLUONGTON - (SELECT SOLUONG FROM deleted) + (SELECT SOLUONG FROM inserted) 
			WHERE MAVT = (SELECT MAVT FROM inserted)
		END
	-- Trường hợp hiệu chỉnh field ???  sẽ ảnh hưởng tới số lượng tồn
	ELSE IF (UPDATE(MAVT))
		BEGIN
			UPDATE VATTU
				SET SOLUONGTON = SOLUONGTON - (SELECT SOLUONG FROM deleted)
			WHERE MAVT = (SELECT MAVT FROM deleted)

			UPDATE VATTU
				SET SOLUONGTON = SOLUONGTON + (SELECT SOLUONG FROM inserted)
			WHERE MAVT = (SELECT MAVT FROM inserted)
		END
END
GO
/****** Object:  Trigger [dbo].[TR_AfterDelete_CTPX]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_AfterDelete_CTPX]
	ON [dbo].[CTPX]
	AFTER DELETE
AS 
BEGIN
	UPDATE VATTU 
		SET SOLUONGTON = SOLUONGTON + (SELECT SOLUONG FROM deleted)
	WHERE MAVT = (SELECT MAVT from deleted)
END

GO
/****** Object:  Trigger [dbo].[TR_AfterInsert_CTPX]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_AfterInsert_CTPX]
ON [dbo].[CTPX]
AFTER INSERT
AS
BEGIN
	DECLARE @soLuongTon INT
	SELECT @soLuongTon = SOLUONGTON FROM VATTU AS vt ,inserted AS ins WHERE vt.MAVT = ins.MAVT
	
	IF(@soLuongTon < (SELECT SOLUONG FROM inserted))
		BEGIN
			RAISERROR ('So luong ton phai lon hon so luong xuat!',16,16) WITH NOWAIT
			ROLLBACK TRAN
		END
	ELSE
		BEGIN
			UPDATE VATTU 
				SET SOLUONGTON = SOLUONGTON - (SELECT SOLUONG FROM inserted)
			WHERE MAVT = (SELECT MAVT FROM inserted)
		END
END

GO
/****** Object:  Trigger [dbo].[TR_AfterUPDATE_CTPX]    Script Date: 5/22/2020 9:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_AfterUPDATE_CTPX]
	ON [dbo].[CTPX]
	AFTER UPDATE
AS 
BEGIN
	DECLARE @soLuongTon INT
	SELECT @soLuongTon = SOLUONGTON FROM VATTU AS vt ,inserted AS ins WHERE vt.MAVT = ins.MAVT

	IF(@soLuongTon < ((SELECT SOLUONG FROM inserted) - (SELECT SOLUONG FROM deleted)))
		BEGIN
			RAISERROR ('So luong ton phai lon hon so luong xuat!',16,16) WITH NOWAIT
			ROLLBACK TRAN
		END
	ELSE
		BEGIN
			IF(UPDATE(SOLUONG))
				BEGIN
					UPDATE VATTU
						SET SOLUONGTON = SOLUONGTON + (SELECT SOLUONG FROM deleted) - (SELECT SOLUONG FROM inserted)
					WHERE MAVT = (SELECT MAVT FROM inserted)
				END

			ELSE IF(UPDATE(MAVT))
				BEGIN
					-- Update số lượng tồn của MAVT mới
					UPDATE VATTU 
						SET SOLUONGTON = SOLUONGTON - (SELECT SOLUONG FROM inserted)
					WHERE MAVT = (SELECT MAVT FROM inserted)

					-- Trừ đi số lượng tồn của MAVT cũ
					UPDATE VATTU 
						SET SOLUONGTON = SOLUONGTON + (SELECT SOLUONG FROM deleted)
					WHERE MAVT = (SELECT MAVT FROM deleted)
				END
		END
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TÊN CÔNG TY, ĐẠI LÝ CUNG CẤP HÀNG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DATHANG', @level2type=N'COLUMN',@level2name=N'NHACC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TÊN CÔNG TY, ĐẠI LÝ CUNG CẤP HÀNG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUNHAP', @level2type=N'COLUMN',@level2name=N'MAPN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TÊN CÔNG TY, ĐẠI LÝ CUNG CẤP HÀNG' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PHIEUXUAT', @level2type=N'COLUMN',@level2name=N'HOTENKH'
GO
USE [master]
GO
ALTER DATABASE [QLVT] SET  READ_WRITE 
GO
